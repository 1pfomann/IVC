
#version 3.7;
global_settings {
  assumed_gamma 1
}

#include "rand.inc"
#include "colors.inc"
#include "skies.inc"
//sky_sphere { S_Cloud1 }


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

light_source {
  <50,100,-50>
  color rgb<0.1,0.1,0.1>
  media_interaction off
}

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
#include "helpers.inc"
#include "lightcolors.inc"
#include "switches.inc"

#include "camera.pov"
#include "lasers.pov"
#include "buehne.pov"
#include "movingheads_buehne.pov"
#include "movingheads_tower.pov"
#include "firework.pov"
#include "dj.pov"
#include "fans.pov"
