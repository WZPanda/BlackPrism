/// Horizonal Collision
function hcol(argument0) {

	if (place_meeting(x+hsp,y,argument0))
	{
		var onepixel = sign(hsp);
		while (!place_meeting(x+onepixel,y,argument0)) x += onepixel;
		hsp = 0;
		hsp_frac = 0;
	};


}
