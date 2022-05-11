/// @description Insert description here
// You can write your code in this editor
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
var s_w = camera_get_view_width(view_camera[0])
var s_h = camera_get_view_height(view_camera[0])
var c_x = v_x/1280


draw_self()

if root != "" && root != "a" && degree != "" && degree != "b"
{
var x_start = 200
var y_start = 600
	for(var i = 1; i < room_width; i++)
	{
	var value_1 = yy[i-1]
	var value_2 = yy[i]
		if root > 25
		{
			if value_2 != "a"
			{
			draw_set_color(c_black)
			draw_set_alpha(1)
			draw_line_width(x_start+5*(i-1),y_start+5*(value_1),x_start+5*i,y_start+5*(value_2),3.5*c_x)
			}
		}
		else
		{
			if value_2 != "a"
			{
			draw_set_color(c_black)
			draw_set_alpha(1)
			draw_line_width(x_start+(i-1),y_start+(value_1)*5,x_start+i,y_start+(value_2)*5,3.5*c_x)
			}
		}
	}
	
	
var symmetry = root/2
draw_text_kl_scale(s_x+s_w-c_x*128,s_y+c_x*89,"axis of symmetry : x = "+string(symmetry),64*c_x,9999,image_alpha,c_green,0,1,font0,c_x*0.4,c_x*0.4,0)
draw_text_kl_scale(s_x+s_w-c_x*128,s_y+c_x*128,"maximum value : y = "+string(-degree*symmetry*(symmetry - string(root))),64*c_x,9999,image_alpha,c_green,0,1,font0,c_x*0.4,c_x*0.4,0)
}

draw_text_kl_scale(s_x+c_x*16,s_y+c_x*32,"f1 : set b / f2 : set a / f3 : projectile / spacebar : slow motion",64*c_x,9999,image_alpha,c_green,0,-1,font0,c_x*0.4,c_x*0.4,0)
draw_text_kl_scale(s_x+s_w-c_x*32,s_y+c_x*32,"v_x : "+string(v_x)+"\n\n\n\n v_y : "+string(v_y),64*c_x,9999,image_alpha,c_green,0,1,font0,c_x*0.3,c_x*0.3,0)

if change_func_a = 0 && change_func_b = 0
{
draw_text_kl_scale(s_x+s_w-c_x*128,s_y+c_x*48,"y = "+string(func_for_draw),64*c_x,9999,image_alpha,c_green,0,1,font0,c_x*0.5,c_x*0.5,0)
}

if change_func_b = 1
{
	if time <= 45
	{
	draw_text_kl_scale(s_x+s_w-c_x*128,s_y+c_x*48,"y = -"+string(degree)+"|x(x - "+string(root)+")",64*c_x,9999,image_alpha,c_green,0,1,font0,c_x*0.5,c_x*0.5,0)
	}
	else
	{
	draw_text_kl_scale(s_x+s_w-c_x*128,s_y+c_x*48,"y = -"+string(degree)+" x(x - "+string(root)+")",64*c_x,9999,image_alpha,c_green,0,1,font0,c_x*0.5,c_x*0.5,0)
	}
}

if change_func_a = 1
{
	if time <= 45
	{
	draw_text_kl_scale(s_x+s_w-c_x*128,s_y+c_x*48,"y = -"+string(degree)+"x(x - "+string(root)+"|)",64*c_x,9999,image_alpha,c_green,0,1,font0,c_x*0.5,c_x*0.5,0)
	}
	else
	{
	draw_text_kl_scale(s_x+s_w-c_x*128,s_y+c_x*48,"y = -"+string(degree)+"x(x - "+string(root)+" )",64*c_x,9999,image_alpha,c_green,0,1,font0,c_x*0.5,c_x*0.5,0)
	}
}