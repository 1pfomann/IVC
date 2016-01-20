
#switch (clock)
  #range (0,29)
    #declare ON_Laser=false;
    #declare ON_RGBLaser=false;
  #break
  #range(29,55)
    #declare ON_Laser=true;
    #declare ON_RGBLaser=false;
  #break
  #range(55,67)
    #declare ON_Laser=false;
    #declare ON_RGBLaser=false;
  #break
  #range(67,93)
    #declare ON_Laser=false;
    #declare ON_RGBLaser=false;
  #break
  #range(93,118)
    #declare ON_Laser=false;
    #declare ON_RGBLaser=false;
  #break
  #range(118,158)
    #declare ON_Laser=false;
    #declare ON_RGBLaser=true;
  #break
  #range(158,173)
    #declare ON_Laser=false;
    #declare ON_RGBLaser=false;
  #break
#else
    #declare ON_Laser=true;
    #declare ON_RGBLaser=true;

#end


#declare ON_MovingheadTower =true;

#if (ON_Laser)
#declare ON_MovingheadTower =false;
#end

#if (ON_RGBLaser)
#declare ON_MovingheadTower =false;
#end

