// In this file we define all the Cameras, their movement, positioning and timing

//Debug Camera placed centered in the rear area of the dancefloor
camera {
  location <50, 2, -100>
  look_at <50, 4, 0>
  //Correct aspect ratio of camera
  right x*image_width/image_height
}

