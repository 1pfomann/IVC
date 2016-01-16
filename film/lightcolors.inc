#switch (clock)
  #range (0,1)
    #declare MainColor=<1,0,0>;
    #break
  #range (1,2)
    #declare MainColor=<0,1,0>;
    #break
  #range (2,3)
    #declare MainColor=<0,0,1>;
    #break
  #else
    #declare MainColor=<1,1,1>;
#end


#declare C_Stageled=MainColor*25;

#if (mod(clock*12, 12) < 4)
  #declare C_TowerBot=MainColor*25;
#else
  #declare C_TowerBot=MainColor*0;
#end

#if (mod(clock*12, 12) >= 4 & mod(clock*12, 12) < 8)
  #declare C_TowerMid=MainColor*25;
#else
  #declare C_TowerMid=MainColor*0;
#end

#if (mod(clock*12, 12) >= 8)
  #declare C_TowerHi=MainColor*25;
#else
  #declare C_TowerHi=MainColor*0;
#end


#declare C_Speaker4=MainColor*25;
#declare C_Speaker3=MainColor*25;
#declare C_Speaker2=MainColor*25;
#declare C_Speaker1=MainColor*25;
#declare C_Speaker0=MainColor*25;

#declare C_Screen=MainColor*25;

#declare C_MovingHeads=rgb<1,1,1>*0.5;
#declare C_Laser=rgb<0,1,0>;
#declare C_RGBLaser=MainColor;
