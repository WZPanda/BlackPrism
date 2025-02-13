function cornerCol(argument0) {
	//cornerx

	if place_meeting(x-1, y, argument0) and !place_meeting(x+1, y, argument0) and place_meeting(x, y, argument0)
	{
	cornerx = -1;
	}
	else{
	cornerx = 0;
	}



	if place_meeting(x+1, y, argument0) and !place_meeting(x-1, y, argument0) and place_meeting(x, y, argument0)
	{
	cornerx = 1;
	}
	else{
	cornerx = 0;
	}


	if cornerx != 0 
	{	
		hsp = 50 * cornerx;
		hsp_frac = 0;

	}


}
