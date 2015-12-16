#include "colors.inc"

camera {
  location <50000, 2000, -100000>
  look_at  <50000, 0,  0>
  right x*image_width/image_height
}

plane { y, 0 pigment { color red 0.5 green 0.5 blue 0.5} }

media {
  scattering {
    1,
    1
    extinction 0.0001
  }
}

#declare lasercount=500;
#declare lasercolor=rgb<0,10,0>;

#macro lasercalc1 (i)
  <(lasercount/2-i)*1000, 0, -100000>
#end

#macro lasercalc2 (i)
  <(lasercount/2-i)*(500+sin(clock)*500), (lasercount/2-i)*1000*(sin(4*pi*clock)*2), -100000>
#end


#for (i, 0, lasercount, 1)
light_source {
  <0, 0,  0>
  color rgb<0,10,0>
  spotlight
  radius 0.10
  falloff 0.10
  tightness 50
  media_interaction on
  media_attenuation on
  point_at lasercalc2(i)
  rotate <22.5*sin(clock*2*pi),0,0>
  translate <50000, 20000, 0>
}
#end
