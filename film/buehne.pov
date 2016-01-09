#include "colors.inc"
#include "skies.inc"

#declare TowerHeight=4.15*5+0.5;


sky_sphere { S_Cloud1 }

plane { y, 0 pigment { color red 0.1 green 0.1 blue 0.1} }

#declare towersegment=union{
  box {
    <0, 0, 0>
    <0.5, TowerHeight, 0.7>
    texture {
      pigment { color Black }
    }
  }
  #for (i, 1, 5, 2)
    cylinder {
      <0,0,0>,
      <0,0.01,0>,
      4
      rotate <0,0,90>
      translate <0,i*4.4,5>
      texture {
        pigment { color Black }
      }
    }
  #end
  torus {
    4.15, 0.35
    rotate <0,0,90>
    translate<0.25,4.4,5>
    texture {
      pigment { color CTower1 }
    }
    finish { ambient 5 }
  }
  torus {
    4.15,.35
    rotate <0,0,90>
    translate<0.25,3*4.4,5>
    texture {
      pigment { color CTower2 }
    }
    finish { ambient 5 }
  }
  torus {
    4.15,0.35
    rotate <0,0,90>
    translate<0.25,5*4.4,5>
    texture {
      pigment { color CTower3 }
    }
    finish { ambient 5 }
  }

}

#declare tower=union {
  object { towersegment }
  object { towersegment rotate <0,270,0> translate <10,0,0> }
  object { towersegment rotate <0,180,0> translate <10,0,10> }
  object { towersegment rotate <0,90,0> translate <0,0,10> }
}

#declare stagehalf=union {
  object { tower }
  torus {
    7.5,0.5
    rotate <90,0,0>
    translate<25,4,0>
    texture {
      pigment { color CTower1 }
    }
    finish { ambient 5 }
  }
  cylinder {
    <0,0,0>,
    <0,0.1,0>,
    7.5
    rotate <90,0,0>
    translate <25,4,0>
    texture {
      pigment { color Black }
    }
  }
  torus {
    6,0.4
    rotate <90,0,0>
    translate<25,4,0>
    texture {
      pigment { color CTower2 }
    }
    finish { ambient 5 }
  }
  torus {
    4.5,0.3
    rotate <90,0,0>
    translate<25,4,0>
    texture {
      pigment { color CTower3 }
    }
    finish { ambient 5 }
  }
  torus {
    3,0.2
    rotate <90,0,0>
    translate<25,4,0>
    texture {
      pigment { color CTower4 }
    }
    finish { ambient 5 }
  }
  sphere {
    <0,0,0>, 2
    rotate <90,0,0>
    translate<25,4,0>
    texture {
      pigment { color CTower5 }
    }
    finish { ambient 5 }
  }
  cylinder {
    <0,0,0>,
    <0,0.1,0>,
    4
    texture {
      pigment { color Black }
    }
    rotate <90,0,0>
    translate <37,2,0>
  }
  torus {
    4,1
    rotate <90,0,0>
    translate<37,2,0>
    texture {
      pigment { color CTower6 }
    }
    finish { ambient 5 }
  }
}

object { stagehalf }
object { stagehalf scale <-1,1,1> translate <100,0,0> }

#for (i, 0, 4, 1)
torus {
  5+i/4,0.5
  rotate <90,0,0>
  translate<50,2,0-i/2>
  texture {
    pigment { color Red*i/4 }
  }
}
#end

