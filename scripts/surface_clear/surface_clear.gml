///@param surface

var surface = argument[0]
var alpha	= (ARG_N == 2) ? argument[1] : 0

surface_set_target(surface)
draw_clear_alpha(c_white, alpha)
surface_reset_target()