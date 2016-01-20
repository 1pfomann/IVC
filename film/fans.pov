#include "jumpingman.pov"
#include "cameraman.pov"
#include "standingman.pov"

#declare Fans=0;
#declare Random1=seed (2342);
#declare Random2=seed (1337);
#declare Random3=seed (4223);

#for (Fans, 0, 10000, 1)
  #switch (rand(Random3)-0.01)
    #range(0.01,0)
      object{
        CameraMan
          translate <max(min(Rand_Gauss(50 30, Random1),100),0), 0, max(-1*abs(Rand_Gauss(0, 60 , Random2)),-200)>
      }
    #range(0,0.485)
      object{
        JumpingMan
          translate <max(min(Rand_Gauss(50, 30, Random1),100),0), rand(Random1)*0.3*abs(sin(pi*clock+rand(Random2))), max(-1*abs(Rand_Gauss(0, 60 , Random2)),-200)>
      }
    #range(0.485,0.99)
      object{
        StandingMan
          translate <max(min(Rand_Gauss(50, 30, Random1),100),0), 0, max(-1*abs(Rand_Gauss(0, 60 , Random2)),-200)>
      }
  #end
#end
