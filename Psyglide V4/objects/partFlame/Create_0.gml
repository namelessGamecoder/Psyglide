ps = part_system_create();
pt = part_type_create();

// set default emitter
pe = part_emitter_create(ps);
part_emitter_region(ps, pe, x - 0.50, x + 0.50, y - 0.50, y + 0.50, ps_shape_rectangle, ps_distr_linear);

// setup a default particle
part_type_blend(pt, 0);
part_type_sprite(pt, asset_get_index(sFirePartilces), 1, 1, 1);
part_type_size(pt, 1, 1, 0, 0);
part_type_scale(pt, 1, 1);
part_type_color1(pt, -1);
part_type_alpha3(pt, 1, 1, 1);
part_type_life(pt, 25.51, 100.26);
part_type_orientation(pt, 0, 0, 0, 0, false);
part_type_speed(pt, 0, 1.02, 0, 0);
part_type_direction(pt, 29.43, 150.07, 0, 0);
part_type_gravity(pt, 0, 0);