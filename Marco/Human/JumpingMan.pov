#version 3.7;
#include "colors.inc"
#include "textures.inc"
#include "stars.inc"

#declare Camera = <5, 5, 5>;
#declare Legs = 0.1;
#declare Cloth = Black;

#declare JumpingMan=
  // Left Arm
  #declare Intersection_Left_Shoulder = <-0.200, 1.450, 0>;
  #declare Intersection_Left_Arm = vnormalize(<-4+-sin(2*pi*clock), 3+-sin(2*pi*clock), 0>)*0.300+Intersection_Left_Shoulder;
  #declare Left_Hand = vnormalize(<1+0.5*sin(2*pi*clock), 2+sin(2*pi*clock), 0>)*0.250+Intersection_Left_Arm;

  //Right Arm
  #declare Intersection_Right_Shoulder = <0.200, 1.450, 0>;
  #declare Intersection_Right_Arm = vnormalize(<4+sin(2*pi*clock), 3+-sin(2*pi*clock), 0>)*0.300+Intersection_Right_Shoulder;
  #declare Right_Hand = vnormalize(<-1-0.5*sin(2*pi*clock), 2+sin(2*pi*clock), 0>)*0.250+Intersection_Right_Arm;
  union {
    // Cap
    union {
      intersection {
        sphere { <0, 0, 0>, 0.090 scale <0.9, 1, 1.1> }
        box { <0.100, 0, 0.100>, <-0.100, -0.100, -0.100> inverse }

      }
      sphere { <0, 0, 0>, 0.090 scale <1, 0.05, 1> translate <0, 0, 0.060> }

      translate <0, 1.690, 0>
      texture {
        pigment { color Blue }
      }
    }

    // head
    sphere {
      <0, 1.650, 0>, 0.100
      scale <0.8, 1, 1>
      texture{
        pigment{ color Flesh }
      }
    }

    // neck
    cylinder {
      <0, 1.600, 0>, <0, 1.450, 0>, 0.045
      texture{
        pigment{ color Flesh }
      }
    }

    // torus
    superellipsoid{
      <0.25, 1.00>
      scale <0.220, 0.350, 0.120>
      translate <0. 1.150, 0>
      texture{
        pigment{ color Red }
      }
    }

    // right arm
    sphere {
      Intersection_Right_Shoulder, 0.045
      texture {
        pigment { color Cloth }
      }
    }

    cylinder {
      Intersection_Right_Shoulder, Intersection_Right_Arm, 0.045
      texture {
        pigment { color Cloth }
      }
    }

    sphere {
      Intersection_Right_Arm, 0.045
      texture {
        pigment { color Cloth }
      }
    }

    cylinder {
      Intersection_Right_Arm, Right_Hand, 0.045
      texture {
        pigment { color Flesh }
      }
    }

    sphere {
      Right_Hand, 0.075
      texture {
        pigment { color Flesh }
      }
    }

    // left arm
    sphere {
      Intersection_Left_Shoulder, 0.045
      texture {
        pigment{ color Cloth }
      }
    }

    cylinder {
      Intersection_Left_Shoulder, Intersection_Left_Arm, 0.045
      texture {
        pigment { color Cloth }
      }
    }

    sphere {
      Intersection_Left_Arm, 0.045
      texture {
        pigment { color Cloth }
      }
    }

    cylinder {
      Intersection_Left_Arm, Left_Hand, 0.045
      texture {
        pigment { color Flesh }
      }
    }

    sphere {
      Left_Hand, 0.075
      texture {
        pigment { color Flesh }
      }
    }

    // right leg
    cone {
      <-Legs, 0.850, 0>, 0.075, <-Legs, 0.100, 0>, 0.040
      texture{
        pigment{ color Cloth }
      }
    }

    prism {
      0, 0.100, 6,
      <0, 0>,
      <0, 0.300>,
      <0.050, 0.300>,
      <0.100, 0.100>,
      <0.100, 0>,
      <0, 0>
      texture{
        pigment{ color Cloth }
      }
      rotate <0, 0, 90>
      translate <Legs+0.050, 0, -0.050>
    }

    // left leg
    cone {
      <Legs, 0.850, 0>, 0.075, <Legs, 0.100, 0>, 0.040
      texture{
        pigment{ color Cloth }
      }
    }

    prism {
      0, 0.100, 6,
      <0, 0>,
      <0, 0.300>,
      <0.050, 0.300>,
      <0.100, 0.100>,
      <0.100, 0>,
      <0, 0>
      texture{
        pigment{ color Cloth }
      }
      rotate <0, 0, 90>
      translate <-Legs+0.050, 0, -0.050>
    }

//    translate Jump
  }

// camera and light
camera {
  //location <-Camera*sin(2*pi*clock), 3, -Camera*cos(2*pi*clock)>
  location Camera
  look_at <0, 1, 0>
  right x*image_width/image_height
}

box {
  <100, 0, 100>, <-100, 0, -100>
  texture{
    pigment{ Jade }
  }
}

light_source{
  <10 ,20 ,  0>
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

    scale 2
    rotate <-0.020,0,0>
    translate <0,0.007,0>
  }
}

#declare StartZ=0;
#declare End=10;
#declare Random1=seed (1337);
#declare Random2=seed (2342);

#while (StartZ < End)
  #declare StartX=0;
  #while (StartX < End)
    object{
      JumpingMan
      translate <StartX-0.5*End, rand(Random1)*0.3*abs(sin(pi*clock+rand(Random2))), StartZ-0.5*End>
    }
    #declare StartX=StartX+1;
  #end
  #declare StartZ=StartZ+1;
#end

//object {
//  JumpingMan
//  translate <1, 0, 0>
//}

//object {
//  JumpingMan
//  translate <0, 0, 0>
//}
