#declare Fans=0;
#declare Random1=seed (2342);
#declare Random2=seed (1337);
#declare Random3=seed (4223);


#local ClothColorArray =
array[6] {
  <1,0,0>,
  <0,1,0>,
  <0,0,1>,
  <1,1,0>,
  <1,1,1>,

  <1,0.5,0>,
};



#for (Fans, 0, 10000, 1)
  #switch (rand(Random3)-0.01)
    #range(0.01,0)
      #declare Rand_Cap = seed(320498+Fans);
      #declare Rand_Shirt = seed(320498+Fans+1);
      #declare Rand_Pants = seed(320498+Fans+2);
      #declare ShirtCloth = ClothColorArray[int(rand(Rand_Shirt)*6)];
      #declare PantsCloth = ClothColorArray[int(rand(Rand_Pants)*6)];
      #declare CapCloth = ClothColorArray[int(rand(Rand_Cap)*6)];
      object{
        #include "cameraman.pov"
        CameraMan
          translate <max(min(Rand_Gauss(50 30, Random1),150),-50), 0, max(-1*abs(Rand_Gauss(0, 60 , Random2))-5,-200)>
      }
      #break
    #range(0,0.485)
      #declare Rand_Cap = seed(320498+Fans);
      #declare Rand_Shirt = seed(320498+Fans+1);
      #declare Rand_Pants = seed(320498+Fans+2);
      #declare ShirtCloth = ClothColorArray[int(rand(Rand_Shirt)*6)];
      #declare PantsCloth = ClothColorArray[int(rand(Rand_Pants)*6)];
      #declare CapCloth = ClothColorArray[int(rand(Rand_Cap)*6)];
      object{
        #include "jumpingman.pov"
        JumpingMan
          translate <max(min(Rand_Gauss(50, 30, Random1),150),-50), rand(Random1)*0.3*abs(sin(pi*clock+rand(Random2))), max(-1*abs(Rand_Gauss(0, 60 , Random2))-5,-200)>
      }
      #break
    #range(0.485,0.99)
      #declare Rand_Cap = seed(320498+Fans);
      #declare Rand_Shirt = seed(320498+Fans+1);
      #declare Rand_Pants = seed(320498+Fans+2);
      #declare ShirtCloth = ClothColorArray[int(rand(Rand_Shirt)*6)];
      #declare PantsCloth = ClothColorArray[int(rand(Rand_Pants)*6)];
      #declare CapCloth = ClothColorArray[int(rand(Rand_Cap)*6)];
      object{
        #include "standingman.pov"
        StandingMan
          translate <max(min(Rand_Gauss(50, 30, Random1),150),-50), 0, max(-1*abs(Rand_Gauss(0, 60 , Random2))-5,-200)>
      }
      #break
  #end
#end

