#macro Schrift (Font, Text, Position)
  text {
    ttf Font, Text, 0.5, 0
    pigment { White }
    translate Position
  }
#end

#declare FontType=  "cyrvetic.ttf";

#switch (clock)
#range (4,5.9999)
  Schrift(FontType, "presents", <-1.8, 0.5, 0>)
#range (2,5.9999)
  Schrift(FontType, "proudly", <-1.55, 1.5, 0>)
#range (0,5.9999)
  Schrift(FontType, "Group 42", <-2.05, 2.5, 0>)
#end

#switch (clock)
#range(6,8.9999)
  Schrift(FontType, "The very first", <-2.8, 2.5, 0>)
  Schrift(FontType, "electronic", <-2, 1.5, 0>)
  Schrift(FontType, "music festival", <-2.8, 0.5, 0>)
#end

#switch (clock)
#range(9,14)
  Schrift(FontType, "DEFQON.2", <-2.4, 1.5, 0>)

  #for (i, 0, lasercount, 1)
    laser (<-4.5, 0, 10>, C_RGBLaser)
  #end

  #for (i, 0, lasercount, 1)
    laser (<-3, 0, 10>, C_RGBLaser)
  #end

  #for (i, 0, lasercount, 1)
    laser (<-1.5, 0, 10>, C_RGBLaser)
  #end

  #for (i, 0, lasercount, 1)
    laser (<0, 0, 10>, C_RGBLaser)
  #end

  #for (i, 0, lasercount, 1)
    laser (<1.5, 0, 10>, C_RGBLaser)
  #end

  #for (i, 0, lasercount, 1)
    laser (<3, 0, 10>, C_RGBLaser)
  #end

    #for (i, 0, lasercount, 1)
    laser (<4.5, 0, 10>, C_RGBLaser)
  #end
#end
