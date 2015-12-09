#include "colors.inc"

camera {
  location <50, 50, -25>
  look_at  <0, 0,  -25>
}

media {
  scattering {
    1,
    0.1
    extinction 0.25
  }
}


sphere {
  <0, 0, -25>, 1
  texture {
    pigment { color Red}
  }
}

/*light_source {
  <0.1, 25, -2.5>
  color White
  spotlight
  radius 1
  falloff 5
  tightness 15
  media_interaction on
  media_attenuation on
  point_at <abs(sin(clock*pi)*25), 0, -25>
}*/
//------------------------
light_source {
  <0.1, 25, -47.5>
  color White
  spotlight
  radius 1
  falloff 5
  tightness 15
  media_interaction on
  media_attenuation on
  point_at <25+cos(clock*pi*2+(0*pi/3))*15, 0, -25+sin(clock*pi*2+(0*pi*3))*15>
}
light_source {
  <0.1, 25, -47.5>
  color White
  spotlight
  radius 1
  falloff 5
  tightness 15
  media_interaction on
  media_attenuation on
  point_at <25+cos(clock*pi*2+(pi/3))*15, 0, -25+sin(clock*pi*2+(pi/3))*15>
}
light_source {
  <0.1, 25, -47.5>
  color White
  spotlight
  radius 1
  falloff 5
  tightness 15
  media_interaction on
  media_attenuation on
  point_at <25+cos(clock*pi*2+(2*pi/3))*15, 0, -25+sin(clock*pi*2+(2*pi/3))*15>
}
light_source {
  <0.1, 25, -47.5>
  color White
  spotlight
  radius 1
  falloff 5
  tightness 15
  media_interaction on
  media_attenuation on
  point_at <25+cos(clock*pi*2+(3*pi/3))*15, 0, -25+sin(clock*pi*2+(3*pi/3))*15>
}
light_source {
  <0.1, 25, -47.5>
  color White
  spotlight
  radius 1
  falloff 5
  tightness 15
  media_interaction on
  media_attenuation on
  point_at <25+cos(clock*pi*2+(4*pi/3))*15, 0, -25+sin(clock*pi*2+(4*pi*3))*15>
}
light_source {
  <0.1, 25, -47.5>
  color White
  spotlight
  radius 1
  falloff 5
  tightness 15
  media_interaction on
  media_attenuation on
  point_at <25+cos(clock*pi*2+(5*pi/3))*15, 0, -25+sin(clock*pi*2+(5*pi/3))*15>
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
