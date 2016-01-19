
#version 3.7;
global_settings {
  assumed_gamma 1
}

#include "rand.inc"
#include "colors.inc"
#include "skies.inc"
//sky_sphere { S_Cloud1 }


/*sky_sphere {
  pigment {
    bozo
    color_map {
      [0.0 White*3]
      [0.2 Black]
      [1.0 Black]
    }
    scale .006
  }
}*/

/*light_source {
  <50,100,-50>
  color rgb<0.1,0.1,0.1>
  media_interaction off
}*/

/*media {
  scattering {
    1,
    1
    extinction 0
  }
  method 3
  samples 25
  intervals 25
}*/

box{<-50,-2,10>,<150,150,-150> pigment{rgbt 1}
  interior{
    media {
      scattering {
        4,                      // 4=Rayleigh; 5=Henyey-Greenstein
        1  // color / 'density'
        extinction 0.001
      }
      method 3   // adaptive sampling. default, don't need to specify
    }
  }
  hollow
}

plane { y, 0 pigment { color red 0.1 green 0.1 blue 0.1} }
//#include "lightcolors.inc"
#include "Camera.pov"
#include "JumpingMan.pov"
#include "CameraMan.pov"

#declare Fans=0;
#declare Random1=seed (2342);
#declare Random2=seed (1337);
#declare Random3=seed (4223);

#for (Fans, 0, 10000, 1)
  #if (rand(Random3)-0.01 < 0)
    object{
      CameraMan
        translate <max(min(Rand_Gauss(0, 30, Random1),100),-100), 0, max(-1*abs(Rand_Gauss(0, 60 , Random2)),-200)>
    }
  #else
    object{
      JumpingMan
        translate <max(min(Rand_Gauss(0, 30, Random1),100),-100), rand(Random1)*0.3*abs(sin(pi*clock+rand(Random2))), max(-1*abs(Rand_Gauss(0, 60 , Random2)),-200)>
    }
  #end
#end
