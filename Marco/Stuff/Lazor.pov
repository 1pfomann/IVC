#include "colors.inc"

camera {
  location <30, 10, -40>
  look_at <0, 0, 0,>
}

sphere
{
  <0, 0, 0>
  30
  hollow
  pigment {
    color rgbt 1
  }
  interior {
    media {
      scattering{ 4, .17 extinction .0001}
    }
  }
}

cylinder {
  <0, 0, 0>,
  <0, 50, 0>,
  0.1
  pigment { color Green }
}

cylinder {
  <0, 0, 0>,
  <50, -7, 0>,
  0.1
  pigment {color Blue}
}

cylinder {
 <0, 0, 0>,
 <0, -7, -50>,
 0.1
 pigment {color Red}
}

light_source {
  <100, 100, -100>,
  White
  media_interaction off
}

light_group {
  light_source {
    <0, 0, 0>
    White
    spotlight
    point_at <30, 10, -40>
  }
  global_lights off
}
