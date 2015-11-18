#include "colors.inc"

camera {
  location <50, 50, -25>
  look_at  <0, 0,  -25>
}

media {
  scattering { 1, rgb 0.03}
}


sphere {
  <0, 0, -25>, 1
  texture {
    pigment { color Red}
  }
}

light_source {
  <0.1, 25, -2.5>
  color White
  spotlight
  radius 1
  falloff 0.2
  tightness 10
  media_interaction on
  media_attenuation on
  point_at <abs(sin(clock*pi)*25), 0, -25>
}


box {
    <0, -1, 0>,  // Near lower left corner
    <50, 0, -50>   // Far upper right corner
    texture {
      pigment { color Gray }
    }
  }

box {
    <0, 0, 0>,  // Near lower left corner
    <-5,  25, -5>   // Far upper right corner
    texture {
      pigment { color Green }
    }
  }

box {
    <0, 0, -50>,  // Near lower left corner
    <-5,  25, -45>   // Far upper right corner
    texture {
      pigment { color Green }
    }
  }
