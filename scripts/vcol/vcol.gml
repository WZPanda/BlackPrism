/// Vertical Collision
function vcol(argument0) {

	if (place_meeting(x,y+vsp,argument0))
	{
		var onepixel = sign(vsp);
		while (!place_meeting(x,y+onepixel,argument0)) y += onepixel;
		vsp = 0;
		vsp_frac = 0;
	};


}
