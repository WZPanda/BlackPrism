function wallcol(argument0, argument1, argument2, argument3, argument4) {
	//checks if you are in a coloured wall, so you can't change colours

	onwall = place_meeting(x+1,y,argument0) - place_meeting(x-1,y,argument0) or
	place_meeting(x+1,y,argument1) - place_meeting(x-1,y,argument1)or
	place_meeting(x+1,y,argument2) - place_meeting(x-1,y,argument2)or
	place_meeting(x+1,y,argument3) - place_meeting(x-1,y,argument3)or
	place_meeting(x+1,y,argument4) - place_meeting(x-1,y,argument4);
	;



}
