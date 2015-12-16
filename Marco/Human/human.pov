#version 3.7;
#include "colors.inc"
#include "textures.inc"
#include "stars.inc"

#declare Camera = -3000;
#declare Legs = 100;
#declare Cloth = Black;
#declare Jump = <0, 300*sin(pi*clock), 0>;

// Left Arm
#declare Intersection_Left_Shoulder = <-200, 1450, 0>;
#declare Intersection_Left_Arm = vnormalize(<-4+-sin(2*pi*clock), 3+-sin(2*pi*clock), 0>)*300+Intersection_Left_Shoulder;
#declare Left_Hand = vnormalize(<1+0.5*sin(2*pi*clock), 2+sin(2*pi*clock), 0>)*250+Intersection_Left_Arm;

//Right Arm
#declare Intersection_Right_Shoulder = <200, 1450, 0>;
#declare Intersection_Right_Arm = vnormalize(<4+sin(2*pi*clock), 3+-sin(2*pi*clock), 0>)*300+Intersection_Right_Shoulder;
#declare Right_Hand = vnormalize(<-1-0.5*sin(2*pi*clock), 2+sin(2*pi*clock), 0>)*250+Intersection_Right_Arm;

// camera and light
camera {
  //location <-Camera*sin(2*pi*clock), 3000, -Camera*cos(2*pi*clock)>
  location <0, 3000, -Camera>
  look_at <0, 1000, 0>
  right x*image_width/image_height
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

union {
  // Cap
  union {
    intersection {
      sphere { <0, 0, 0>, 90 scale <0.9, 1, 1.1> }
      box { <100, 0, 100>, <-100, -100, -100> inverse }

    }
    sphere { <0, 0, 0>, 90 scale <1, 0.05, 1> translate <0, 0, 60> }

    translate <0, 1690, 0>
    texture {
      pigment { color Blue }
    }
  }

  // head
  sphere {
    <0, 1650, 0>, 100
    scale <0.80, 1, 1>
    texture{
      pigment{ color Flesh }
    }
  }

  // neck
  cylinder {
    <0, 1600, 0>, <0, 1450, 0>, 45
    texture{
      pigment{ color Flesh }
    }
  }

  // torus
  superellipsoid{
    <0.25, 1.00>
    scale <220, 350, 120>
    translate <0. 1150, 0>
    texture{
      pigment{ color Red }
    }
  }

  // right arm
  sphere {
    Intersection_Right_Shoulder, 45
    texture {
      pigment { color Cloth }
    }
  }

  cylinder {
    Intersection_Right_Shoulder, Intersection_Right_Arm, 45
    texture {
      pigment { color Cloth }
    }
  }

  sphere {
    Intersection_Right_Arm, 45
    texture {
      pigment { color Cloth }
    }
  }

  cylinder {
    Intersection_Right_Arm, Right_Hand, 45
    texture {
      pigment { color Flesh }
    }
  }

  sphere {
    Right_Hand, 75
    texture {
      pigment { color Flesh }
    }
  }

  // left arm
  sphere {
    Intersection_Left_Shoulder, 45
    texture {
      pigment{ color Cloth }
    }
  }

  cylinder {
    Intersection_Left_Shoulder, Intersection_Left_Arm, 45
    texture {
      pigment { color Cloth }
    }
  }

  sphere {
    Intersection_Left_Arm, 45
    texture {
      pigment { color Cloth }
    }
  }

  cylinder {
    Intersection_Left_Arm, Left_Hand, 45
    texture {
      pigment { color Flesh }
    }
  }

  sphere {
    Left_Hand, 75
    texture {
      pigment { color Flesh }
    }
  }

  // right leg
  cone {
    <-Legs, 850, 0>, 75, <-Legs, 100, 0>, 40
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

  // left leg
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
    translate <-Legs+50, 0, -50>
  }

  translate Jump
}

