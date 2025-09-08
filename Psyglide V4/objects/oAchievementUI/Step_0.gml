buttonSelect[0][0] = newButtonSprite(RES_W - 64,RES_H - 32,sBackButton,function() {uiTransition(previousUI,TRANSITION_TYPE.WIPER,4);sfxPlay(sfxCancel);});

x+= scrollingSpeed;
y+= scrollingSpeed;

event_inherited();