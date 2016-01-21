// In this file we define all the Cameras, their movement, positioning and timing

//Debug Camera placed centered in the rear area of the dancefloor
//camera {
//    location <40+sin(clock/2*pi)*20, 2, -70+sin(clock/2*pi)*-20>
//    location <50, 2, -70>
//    look_at <50, 5, 0>
//    Correct aspect ratio of camera
//    right x*image_width/image_height
//}


//camera 1: rear area of dancefloor, right to left
#declare camera1=camera {
  location <50+2*sin(clock*5), 2, -70>
  look_at <50, 5, 0>
  right x*image_width/image_height
}

//camera2: DJ pult
#declare camera2=camera {
  location<50, 3.5, -2.5>
  look_at <50, 2, -1>
  right x*image_width/image_height
}

//camera3: DJ pult left to right
#declare camera3=camera {
  location<45+sin(pi*clock*0.5)*10, 2.5, -4>
  look_at <50, 4, 0>
  right x*image_width/image_height
}

//camera4: Guckt hoffentlich auf das Publikum. Von rechts nach links
#declare camera4=camera {
  location <30+sin(pi*clock*0.5)*40, 5, -4>
  look_at <70-sin(pi*clock*0.5)*40, 1, -10>
  right x*image_width/image_height
}

//camera5: DJ's view of dancefloor
#declare camera5=camera {
  location<50, 4, 2>
  look_at <50, 0, -100>
  right x*image_width/image_height
}

//camera6: DJ's view of dancefloor with move
#declare camera6=camera {
  location<49+sin(pi*clock*0.5)*2, 3, sin(pi*clock)*0.5>
  look_at <60-sin(pi*clock*0.5)*20, 0, -70>
  right x*image_width/image_height
}

//camera 7: rear area of dancefloor floating forward
#declare camera7=camera {
  location <50, 3, -70+(sin(clock*pi*0.5)*67)>
  look_at <50, 3, 0>
  right x*image_width/image_height
}

//camera8: schräg über den dancefloor mit fokus in der Mitte des dancefloors
#declare camera8=camera {
  location<5+sin(clock*pi*0.5)*90, 10, -195+sin(clock*pi*0.5)*190>
  look_at <50, 2, -sin(pi*clock*0.5)*200>
  right x*image_width/image_height
}

camera{
    camera2
}
