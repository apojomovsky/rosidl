// generated from rosidl_generator_cpp/resource/action__struct.hpp.em
// generated code does not contain a copyright notice

@#######################################################################
@# EmPy template for generating <action>__struct.hpp files
@#
@# Context:
@#  - spec (rosidl_parser.ServiceSpecification)
@#    Parsed specification of the .action file
@#  - subfolder (string)
@#    The subfolder / subnamespace of the message, usually 'action'
@#  - get_header_filename_from_msg_name (function)
@#######################################################################
@
@{
header_guard_parts = [
    spec.pkg_name, subfolder,
    get_header_filename_from_msg_name(spec.action_name) + '__struct_hpp']
header_guard_variable = '__'.join([x.upper() for x in header_guard_parts]) + '_'
}@
#ifndef @(header_guard_variable)
#define @(header_guard_variable)

#include "@(spec.pkg_name)/action/@(get_header_filename_from_msg_name(spec.action_name))__sendgoal.hpp"
#include "@(spec.pkg_name)/action/@(get_header_filename_from_msg_name(spec.action_name))__get_result.hpp"
#include "@(spec.pkg_name)/action/@(get_header_filename_from_msg_name(spec.action_name))__feedback.hpp"
// Convenience include for common service and message definition
#include <rcl_interfaces/srv/cancel_action.hpp>
#include <rcl_interfaces/srv/goal_status.hpp>

namespace @(spec.pkg_name)
{

namespace @(subfolder)
{

struct @(spec.action_name) 
{ 
   using SendGoalService = @(spec.pkg_name)::action::@(spec.action_name)_SendGoal; 
   using GetResultService = @(spec.pkg_name)::action::@(spec.action_name)_GetResult; 
   using FeedbacMessage = @(spec.pkg_name)::action::@(spec.action_name)_Feedback; 
};

}  // namespace @(subfolder)

}  // namespace @(spec.pkg_name)

#endif  // @(header_guard_variable)





