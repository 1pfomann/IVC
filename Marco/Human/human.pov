#version 3.7;
#include "colors.inc"
#include "textures.inc"
#include "stars.inc"

#declare Camera = 1000;
#declare Legs = 100;
#declare Cloth = Black;

sphere {
  <0, 1650, 0>, 100
  scale <0.75, 1, 1>
  texture{
    pigment{ color Flesh }
  }
}

cylinder {
  <0, 1600, 0>, <0, 1450, 0>, 45
  texture{
    pigment{ color Flesh }
  }
}

superellipsoid{
  <0.25, 1.00>
  scale <220, 350, 120>
  translate <0. 1150, 0>
  texture{
    pigment{ color Cloth }
  }
}

cone {
  <-Legs, 850, 0>, 75, <-Legs, 100, 0>, 40
  texture{
    pigment{ color Cloth }
  }
}

cone {
  <Legs, 850, 0>, 75, <Legs, 100, 0>, 40
  texture{
    pigment{ color Cloth }
  }
}

prism {
  0, 100, 6,
  <0, 0>,
  <0, 300>,
  <50, 300>,
  <100, 100>,
  <100, 0>,
  <0, 0>
  texture{
    pigment{ color Cloth }
  }
  rotate <0, 0, 90>
  translate <Legs+50, 0, -50>
}

prism {
  0, 100, 6,
  <0, 0>,
  <0, 300>,
  <50, 300>,
  <100, 100>,
  <100, 0>,
  <0, 0>
  texture{
    pigment{ color Cloth }
  }
  rotate <0, 0, 90>
  translate <-Legs+50, 0, -50>
}


camera {
  location <-Camera*sin(2*pi*clock), 600, -Camera*cos(2*pi*clock)>
  look_at <0, 50, 0>
}

box {
  <25000, 0, 25000>, <-25000, 0, -25000>
  texture{
    pigment{ Jade }
  }
}

light_source{
  <10000,20000,  0>
  color White
}

sky_sphere{
 pigment{ gradient <0,1,0>
    color_map{
      [0.00 color rgb<0.24,0.32,1> *0.3]
      [0.23 color rgb<0.16,0.32,0.9> *0.9]
      [0.37 color rgb<1,0.1,0> ]
      [0.52 color rgb<1,0.2,0> ]
      [0.70 color rgb<0.36,0.32,1> *0.7 ]
      [0.80 color rgb<0.14,0.32,1> *0.5 ]
      [1.00 color rgb<0.24,0.32,1> *0.3 ]
    }

    scale 2000
    rotate <-20,0,0>
    translate <0,0.7,0>
  }
}
