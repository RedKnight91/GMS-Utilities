///@param value
///@param value
///@param expected
///@param *message

var value1	= argument[0]
var value2	= argument[1]
var expected= argument[2]
var message = (ARG_N > 3) ? argument[3] : ""

var condition = (value1 < value2)
var result = (condition == expected)

var error = string_fill("%% is%% less than %%", "%%", value1, ((expected) ? " not" : ""), value2)
assert_with_error_message(result, message, error, value1, value2)