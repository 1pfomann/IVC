
#declare lasercount=100;
#declare lasercolor=rgb<0,1,0>;

#macro lasercalc1 (i)
  <(lasercount/2-i), 0, -100>
#end

#macro lasercalc2 (i)
  <(lasercount/2-i)*(0.5+sin(clock)*0.5), (lasercount/2-i)*(sin(4*pi*clock)*2), -100>
#end


#for (i, 0, lasercount, 1)
light_source {
  <0, 0,  0>
  color C_Lasers
  spotlight
  radius 0.10
  falloff 0.10
  tightness 50
  media_interaction on
  media_attenuation on
  point_at lasercalc1(i)
  fade_power 1
  fade_distance 50
  rotate <22.5*sin(clock*2*pi),0,0>
  translate <37, 2, 0>
}
#end
#for (i, 0, lasercount, 1)
light_source {
  <0, 0,  0>
  color C_Lasers
  spotlight
  radius 0.10
  falloff 0.10
  tightness 50
  media_interaction on
  media_attenuation on
  point_at lasercalc1(i)
  fade_power 1
  fade_distance 50
  rotate <22.5*sin(clock*2*pi),0,0>
  translate <63, 2, 0>
}
#end
