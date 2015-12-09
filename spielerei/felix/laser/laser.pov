#include "colors.inc"

camera {
  location <100, 100, -25>
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

#for (i, 0, 500, 1) 
light_source {
  <0.1, 25, -47.5>
  color rgb<0,3,0>
  spotlight
  radius 0.25
  falloff 0.25
  tightness 50
  media_interaction on
  media_attenuation on
  point_at <25+25*sin(((pi/500)*i)+2*pi*clock), 0, -20+(-50/500)*i>
}
#end

#for (i, 0, 500, 1) 
light_source {
  <0.1, 25, -2.5>
  color rgb<0,3,0>
  spotlight
  radius 0.25
  falloff 0.25
  tightness 50
  media_interaction on
  media_attenuation on
  point_at <25+25*sin(((pi/500)*i)+2*pi*clock), 0, 20+(-50/500)*i>
}
#end

#for (i, 0, 500, 1) 
light_source {
  <0.1, 10, -47.5>
  color rgb<0,3,0>
  spotlight
  radius 0.25
  falloff 0.25
  tightness 50
  media_interaction on
  media_attenuation on
  point_at <15+25*sin(((pi/500)*i)+2*pi*clock), 0, -15+(-50/500)*i>
}
#end

#for (i, 0, 500, 1) 
light_source {
  <0.1, 10, -2.5>
  color rgb<0,3,0>
  spotlight
  radius 0.25
  falloff 0.25
  tightness 50
  media_interaction on
  media_attenuation on
  point_at <15+25*sin(((pi/500)*i)+2*pi*clock), 0, 15+(-50/500)*i>
}
#end
box {
    <-500, -1, 500>,  // Near lower left corner
    <500, 0, -500>   // Far upper right corner
    texture {
      pigment { color White }
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
