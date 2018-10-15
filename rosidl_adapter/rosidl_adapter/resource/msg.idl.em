// generated from rosidl_adapter/resource/msg.idl.em
// with input from @(pkg_name)/@(relative_input_file)

@{
include_files = set()
for field in msg.fields:
    include_file = get_include_file(field.type)
    if include_file is not None:
        include_files.add(include_file)
}@
@[for include_file in sorted(include_files)]@
#include "@(include_file)"
@[end for]@

module @(pkg_name) {
  module msg {
@{
TEMPLATE(
    'struct.idl.em',
    msg=msg,
    get_idl_type=get_idl_type,
    to_literal=to_literal)
}@
  };
};
