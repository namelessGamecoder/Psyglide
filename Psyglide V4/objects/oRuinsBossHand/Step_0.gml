xspeed += 0.05;

x -= xspeed;

bossBulletCheck();

if (hp < 2){
	sprite_index = sRuinsBossHandFire;
	if (fire == noone){
		fire = instance_create_layer(x,y,"Particles",partFlame);
	}
}

if (fire != noone){
	fire.x = x;
}

if (hp <= 0 || xspeed > 5){
	instance_destroy();
}