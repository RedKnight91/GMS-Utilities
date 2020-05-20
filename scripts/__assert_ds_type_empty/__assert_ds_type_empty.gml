///@param index
///@param ds_type
///@param expected
///@param *message

var index = argument[0]
var ds_type = argument[1]
var expected = argument[2]
var message = (ARG_N > 3) ? argument[3] : ""

__assert_ds_type_exists(index, ds_type, true)

var condition = ds_type_empty(index, ds_type)
var result = (condition == expected)

var error = ds_type_name(ds_type) + " " + __get_emptiness_message(condition)
assert_with_error_message(result, message, error, "Index: ", index)