ps = part_system_create();
pt = part_type_create();

// set default emitter
pe = part_emitter_create(ps);
part_emitter_region(ps, pe, x - 28, x + 28, y - 24, y + 24, ps_shape_rectangle, ps_distr_invgaussian);

// setup a default particle
part_type_blend(pt, 0);
part_type_sprite(pt, asset_get_index(sGRBreakableParticles), 0, 0, 1);
part_type_size(pt, 1, 1, 0, 0);
part_type_scale(pt, 1, 1);
part_type_color1(pt, -1);
part_type_alpha3(pt, 1, 1, 1);
part_type_life(pt, 50.02, 100.20);
part_type_orientation(pt, 0, 5, 0, 0, false);
part_type_speed(pt, 0, 50, -2.05, 0);
part_type_direction(pt, 0, 180.97, 0, 0);
part_type_gravity(pt, 1, 268.03);


// use the following where you want to burst

part_emitter_burst(ps, pe, pt, 100);

instance_destroy();