//#declare Camera = <50*sin(2*pi*clock*0.1), sin(2*pi*clock*0.1)*20+10, 50*cos(2*pi*clock*0.1)>;
#declare Camera = <0, 2, 2>;
//#declare LookAt = <50, 0, 50>;
#declare LookAt = <-0.5, 2, -0.5>;

// camera and light
camera {
  //location <-Camera*sin(2*pi*clock), 3, -Camera*cos(2*pi*clock)>
  location Camera
  look_at LookAt
  right x*image_width/image_height
}
