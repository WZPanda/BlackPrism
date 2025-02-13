function groundcol(argument0, argument1, argument2, argument3, argument4) {
	//checks if you are in a coloured wall, so you can't change colours

	onground = place_meeting(x,y+1,argument0) or
	place_meeting(x,y+1,argument1)or
	place_meeting(x,y+1,argument2)or
	place_meeting(x,y+1,argument3)or
	place_meeting(x,y+1,argument4);


}
