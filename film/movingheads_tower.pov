#declare movingheadrand=seed(clock*5);

#macro movinghead (source)
#if (rand(movingheadrand)*10 <= 5)
  light_source {
    source
    color C_MovingHeads
    spotlight
    radius 10
    falloff 3
    tightness 50
    media_interaction on
    media_attenuation on
    fade_power 4
    fade_distance 10
    point_at <rand(movingheadrand)*100, 0, rand(movingheadrand)*-100>
  }
#end
#end

#if (ON_MovingheadTower)
movinghead(<0,2*4.4,-0.05>)
movinghead(<0,4*4.4,-0.05>)
movinghead(<0,6*4.4,-0.05>)

movinghead(<10,2*4.4,-0.05>)
movinghead(<10,4*4.4,-0.05>)
movinghead(<10,6*4.4,-0.05>)

movinghead(<90,2*4.4,-0.05>)
movinghead(<90,4*4.4,-0.05>)
movinghead(<90,6*4.4,-0.05>)

movinghead(<100,2*4.4,-0.05>)
movinghead(<100,4*4.4,-0.05>)
movinghead(<100,6*4.4,-0.05>)
#end
