/// Full Collision
function pcol(argument0) {

	var onepixelH =  sign(oMP.hsp) - sign(hsp);

	if (place_meeting(x+onepixelH,y,argument0))
	{
	
		if (place_meeting(x+onepixelH,y,argument0)) {x += onepixelH;
		hsp_frac = 0;}
	};



	if (place_meeting(x,y+vsp,argument0))
	{
		var onepixelV = sign(vsp);
		while (!place_meeting(x,y+onepixelV,argument0)) y += onepixelV;
		vsp = 0;
		vsp_frac = 0;
	};


}
