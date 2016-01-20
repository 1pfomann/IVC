
//#declare lasercount=int(100*abs(sin(clock*pi)));
#declare lasercount=10;//int(100*abs(sin(clock*pi)));
#declare lasercolor=rgb<0,1,0>;
#declare lasermode=1;

#local laser_rotate = function(mode) {
  #switch (lasermode)
    #case(1)
      0
    #break
  #else
    0
  #end
}

#local laser_tilt = function(mode) {
  #switch (lasermode)
    #case(1)
      22.5+sin(clock)*22.5
    #break
  #else
    0
  #end
}

#macro laser (source, lasercolor)
light_source {
  <0,0,0>
  color lasercolor
  spotlight
  radius 0.10
  falloff 0.10
  tightness 50
  media_interaction on
  media_attenuation on
  point_at <0,0,-100>
  //rotate <22.5+22.5*sin(clock*2*pi),i,0>
  rotate <0,i-(lasercount/2),0>    //Spread
  rotate <0,0,laser_rotate(lasermode)>  //Rotate
  rotate <laser_tilt(lasermode),0,0> //Tilt
  translate source
}
#end

#if (ON_RGBLaser)
  #for (i, 0, lasercount, 1)
  laser(<37,2,-0.05>, C_RGBLaser)
  #end

  #for (i, 0, lasercount, 1)
  laser(<63,2,-0.05>, C_RGBLaser)
  #end
#end

#if (ON_Laser)
  #for (i, 0, lasercount, 1)
  laser(<5,1*4.4,-0.05>, C_Laser)
  #end

  #for (i, 0, lasercount, 1)
  laser(<95,1*4.4,-0.05>, C_Laser)
  #end

  #for (i, 0, lasercount, 1)
  laser(<5,3*4.4,-0.05>, C_Laser)
  #end

  #for (i, 0, lasercount, 1)
  laser(<95,3*4.4,-0.05>, C_Laser)
  #end

  #for (i, 0, lasercount, 1)
  laser(<5,5*4.4,-0.05>, C_Laser)
  #end

  #for (i, 0, lasercount, 1)
  laser(<95,5*4.4,-0.05>, C_Laser)
  #end
#end
