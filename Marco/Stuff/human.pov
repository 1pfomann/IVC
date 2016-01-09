#version 3.7;
#include "colors.inc"
#include "textures.inc"

#declare Camera = 1500;

sphere {
  <0, 1700, 0>, 200
  scale <0.75, 1, 1>
  texture{
    pigment{ color Flesh }
  }
}

cylinder {
  <0, 1600, 0>, <0, 1450, 0>, 100
  texture{
    pigment{ color Flesh }
  }
}

superellipsoid{
  <0.25, 1.00>
  scale <250, 350, 250>
  translate <0. 1150, 0>
  texture{
    pigment{ color Flesh }
  }
}



camera {
  location <Camera, 1600, -Camera>
  look_at <0, 1400, 0>
}

box {
  <2500, 0, 2500>, <-2500, 0, -2500>
  texture{
    pigment{ Jade }
  }
}

light_source{
  <2000,2000,  0>
  color White
}


