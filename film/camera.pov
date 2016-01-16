// In this file we define all the Cameras, their movement, positioning and timing

//Debug Camera placed centered in the rear area of the dancefloor
camera {
  //location <40+sin(clock/2*pi)*20, 2, -70+sin(clock/2*pi)*-20>
  location <50, 2, -100>
  look_at <50, 50, 0>
  //Correct aspect ratio of camera
  right x*image_width/image_height
}

