switch (getWorld()){
	case(WORLDS.W1):
		sprite = sGRBreakableBlock;
	break;
	case(WORLDS.W2):
		sprite = sNone;
	break;
	default:
		sprite = sGRBreakableBlock;
	break;
}
sprite_index = sprite;