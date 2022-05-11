/// @description Insert description here
// You can write your code in this editor
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
var s_w = camera_get_view_width(view_camera[0])
var s_h = camera_get_view_height(view_camera[0])
var c_x = obj_camera.v_x/1280
draw_set_color(c_blue)
draw_set_alpha(1)
var length = 600*c_x
draw_line_width(x-lengthdir_x(length,direction),y-lengthdir_y(length,direction),x+lengthdir_x(length,direction),y+lengthdir_y(length,direction),3*c_x)

draw_set_color(c_red)
draw_set_alpha(1)
draw_circle(x2,y2,2,false)

var inclination = -floor(lengthdir_y(1,direction)/lengthdir_x(1,direction)*100)
var root__ = obj_camera.root
var degree__ = obj_camera.degree
if is_real(degree__)
{
draw_text_kl_scale(x+c_x*64,y-c_x*32,"acceleration = "+string(-2*degree__)+"/s",64*c_x,9999,image_alpha,c_black,0,-1,font0,c_x*0.3,c_x*0.3,0)
}
draw_text_kl_scale(x+c_x*64,y,"dir = "+string(direction),64*c_x,9999,image_alpha,c_black,0,-1,font0,c_x*0.3,c_x*0.3,0)
draw_text_kl_scale(s_x+s_w-c_x*128,s_y+c_x*180,"inclination : f'(t) = "+string(inclination/100),64*c_x,9999,image_alpha,c_green,0,1,font0,c_x*0.4,c_x*0.4,0)

//////////////////////////////////////

draw_set_color(c_gray)
draw_set_alpha(1)
for(var i = 10; i > 7; i -= 0.1)
{
draw_circle(x,y,i*c_x,true)
}
