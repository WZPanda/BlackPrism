function colourOverlap(argument0, argument1, argument2) {
	//checks if you are in a coloured wall, so you can't change colours

	if (place_meeting(x,y,argument0)) or
	(place_meeting(x,y,argument1)) or
	(place_meeting(x,y,argument2))
	{
		inwall = true
	};


}
