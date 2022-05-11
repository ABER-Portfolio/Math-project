/// @description Insert description here
// You can write your code in this editor


if keyboard_check_pressed(vk_space)
{
slowmotion = 1
}

if keyboard_check_released(vk_space)
{
slowmotion = 0
}


if slowmotion = 1
{
slowmotion_speed += (5 - slowmotion_speed)*0.05
}
else
{
slowmotion_speed += (0 - slowmotion_speed)*0.05
}

var x_start = 200
var y_start = 600
depth = -1000
var root__ = obj_camera.root
var degree__ = obj_camera.degree
if (y < y_start || time = 0)
{
	if root__ != "a" && root__ != "" && degree__ != "b" && degree__ != "" && obj_camera.yy[100] != "a" && !keyboard_check(vk_f3)
	{
	time_sl ++
		if time_sl >= slowmotion_speed
		{
			if time < (room_width-1)
			{
			time++
			var value_1 = obj_camera.yy[time-1]
			var value_2 = obj_camera.yy[time]
	
	
			if root__ > 25
			{
			x = x_start+5*time
			y = y_start+5*(value_2)
			direction = point_direction(x_start+5*(time-1),y_start+5*(value_1),x_start+5*time,y_start+5*(value_2))
			}
			else
			{
			x = x_start+time
			y = y_start+5*(value_2)
			direction = point_direction(x_start+(time-1),y_start+5*(value_1),x_start+time,y_start+5*(value_2))
			}


			time ++
			xx[time] = x;
			yy[time] = y;
			}
		time_sl = 0
		}
	}
}
