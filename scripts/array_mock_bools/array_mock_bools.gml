///@param length

var length = argument0
var array = array_create(length, undefined)

for (var i = 0; i < length; i++)
	array[i] = choose(true, false)

return array