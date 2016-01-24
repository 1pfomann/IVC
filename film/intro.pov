
#version 3.7;
global_settings {
  assumed_gamma 1
}

#include "colors.inc"
#include "skies.inc"
#include "lightcolors.inc"

sky_sphere {
  pigment {
    bozo
    color_map {
      [0.0 White*3]
      [0.2 Black]
      [1.0 Black]
    }
    scale .006
  }
}

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

light_source {
  <50,100,-50>
  color rgb<0.1,0.1,0.1>
  media_interaction off
}
plane { y, 0 pigment { color red 0.1 green 0.1 blue 0.1} }

#include "intro_lasers.pov"
#include "text.pov"
#include "intro_camera.pov"
