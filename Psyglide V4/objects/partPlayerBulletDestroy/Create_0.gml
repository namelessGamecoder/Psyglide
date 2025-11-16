ps = part_system_create();
pt = part_type_create();

// set default emitter
pe = part_emitter_create(ps);
part_emitter_region(ps, pe, x - 4, x + 4, y - 4, y + 4, ps_shape_ellipse, ps_distr_linear);

// setup a default particle
part_type_blend(pt, 1);
part_type_sprite(pt, asset_get_index(sPlayerBulletParticles), 0, 0, 1);
part_type_size(pt, 1, 1, 0, 0);
part_type_scale(pt, 1, 1);
part_type_color1(pt, -1);
part_type_alpha3(pt, 1, 0.66, 0.29);
part_type_life(pt, 1, 15);
part_type_orientation(pt, 0, 359, 0, 0, false);
part_type_speed(pt, 1, 3.48, 0, 0);
part_type_direction(pt, 0, 359, 1.02, 0);
part_type_gravity(pt, 0, 0);


// use the following where you want to burst

part_emitter_burst(ps, pe, pt, 50);
instance_destroy();