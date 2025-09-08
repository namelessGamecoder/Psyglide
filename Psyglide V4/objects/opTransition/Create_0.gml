IN = 0;
OUT = 1;

dir = IN;
percent = 0;
type = -1;
tSpeed = 1;

caller = -1;
target = -1;

enum TRANSITION_TYPE{
	SHUTTER,
	WIPER,
	WIPEL,
	WIPEU,
	WIPED,
	PINHOLE,
	REVERSE_PINHOLE,
	FADE
}

global.stop = true;

INScript = function(){};
OUTScript = function(){};