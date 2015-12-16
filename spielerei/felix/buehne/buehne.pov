#include "colors.inc"
#include "skies.inc"

#declare TowerHeight=4150*5+500;
#declare CTower1=<sin(2*pi*clock),0,0>;
#declare CTower2=<0,sin(2*pi*clock+1),0>;
#declare CTower3=<0,0,sin(2*pi*clock+2)>;
#declare CTower4=<0,sin(2*pi*clock+3),sin(2*pi*clock+3)>;
#declare CTower5=<sin(2*pi*clock+4),0,sin(2*pi*clock+4)>;
#declare CTower6=<sin(2*pi*clock+4),sin(2*pi*clock+4),0>;


//sky_sphere { S_Cloud1 }

plane { y, 0 pigment { color red 0.1 green 0.1 blue 0.1} }

camera {
//  location <(50000+50000*sin(2*pi*clock)), 8500-(6500*sin(4*pi*clock)), -100000>
  location <50000, 2000, -100000>
  look_at <50000,  0, 0>
  right x*image_width/image_height
}

#declare towersegment=union{
  box {
    <0, 0, 0>
    <500, TowerHeight, 700>
    texture {
      pigment { color Black }
    }
  }
  torus {
    4400,350
    rotate <0,0,90>
    translate<250,4150,5000>
    texture {
      pigment { color CTower1 }
    }
    finish { ambient 5 }
  }
  torus {
    4150,350
    rotate <0,0,90>
    translate<250,3*4400,5000>
    texture {
      pigment { color CTower2 }
    }
    finish { ambient 5 }
  }
  torus {
    4150,350
    rotate <0,0,90>
    translate<250,5*4400,5000>
    texture {
      pigment { color CTower3 }
    }
    finish { ambient 5 }
  }

}

#declare tower=union {
  object { towersegment }
  object { towersegment rotate <0,270,0> translate <10000,0,0> }
  object { towersegment rotate <0,180,0> translate <10000,0,10000> }
  object { towersegment rotate <0,90,0> translate <0    ,0,10000> }
}

#declare stagehalf=union {
  object { tower }
  torus {
    7500,500
    rotate <90,0,0>
    translate<25000,4000,0>
    texture {
      pigment { color CTower1 }
    }
    finish { ambient 5 }
  }
  torus {
    6000,400
    rotate <90,0,0>
    translate<25000,4000,0>
    texture {
      pigment { color CTower2 }
    }
    finish { ambient 5 }
  }
  torus {
    4500,300
    rotate <90,0,0>
    translate<25000,4000,0>
    texture {
      pigment { color CTower3 }
    }
    finish { ambient 5 }
  }
  torus {
    3000,200
    rotate <90,0,0>
    translate<25000,4000,0>
    texture {
      pigment { color CTower4 }
    }
    finish { ambient 5 }
  }
  sphere {
    <0,0,0>, 2000
    rotate <90,0,0>
    translate<25000,4000,0>
    texture {
      pigment { color CTower5 }
    }
    finish { ambient 5 }
  }
  torus {
    4000,1000
    rotate <90,0,0>
    translate<37000,2000,0>
    texture {
      pigment { color CTower6 }
    }
    finish { ambient 5 }
  }
}

object { stagehalf }
object { stagehalf scale <-1,1,1> translate <100000,0,0> }

torus {
  8500,1000
  rotate <90,0,0>
  translate<50000,2000,0>
  texture {
    pigment { color Blue }
  }
  finish { ambient 5 }
}
