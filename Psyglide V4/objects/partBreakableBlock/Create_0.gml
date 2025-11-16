sprite = sNone;

switch (getWorld()){
	case(WORLDS.W1):
		sprite = sGRBreakableParticles
	break;
	case(WORLDS.W2):
		sprite = sNone;
	break;
	default:
		sprite = sGRBreakableParticles;
	break;
}

ps = part_system_create();
pt = part_type_create();

// set default emitter
pe = part_emitter_create(ps);
part_emitter_region(ps, pe, x - 8, x + 8, y - 8, y + 8, ps_shape_rectangle, ps_distr_invgaussian);

// setup a default particle
part_type_blend(pt, 0);
part_type_sprite(pt, sprite, 0, 0, 1);
part_type_size(pt, 1, 1, 0, 0);
part_type_scale(pt, 1, 1);
part_type_color1(pt, -1);
part_type_alpha3(pt, 1, 1, 1);
part_type_life(pt, 1, 15.70);
part_type_orientation(pt, 3, 2, 0, 0, false);
part_type_speed(pt, 5, 9, -2, 0);
part_type_direction(pt, 0, 359, 0, 0);
part_type_gravity(pt, 0.8, 270.97);


// use the following where you want to burst

part_emitter_burst(ps, pe, pt, 12);
instance_destroy();