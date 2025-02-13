/// @description Movement rules
//Get Player Input
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
key_downp = keyboard_check_pressed(vk_down);
key_shift = keyboard_check(vk_shift);
key_jump = keyboard_check_pressed(vk_space);
key_climb = keyboard_check(vk_control);
key_cblue = keyboard_check_pressed(ord("Z"));
key_cred = keyboard_check_pressed(ord("X"));
key_cyellow = keyboard_check_pressed(ord("C"));
 

/*plat=instance_place(x+sign(hsp),y,oMP)
plat=instance_place(x,y+1,oMP)
	
if (place_meeting(x,y+1,oMP)){

	
	x += plat.hsp*plat.dir;

}*/

//Sprite Status
sprite_index = tB;
groundcol(oWall, oWallB, oWallR, oWallY, oMP)
wallcol(oWall, oWallB, oWallR, oWallY, oMP);
inwall = false;

//Adjust Sprite
/*if (hsp != 0)
	{
		sprite_index = sTemp;
		image_xscale = dir;
	}	*/


//Colour System
	
colourOverlap(oWallB, oWallR, oWallY);

if (inwall = false)
{
	if (key_cblue)
	{
		colour = "B";
	}
	else if (key_cred)
	{
		colour = "R";
	}
	else if (key_cyellow)
	{
		colour = "Y";
	}
}

sprite_index = asset_get_index("idle_" + string(colour))


//Collision

/*if place_meeting(x, y, oMP){

y += -3;

}*/

	if (colour = "B")
	{
		
		fcol(oWallR);
		fcol(oWallY);
		fcol(oWall);
		//pcol(oMP);
		x += hsp;
		y += vsp;
	}
	else if (colour = "R")
	{
		fcol(oWallB);
		fcol(oWallY);
		fcol(oWall);
		//pcol(oMP);
		x += hsp;
		y += vsp;
	}
	else if (colour = "Y")
	{
		fcol(oWallR);
		fcol(oWallB);
		fcol(oWall);
		//pcol(oMP);
		x += hsp;
		y += vsp;
	}
	
	
	

//Checkpoints


if y > room_height
	{
		x = global.checkpointX + 60;
		y = global.checkpointY - 16;
	}

//Enemy Collision

enemycol(oEnemyRed, global.checkpointX + 60, global.checkpointY - 16);
enemycol(oEnemyBlue, global.checkpointX + 60, global.checkpointY - 16);
enemycol(oEnemyYellow, global.checkpointX + 60, global.checkpointY - 16);

//value reset

var sprint = 1;
if (onground)
{
	sprinttimer = 30;
	climbtimer = 180;	
	maxjumps = 1;
	hsp_acc = 2;
}

if !(place_meeting(x+1,y,oWall)) and !(place_meeting(x-1,y,oWall))
{
	grv = 0.3;
}


//Calculate Horizontal Movement

if (walljumpdelay > 0)
{walljumpdelay -=1
	}

if (walljumpdelay == 0)
{
	
	if (key_shift) and (onground)
	{
		var sprint = 1 * hsp_sprint
		sprinttimer -= 1;
	}
	
	
	
		var dir = key_right - key_left;
		hsp+= dir * hsp_acc * sprint;
		if (dir ==0)
		{
			var hsp_fric_final = hsp_fric_ground;
			if(!onground) hsp_fric_final = hsp_fric_air;
			hsp = Approach(hsp,0,hsp_fric_final);
		}
}

if (sprinttimer > 0) and (sprinttimer != 30)
{
	hsp = clamp(hsp,1.5*-hsp_walk,1.5*hsp_walk);
	var sprint = 1 * hsp_sprint;
	hsp_acc = 1;
}

if (sprint > 1)
{
	hsp = clamp(hsp,1.5*-hsp_walk,1.5*hsp_walk);
}
else
{
	hsp = clamp(hsp,-hsp_walk,hsp_walk);
}

//Calculate Vertical Movement
var grv_final = grv;
var vsp_max_final = vsp_max;
if (onwall !=0) and (vsp > 0)
{
	grv_final = grv_wall;
	vsp_max_final = vsp_max_wall;
}
vsp += grv_final;
//vsp = clamp(vsp, -vsp_max_final,vsp_max_final)


//Ground Jumping
if (maxjumps > 0)
{
	if (key_jump)
	{
		if(onwall != 0)
		{
		maxjumps = maxjumps;
		}
		else
		{
		maxjumps -= 1;
		}
		vsp = vsp_jump;
		vsp_frac = 0;
	}
}




//Wall Jumping

onwall = place_meeting(x+1,y, oWall) - place_meeting(x-1,y, oWall)

if (onwall != 0 ) and (!onground) and (key_jump)
{
	walljumpdelay = walljumpdelay_max;
	hsp_acc= 0.5;
	hsp = -onwall * hsp_wjump;
	vsp = vsp_wjump;
}

//Dump fractions and get final integer speeds
hsp +=hsp_frac;
vsp +=vsp_frac;
hsp_frac = frac(hsp);
vsp_frac = frac(vsp);
hsp -= hsp_frac;
vsp -= vsp_frac;




//Wall Climb, Wall Tiring and Wall Slide

if (place_meeting(x+1,y,oWall)) or (place_meeting(x-1,y,oWall))
{	
	
	if (key_climb)
	{
		if (climbtimer > 0)
		{
			vsp = 0
			
				if (key_up)
			{
				vsp = -4
			}
			if (key_down)
			{
				vsp = 4
			}
		}

		climbtimer -=1;
		if(climbtimer = 0){
			if !(place_meeting(x,y+1,oWall)){
			grv_final = grv_wall;
	vsp_max_final = vsp_max_wall;}
		}
		
	}	
	
}
	
//Animation


//sprite_index = sB
