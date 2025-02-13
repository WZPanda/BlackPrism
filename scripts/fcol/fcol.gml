/// Full Collision
function fcol(argument0) {

	if (place_meeting(x+hsp,y,argument0))
	{
		var onepixel = sign(hsp);
		while (!place_meeting(x+onepixel,y,argument0)) x += onepixel;
		hsp = 0;
		hsp_frac = 0;
	};

	if (place_meeting(x,y+vsp,argument0))
	{
		var onepixel = sign(vsp);
		while (!place_meeting(x,y+onepixel,argument0)) y += onepixel;
		vsp = 0;
		vsp_frac = 0;
	};




	/*if (place_meeting(x,y,argument0))
	{
	
	};*/


}
