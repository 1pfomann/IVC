
#declare lasercount=1+int(50*abs(sin(clock*pi)));
//#declare lasercount=1+(sin(clock*pi)+1)*25;//int(100*abs(sin(clock*pi)));
//#declare lasercount=50;//(sin(clock*pi*2)+1)*25;//int(100*abs(sin(clock*pi)));
#declare lasercolor=rgb<0,1,0>;
#local Rand_Lasermode = seed(clock+23);

#declare lasermode_rotate=int(rand(Rand_Lasermode)*3);
#declare lasermode_tilt=int(rand(Rand_Lasermode)*2);
//#declare lasermode_rotate=0;
//#declare lasermode_tilt=1;

//Only Nice Sine Wave lasers <3
#if (lasermode_tilt = 1)
  #declare lasercount = 50;
  #declare lasermode_rotate = 0;
#end

#local laser_rotate = function(i) {
  #switch (lasermode_rotate)
    #case(0)
      0
    #break
    #case(1)
      360*clock
    #break
    #case(2)
      sin(clock*pi)*45
    #break
  #else
    0
  #end
}

#local laser_tilt = function(i) {
  #switch (lasermode_tilt)
    #case(0)
      22.5+sin(clock*1.5*pi)*22.5
    #break
    #case(1)
      10+sin(i/lasercount*pi*2+(clock*2))*5
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
  rotate <0,(i-(lasercount/2))/2,0>    //Spread
  rotate <0,0,laser_rotate(i)>  //Rotate
  rotate <laser_tilt(i),0,0> //Tilt
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
