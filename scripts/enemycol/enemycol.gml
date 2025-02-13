function enemycol(argument0, argument1, argument2) {
	if (place_meeting(x+hsp,y,argument0))
	{
		x = argument1;
		y = argument2;
	};

	if (place_meeting(x,y+vsp,argument0))
	{
		x = argument1;
		y = argument2;
	};


}
