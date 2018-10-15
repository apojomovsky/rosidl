# Copyright 2018 Open Source Robotics Foundation, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

from rosidl_adapter.msg import get_idl_type
from rosidl_adapter.msg import get_include_file
from rosidl_adapter.msg import to_literal
from rosidl_adapter.resource import expand_template
from rosidl_adapter.srv.parser import parse_service_string


def convert_srv_to_idl(package_dir, package_name, input_file, output_dir):
    assert input_file.suffix == '.srv'

    print('Reading input file: {input_file}'.format_map(locals()))
    content = input_file.read_text(encoding='utf-8')
    srv = parse_service_string(package_name, input_file.stem, content)

    output_file = output_dir / input_file.with_suffix('.idl').name
    print('Writing output file: {output_file}'.format_map(locals()))
    data = {
        'pkg_name': package_name,
        'relative_input_file': input_file.absolute().relative_to(package_dir),
        'srv': srv,
        'get_idl_type': get_idl_type,
        'get_include_file': get_include_file,
        'to_literal': to_literal,
    }
    expand_template('srv.idl.em', data, output_file)
    return output_file
