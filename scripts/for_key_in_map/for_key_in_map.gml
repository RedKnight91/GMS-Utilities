///@desc	Processes each entry of a ds_map with a given script
///@param	ds_map
///@param	processorScript
///@param	[param1]
///@param	[param2]
///@param	[param...]

var map = argument[0]
var processor = script_get_index(argument[1])

if (!map_exists(map))
	exit

ARGUMENT_MAKE_ARRAY = argument[ARGUMENT_INDEX]
var args = array_trim(ARGUMENT_ARRAY, 1, 0)
//Leaving one extra param at array start to replace later

var key = map_first(map)

while (map_exists(map) && !is_undefined(key)) {
	args[0] = key
	
	key = map_next(map, key)
	
	execute_arg_array(processor, args)
}