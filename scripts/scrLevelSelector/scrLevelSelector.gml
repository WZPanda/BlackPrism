function scrLevelSelector() {
	switch (mpos)
	{
		case 0:
		{
			room_goto(testRoomCamera);
			break;
		}
		case 1:
		{
			room_goto(level1);
			break;
		}
		case 2:
		{
			break;
		}

		case 3:
		{
			break;
		}

		case 4:
		{
			room_goto(rMenu);
			break;
		}
	}


}
