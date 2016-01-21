#macro rocket (delay, x_position, particle_color)

  #declare speed_init=<20,40,0>;
  #declare g_force=-9.81;
  #declare secs=clock-delay;
  #declare pos=speed_init*secs+(1/2)*g_force*secs*secs;
  #declare posXplode=speed_init+(1/2)*g_force;
  #declare particleRand = seed(1337);

  #if (secs >= 0 & secs <= 1)
  sphere {
    <0,0,15> 0.3
    translate <x_position,0,0>+pos
    pigment { color particle_color }
    finish {ambient 10}
  }
  #end

  #if(secs > 1)
    #for (i, 0, 500, 1)
      #local particle_direction=VRand_In_Sphere(particleRand)+<0,2,0>;
      #local particle_speed=10;
      #local particle_accel=<0,-9.81,0>;
      #local particle_secs=secs-1;
      #local particle_pos=particle_direction*particle_speed*particle_secs+(1/2)*particle_accel*particle_secs*particle_secs;
      sphere {
        <x_position, 0,15>+ posXplode, 0.05
        translate particle_pos
        pigment { color particle_color*pow(0.25,particle_secs)}
       // #debug concat(str(particle_secs,0,2)," - ", vstr(3,particle_color*pow(0.75,particle_secs),", ",0,2),"\n")
        finish { ambient 20 }
      }
    #end
  #end
#end

#declare Rand_Fire = seed(320498);

#local FireColorArray =
array[6] {
  <1,0,0>,
  <0,1,0>,
  <0,0,1>,
  <1,1,0>,
  <1,1,1>,
  <1,0.5,0>,
};


#for (i, 0, 100, 1)
  rocket(66+rand(Rand_Fire)*26, rand(Rand_Fire)*100, FireColorArray[int(rand(Rand_Fire)*6)])
#end

#for (i, 0, 200, 1)
  rocket(117+rand(Rand_Fire)*55, rand(Rand_Fire)*100, FireColorArray[int(rand(Rand_Fire)*6)])
#end

/*
rocket (0.0, 0, <1,0.2,0.04>)
rocket (0.1, 10, <1,0.2,0.04>)
rocket (0.2, 20, <1,0.2,0.04>)
rocket (0.3, 30, <1,0.2,0.04>)
rocket (0.4, 40, <1,0.2,0.04>)
rocket (0.5, 50, <1,0.2,0.04>)
rocket (0.6, 60, <1,0.2,0.04>)
rocket (0.7, 70, <1,0.2,0.04>)
rocket (0.8, 80, <1,0.2,0.04>)
rocket (0.9, 90, <1,0.2,0.04>)
rocket (1.0, 100, <1,0.2,0.04>)
rocket (1.1, 90, <1,0.2,0.04>)
rocket (1.2, 80, <1,0.2,0.04>)
rocket (1.3, 70, <1,0.2,0.04>)
rocket (1.4, 60, <1,0.2,0.04>)
rocket (1.5, 50, <1,0.2,0.04>)
rocket (1.6, 40, <1,0.2,0.04>)
rocket (1.7, 30, <1,0.2,0.04>)
rocket (1.8, 20, <1,0.2,0.04>)
rocket (1.9, 10, <1,0.2,0.04>)
rocket (2.0, 0, <1,0.2,0.04>)
*/
