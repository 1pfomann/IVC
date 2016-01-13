
#version 3.7;
global_settings {
    assumed_gamma 1
}

#include "colors.inc"
#include "skies.inc"
sky_sphere { S_Cloud1 }

light_source {
  <50,100,-50>
  color rgb<0.1,0.1,0.1>
  media_interaction off
}

box {
  <-200,-10, 50>, <200,200,-200>
  pigment { rgbt <1,1,1,1> }
  hollow
  interior {
    media {
      scattering {
        1
	1
	extinction 0.02
      }
      /*density {
        granite scale 10
	color_map {
          [0.0 rgb <1,1,1>*0.1]
	  [0.5 rgb <1,1,1>*0.3]
	  [1.0 rgb <1,1,1>*1  ]
        }
      }*/
    }
  }
}


//#include "lightcolors.inc"

#include "Camera.pov"
//#include "JumpingMan.pov"
#include "CameraMan.pov"
