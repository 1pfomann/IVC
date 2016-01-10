
#for (i,0,10,1)
#local lclock=clock-i*0.1;
light_source {
  <50+cos(pi*(i/10))*5.45,2+sin(pi*(i/10))*5.45,-2.5>
  color C_MovingHeads
  spotlight
  radius 2
  falloff 3
  tightness 50
  media_interaction on
  media_attenuation on
  fade_power 6
  fade_distance 4
  point_at <50+cos(pi*(i/10))*abs(sin(lclock*pi*0.5))*10, 2.5+sin(pi*(i/10))*abs(sin(lclock*pi*0.5))*10, 0.3+abs(sin(lclock*pi*0.5))*-15>
}
#end

