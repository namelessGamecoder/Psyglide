function __InputConfigVerbs()
{
    enum INPUT_VERB
    {
        //System Verbs
        SYSUP,
        SYSDOWN,
        SYSLEFT,
        SYSRIGHT,
        SYSACCEPT,
        SYSCANCEL,
        SYSPAUSE,
		//Platformer Verbs
		PUP,
		PRIGHT,
		PDOWN,
		PLEFT,
		PJUMP,
		PABILITY,
		PRUN,
		//Top Down ARPG Verbs
		TDUP,
		TDRIGHT,
		TDDOWN,
		TDLEFT,
		TDATTACK,
		TDACTION,
		//Psyglide
		FLY,
		START,
		SHOOT
		
    }
    
    enum INPUT_CLUSTER
    {
        //Add your own clusters here!
        //Clusters are used for two-dimensional checkers (InputDirection() etc.)
        TOPDOWNMOVE,
		NAVIGATION
    }
    
    if (not INPUT_ON_SWITCH)
    {
		//System Verbs
        InputDefineVerb(INPUT_VERB.SYSUP,"sysup",[vk_up,"W"],[-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.SYSDOWN,"sysdown",[vk_down,"S"],[ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.SYSLEFT,"sysleft",[vk_left,"A"],[-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.SYSRIGHT,"sysright",[vk_right,"D"],[ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.SYSACCEPT,"sysaccept",[vk_space,"Z"],gp_face1);
        InputDefineVerb(INPUT_VERB.SYSCANCEL,"syscancel",[vk_escape,"X"],gp_face2);
        InputDefineVerb(INPUT_VERB.SYSPAUSE,"syspause",vk_escape,gp_start);
		//Platformer Verbs
        InputDefineVerb(INPUT_VERB.PUP,"pup",[vk_up,"W"],[-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.PDOWN,"pdown",[vk_down,"S"],[ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.PLEFT,"pleft",[vk_left,"A"],[-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.PRIGHT,"pright",[vk_right,"D"],[ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.PJUMP,"pjump",[vk_space,"Z"],[gp_face1,gp_face2]);
        InputDefineVerb(INPUT_VERB.PABILITY,"pability",	[vk_lcontrol,"X"],[gp_face3,gp_face4]);
        InputDefineVerb(INPUT_VERB.PRUN,"prun",[vk_shift,"C"],[gp_face3,gp_face4]);
		//Top Down ARPG Verbs
        InputDefineVerb(INPUT_VERB.TDUP,"tdup",[vk_up,"W"],[-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.TDDOWN,"tddown",[vk_down,"S"],[ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.TDLEFT,"tdleft",[vk_left,"A"],[-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.TDRIGHT,"tdright",[vk_right,"D"],[ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.TDATTACK,"tdattack",[vk_shift,"X"],[gp_face3,gp_face4]);
        InputDefineVerb(INPUT_VERB.TDACTION,"tdaction",	[vk_space,"Z"],[gp_face1,gp_face2]);
		//Psyglide
		InputDefineVerb(INPUT_VERB.START,"start",[mb_left,vk_space,"Z"],gp_shoulderlb);
		InputDefineVerb(INPUT_VERB.FLY,"fly",[mb_left,vk_space,"Z"],gp_shoulderlb);
		InputDefineVerb(INPUT_VERB.SHOOT,"shoot",[mb_right,"X"],gp_shoulderrb);
    }
    else //Flip A/B over on Switch
    {
        InputDefineVerb(INPUT_VERB.SYSUP,      "sysup",      undefined, [-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.SYSDOWN,    "sysdown",    undefined, [ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.SYSLEFT,    "sysleft",    undefined, [-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.SYSRIGHT,   "sysright",   undefined, [ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.SYSACCEPT,  "sysaccept",  undefined,   gp_face2); // !!
        InputDefineVerb(INPUT_VERB.SYSCANCEL,  "syscancel",  undefined,   gp_face1); // !!
        InputDefineVerb(INPUT_VERB.SYSPAUSE,   "syspause",   undefined,   gp_start);
		//Platformer Verbs
        InputDefineVerb(INPUT_VERB.PUP,"pup",[vk_up,"W"],[-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.PDOWN,"pdown",[vk_down,"S"],[ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.PLEFT,"pleft",[vk_left,"A"],[-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.PRIGHT,"pright",[vk_right,"D"],[ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.PJUMP,"pjump",[vk_space,"Z"],[gp_face1,gp_face2]);
        InputDefineVerb(INPUT_VERB.PABILITY,"pability",	[vk_lcontrol,"X"],[gp_face3,gp_face4]);
        InputDefineVerb(INPUT_VERB.PRUN,"prun",[vk_shift,"C"],[gp_face3,gp_face4]);
		//Top Down ARPG Verbs
        InputDefineVerb(INPUT_VERB.TDUP,"tdup",[vk_up,"W"],[-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.TDDOWN,"tddown",[vk_down,"S"],[ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.TDLEFT,"tdleft",[vk_left,"A"],[-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.TDRIGHT,"tdright",[vk_right,"D"],[ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.TDATTACK,"tdattack",[vk_shift,"X"],[gp_face3,gp_face4]);
        InputDefineVerb(INPUT_VERB.TDACTION,"tdaction",	[vk_space,"Z"],[gp_face1,gp_face2]);
		//Psyglide
		InputDefineVerb(INPUT_VERB.START,"start",[vk_space,"Z"],gp_face2);
		InputDefineVerb(INPUT_VERB.FLY,"fly",[vk_space,"Z"],gp_face2);
		InputDefineVerb(INPUT_VERB.SHOOT,"shoot",[mb_left,"X"],gp_face1);
    }
    
    //Define a cluster of verbs for moving around
    InputDefineCluster(INPUT_CLUSTER.TOPDOWNMOVE, INPUT_VERB.TDUP, INPUT_VERB.TDRIGHT, INPUT_VERB.TDDOWN, INPUT_VERB.TDLEFT);
	InputDefineCluster(INPUT_CLUSTER.NAVIGATION, INPUT_VERB.TDUP, INPUT_VERB.TDRIGHT, INPUT_VERB.TDDOWN, INPUT_VERB.TDLEFT);
}