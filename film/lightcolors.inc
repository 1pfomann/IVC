#local LightColorRand = seed(clock);
#local MainColorArray =
array[9] {
  <1,0,0>,
  <0,1,0>,
  <0,0,1>,
  <1,1,0>,
  <1,0,1>,
  <0,1,1>,
  <1,1,1>,
  <1,0.5,0>,
  <1,0,0.5>,
};

#declare MainColor = MainColorArray[int(rand(LightColorRand)*9)];

#declare C_Stageled=MainColor*25;

#declare Rand_TowerBot = seed(clock*4);
#declare Rand_TowerMid = seed(clock*4+1);
#declare Rand_TowerHi = seed(clock*4+2);

#declare C_TowerBot= MainColor*select(rand(Rand_TowerBot)-0.5, 25, 0);
#declare C_TowerMid= MainColor*select(rand(Rand_TowerMid)-0.5, 25, 0);
#declare C_TowerHi= MainColor*select(rand(Rand_TowerHi)-0.5, 25, 0);


#declare Rand_Speaker4 = seed(clock*4+3);
#declare Rand_Speaker3 = seed(clock*4+4);
#declare Rand_Speaker2 = seed(clock*4+5);
#declare Rand_Speaker1 = seed(clock*4+6);
#declare Rand_Speaker0 = seed(clock*4+7);

#declare C_Speaker4= MainColor*select(rand(Rand_Speaker4)-0.5, 25, 0);
#declare C_Speaker3= MainColor*select(rand(Rand_Speaker3)-0.5, 25, 0);
#declare C_Speaker2= MainColor*select(rand(Rand_Speaker2)-0.5, 25, 0);
#declare C_Speaker1= MainColor*select(rand(Rand_Speaker1)-0.5, 25, 0);
#declare C_Speaker0= MainColor*select(rand(Rand_Speaker0)-0.5, 25, 0);


#declare Rand_Screen = seed(clock*4+8);
#declare C_Screen=MainColor*select(rand(Rand_Screen)-0.5, 25, 0);

#declare C_MovingHeads=rgb<1,1,1>*0.5;
#declare C_Laser=rgb<0,1,0>;
#declare C_RGBLaser=MainColor;
