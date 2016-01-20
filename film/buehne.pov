#include "colors.inc"
#include "skies.inc"

#declare TowerHeight=4.15*5+0.5;



plane { y, 0 pigment { color red 0.1 green 0.1 blue 0.1} }

#declare towersegment=union{
  box {
    <0, 0, 0>
    <0.5, TowerHeight, 0.7>
  }
  #for (i, 1, 5, 2)
    cylinder {
      <0,0,0>,
      <0,0.01,0>,
      4
      rotate <0,0,90>
      translate <0,i*4.4,5>
    }
  #end
  torus {
    4.15, 0.35
    rotate <0,0,90>
    translate<0.25,4.4,5>
    pigment { color C_TowerBot }
    finish {ambient 1}
  }
  torus {
    4.15,.35
    rotate <0,0,90>
    translate<0.25,3*4.4,5>
    pigment { color C_TowerMid }
    finish {ambient 1}
  }
  torus {
    4.15,0.35
    rotate <0,0,90>
    translate<0.25,5*4.4,5>
    pigment { color C_TowerHi }
    finish {ambient 1}
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
    pigment { color C_Speaker4 }
    finish {ambient 1}
  }
  cylinder {
    <0,0,0>,
    <0,0.1,0>,
    7.5
    rotate <90,0,0>
    translate <25,4,0>
  }
  torus {
    6,0.4
    rotate <90,0,0>
    translate<25,4,0>
    pigment { color C_Speaker3 }
    finish {ambient 1}
  }
  torus {
    4.5,0.3
    rotate <90,0,0>
    translate<25,4,0>
    pigment { color C_Speaker2 }
    finish {ambient 1}
  }
  torus {
    3,0.2
    rotate <90,0,0>
    translate<25,4,0>
    pigment { color C_Speaker1 }
    finish {ambient 1}
  }
  sphere {
    <0,0,0>, 2
    rotate <90,0,0>
    translate<25,4,0>
    pigment { color C_Speaker0 }
    finish {ambient 1}
  }
  cylinder {
    <0,0,0>,
    <0,0.1,0>,
    4
    rotate <90,0,0>
    translate <37,2,0>
  }
  torus {
    4,1
    rotate <90,0,0>
    translate<37,2,0>
    pigment { color C_Screen }
    finish {ambient 1}
  }
}

object { stagehalf }
object { stagehalf scale <-1,1,1> translate <100,0,0> }

#for (i, 0, 4, 1)
torus {
  5+i/4,0.5
  rotate <90,0,0>
  translate<50,2,0-i/2>
}
#end

#declare dj_pult=texture {
  uv_mapping
  pigment {
    image_map {
      png "dj_pult_long.png"
      map_type 0
      interpolate 2
    }
  }
}

box {
  <42,0,1>
  <58,0.6,-3>
}
box {
  <47.5,0,0>
  <52.5,1.2,-2.5>
}
box {
  <49,1.2,-1>
  <51,2.4,-1.5>
}
box {
  <49.5, 2.4, -1.4>
  <50.5, 2.45, -1.15>
  texture{ dj_pult }
}

#macro stageled (v_start, v_end)
  cylinder {
    v_start,
    v_end,
    0.05
    pigment { color C_Stageled }
    finish {ambient 1}
  }
#end

stageled(<49,2.4,-1.5>, <51,2.4,-1.5>)
stageled(<49,2.4,-1.5>, <49,2.4,-1>)
stageled(<51,2.4,-1.5>, <51,2.4,-1>)

stageled(<49,2.4,-1.5>, <49,1.2,-1.5>)
stageled(<51,2.4,-1.5>, <51,1.2,-1.5>)


stageled(<47.5,1.2,-2.5>, <52.5,1.2,-2.5>)
stageled(<47.5,1.2,-2.5>, <47.5,1.2,0>)
stageled(<52.5,1.2,-2.5>, <52.5,1.2,0>)

stageled(<47.5,1.2,-2.5>, <47.5,0.6,-2.5>)
stageled(<52.5,1.2,-2.5>, <52.5,0.6,-2.5>)


stageled(<42,0.6,-3>, <58,0.6,-3>)
stageled(<42,0.6,-3>, <42,0.6,1>)
stageled(<58,0.6,-3>, <58,0.6,1>)

stageled(<42,0.6,-3>, <42,0,-3>)
stageled(<58,0.6,-3>, <58,0,-3>)
