/// @description Insert description here
// You can write your code in this editor

var x_start = 200
var y_start = 600
var c_x = obj_camera.v_x/1280

//세로줄
draw_set_color(c_black)
draw_set_alpha(0.5*(0.5 - c_x))
for(var i = 0; i <= room_width; i += 5)
{
draw_line(i,0,i,room_height)
}


//가로줄
for(var i = 0; i <= room_height; i += 5)
{
draw_line(0,i,room_width,i)
}



////////////////////////////////////////////////////////////////////////////////////////////


//세로줄
draw_set_color(c_red)
draw_set_alpha(0.6*(1 - c_x))
for(var i = 0; i <= room_width; i += 20)
{
draw_line_width(i,0,i,room_height,0.55)
}


//가로줄
for(var i = 0; i <= room_height; i += 20)
{
draw_line_width(0,i,room_width,i,0.55)
}






////////////////////////////////////////////////////////////////////////////////////////////





//세로줄
draw_set_color(c_blue)
draw_set_alpha(0.7)
draw_line_width(x_start,0,x_start,room_height,0.6)



//가로줄
draw_line_width(0,y_start,room_width,y_start,0.6)

