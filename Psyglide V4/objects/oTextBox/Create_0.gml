x1 = RES_W/2;
y1 = RES_H - 51;
x2 = RES_W/2;
y2 = RES_H - 51;

x1To = 0;
y1To = RES_H/2 + 32;
x2To = RES_W;
y2To = RES_H;

lerpProgress = 0;

typer = scribble_typist();
typerShadow = scribble_typist();

fadeIn = 0;

typer.in(global.cTextSpeed,fadeIn);
typerShadow.in(global.cTextSpeed,fadeIn);

global.stop = true;