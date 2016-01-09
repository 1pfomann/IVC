#version 3.7
#include "colors.inc"
#include "textures.inc"

sphere {
  <0, 0, 0>, 1
  texture {
    pigment { color Flesh }
  }
}

box {
  <1, 1, -1>, <-1, -1, -3>
  texture {
    pigment { color Orange }
  }
}

box {
  <1000, 1000, -3>, <-1000, -1000, -3>
  texture {
    pigment { Jade }
  }
}

media {
  scattering { 1, rgb 0.03}
}


camera {
  location <-20*sin(2*pi*clock), -20*cos(2*pi*clock), 20>
  look_at <0, 0, 0>
}

light_source {
  <-2, -2, -2>
  color White
  spotlight
  radius 15
  falloff 10
  tightness 5
  point_at <0, 0, 0>
}

light_source {
  <2, -2, -2>
  color White
  spotlight
  radius 15
  falloff 10
  tightness 5
  point_at <0, 0, 0>
}

light_source {
  <-2, 2, -2>
  color White
  spotlight
  radius 15
  falloff 10
  tightness 5
  point_at <0, 0, 0>
}

light_source {
  <2, 2, -2>
  color White
  spotlight
  radius 15
  falloff 10
  tightness 5
  point_at <0, 0, 0>
}
