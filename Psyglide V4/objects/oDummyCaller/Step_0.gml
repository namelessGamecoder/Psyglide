switch(callType){
	case(CALL_TYPE.UI_TRANSITION):
		script_execute(call,target,type,tSpeed);
		instance_destroy();
	break;
}