/// @description Insert description here
// You can write your code in this editor
depth = -999
var c_x = v_x/1280
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
var s_w = camera_get_view_width(view_camera[0])
var s_h = camera_get_view_height(view_camera[0])
camera_set_view_size(view_camera[0],(v_x),(v_y))
v_x += (tv_x - v_x)*0.1
v_y += (tv_y - v_y)*0.1


if target != -4
{
x = target.x
y = target.y

	if point_distance(x,y,target.x,target.y) > 1
	{
	image_angle += (point_direction(x,y,target.x,target.y) - image_angle)*0.1
	}
}
else
{
	if point_distance(x,y,mouse_x,mouse_y) > 1
	{
	image_angle += (point_direction(x,y,mouse_x,mouse_y) - image_angle)*0.1
	}
}

if mouse_check_button(mb_right)
{
x += (mouse_x - x)*0.1
y += (mouse_y - y)*0.1
target = -4
}


image_xscale = c_x
image_yscale = c_x

if change_func_a = 1
{
	if keyboard_string != root
	{
	n_get_yy = 0
	n_get_yy_for_new = 0
		for(var i = 0; i < room_width; i++)
		{
		yy[i] = "a"
		}
	}
}

if change_func_b = 1
{
	if keyboard_string != degree
	{
	n_get_yy = 0
	n_get_yy_for_new = 0
		for(var i = 0; i < room_width; i++)
		{
		yy[i] = "a"
		}
	}
}


if (change_func_a = 1 || change_func_b = 1) && !keyboard_check(vk_enter)
{
time ++;
	repeat(3)
	{
	keyboard_string = string_replace(keyboard_string," ","");
	keyboard_string = string_replace(keyboard_string,"a","");
	keyboard_string = string_replace(keyboard_string,"b","");
	keyboard_string = string_replace(keyboard_string,"d","");
	keyboard_string = string_replace(keyboard_string,"e","");
	keyboard_string = string_replace(keyboard_string,"f","");
	keyboard_string = string_replace(keyboard_string,"g","");
	keyboard_string = string_replace(keyboard_string,"h","");
	keyboard_string = string_replace(keyboard_string,"i","");
	keyboard_string = string_replace(keyboard_string,"j","");
	keyboard_string = string_replace(keyboard_string,"k","");
	keyboard_string = string_replace(keyboard_string,"l","");
	keyboard_string = string_replace(keyboard_string,"m","");
	keyboard_string = string_replace(keyboard_string,"n","");
	keyboard_string = string_replace(keyboard_string,"o","");
	keyboard_string = string_replace(keyboard_string,"p","");
	keyboard_string = string_replace(keyboard_string,"q","");
	keyboard_string = string_replace(keyboard_string,"r","");
	keyboard_string = string_replace(keyboard_string,"s","");
	keyboard_string = string_replace(keyboard_string,"t","");
	keyboard_string = string_replace(keyboard_string,"u","");
	keyboard_string = string_replace(keyboard_string,"v","");
	keyboard_string = string_replace(keyboard_string,"w","");
	keyboard_string = string_replace(keyboard_string,"x","");
	keyboard_string = string_replace(keyboard_string,"y","");
	keyboard_string = string_replace(keyboard_string,"z","");
	keyboard_string = string_replace(keyboard_string,"\\","");
	keyboard_string = string_replace(keyboard_string,"|","");
	}


	if change_func_a = 1
	{
	root = (keyboard_string);
	}
	
	if change_func_b = 1
	{
	degree = (keyboard_string);
	}
}


repeat(4)
{
	if root != "a" && root != "" && degree != "" && degree != "b"
	{
		if root > 25
		{
			if n_get_yy < room_width
			{
			yy[floor(n_get_yy)] = n_get_yy*(n_get_yy - string(root));
			yy[floor(n_get_yy)] *= real(degree)
			n_get_yy++
			}
		}
		else
		{
			if n_get_yy_for_new < room_width
			{
			yy[floor(n_get_yy_for_new)] = n_get_yy*(n_get_yy - string(root));
			yy[floor(n_get_yy_for_new)] *= real(degree)
			n_get_yy_for_new ++
			}
		n_get_yy += 0.2
		}
	}
	

	if degree != 1
	{
	func_for_draw = "-"+string(degree)+"x(x - "+string(root)+")"
	}
	else if degree = 1
	{
	func_for_draw = "-x(x - "+string(root)+")"
	}
	

	if time > 90
	{
	time = 0
	}
}




if tv_x < 128
{
tv_x = 128
}
if tv_y < 72
{
tv_y = 72
}


