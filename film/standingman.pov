#version 3.7;
#include "colors.inc"
#include "rand.inc"

#declare Legs = 0.1;

#declare StandingMan=
  // Left Arm
  #declare Intersection_Left_Shoulder = <-0.200, 1.450, 0>;
  #declare Intersection_Left_Arm = vnormalize(<0, -3, 0>)*0.300+Intersection_Left_Shoulder;
  #declare Left_Hand = vnormalize(<0, -2.5, 0>)*0.250+Intersection_Left_Arm;

  //Right Arm
  #declare Intersection_Right_Shoulder = <0.200, 1.450, 0>;
  #declare Intersection_Right_Arm = vnormalize(<0, -3, 0>)*0.300+Intersection_Right_Shoulder;
  #declare Right_Hand = vnormalize(<0, -2.5, 0>)*0.250+Intersection_Right_Arm;
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
        pigment { color Cloth }
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
        pigment{ color Cloth }
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
  }

