// LIQID SPRAY: FIREWORKS ANIMATION
// ********************************
// This animation shows how the spray_start and spray_stop options
// can be used to turn on and off spray objects.

// CAMERA AND LIGHTS
   camera {location <0, 1, -4> look_at <0, .5, 0> angle 45}
   light_source {<0, 20, -4> rgb 1}


// SPRAY OPTIONS
   #declare spray_gravity = 13;
   #declare nozzle_angle = 150;
   #declare particle_count = 200;
   #declare particle_life = .3;
   #declare particle_size = .1;
   #declare particle_stretch = 6;
   #declare spray_turb = .2;
   #declare spin_turb = 5;
   #declare evaporate = .7;
   #declare spray_texture = texture {pigment {rgb <1, 1, 0>} finish {ambient 1 diffuse .5}}

// FIRST SPRAY
   #declare spray_start = 0;
   #declare spray_stop = .1;
   #declare spray_location = <.2, 1.3, 2>;
   #declare spray_direction = <1, 4, -5>;
   #declare spray_strength = 4;
   #declare spray_color_map = color_map {[0 rgb <1, 1, .3>] [1 rgb <.3, 0, 0>]}
   #include "Spray.inc"

// SECOND SPRAY
   #declare spray_start = .3;
   #declare spray_stop = .4;
   #declare spray_location = <-1.2, 1, 2>;
   #declare spray_direction = <-1, 2, -4>;
   #declare spray_strength = 4.5;
   #declare spray_color_map = color_map {[0 rgb <.3, .6, 1>] [1 rgb <0, 0, .3>]}
   #include "Spray.inc"

// THIRD SPRAY
   #declare spray_start = .6;
   #declare spray_stop = .7;
   #declare spray_location = <1.1, .7, 2>;
   #declare spray_direction = <0, 3, -4>;
   #declare spray_strength = 3;
   #declare spray_color_map = color_map {[0 rgb <1, .6, 1>] [1 rgb <.3, 0, .3>]}
   #include "Spray.inc"
