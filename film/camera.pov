// In this file we define all the Cameras, their movement, positioning and timing

//Debug Camera placed centered in the rear area of the dancefloor
#declare camera0=camera {
  location <50, 2, -70>
  look_at <50, 5, 0>
  //Correct aspect ratio of camera
  right x*image_width/image_height
}


//camera 1: rear area of dancefloor, right to left
#declare camera1=camera {
  location <abs(sin(pi*clock*0.5/14))*100, 3, -100>
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
  location<45+abs(sin(pi*clock*0.5/14))*10, 2.5, -4>
  look_at <50, 4, 0>
  right x*image_width/image_height
}

//camera4: Guckt hoffentlich auf das Publikum. Von rechts nach links
#declare camera4=camera {
  location <30+abs(sin(pi*clock*0.5/14))*40, 5, -4>
  look_at <70-abs(sin(pi*clock*0.5/14))*40, 1, -10>
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
  location<49+abs(sin(pi*clock*0.5/14))*2, 3, abs(sin(pi*clock))*0.5>
  look_at <60-abs(sin(pi*clock*0.5/15))*20, 0, -70>
  right x*image_width/image_height
}

//camera 7: rear area of dancefloor floating forward
#declare camera7=camera {
  location <50, 5, -100>
  look_at <50, 5, 0>
  right x*image_width/image_height
}

//camera8: schräg über den dancefloor mit fokus in der Mitte des dancefloors
#declare camera8=camera {
  location<5+abs(sin(clock*pi*0.5/14))*90, 10, -195+abs(sin(clock*pi*0.5/14))*190>
  look_at <50, 2, -abs(sin(pi*clock*0.5/14))*200>
  right x*image_width/image_height
}

#local CameraRand=seed (clock/5);
#local CameraArray=
array[9] {
  camera0,
  camera1,
  camera2,
  camera3,
  camera4,
  camera5,
  camera6,
  camera7,
  camera8,
};

camera{
  camera7
}
