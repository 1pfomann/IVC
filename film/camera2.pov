// In this file we define all the Cameras, their movement, positioning and timing

//Debug Camera placed centered in the rear area of the dancefloor
camera {
//    location <40+sin(clock/2*pi)*20, 2, -70+sin(clock/2*pi)*-20>
    location <50, 9, -70>
    look_at <50, 5, 0>
//    Correct aspect ratio of camera
    right x*image_width/image_height
}


//camera 1: rear area of dancefloor, right to left
//camera {
//    location <50+20*sin(clock*5), 2, -70>
//    look_at <50, 5, 0>
//    right x*image_width/image_height
//}


//camera2: DJ pult
//camera {
//    location<50, 2.5, -4>
//    look_at <50, 4, 0>
//    right x*image_width/image_height
//}


//camera3: DJ pult left to right
//camera {
//    location<45+clock*6, 2.5, -4>
//    look_at <50, 4, 0>
//    right x*image_width/image_height
//}

//camera4: Guckt hoffentlich auf das Publikum. Von rechts nach links
//camera {
//    location <30+clock*8, 1.5, -4>
//    look_at <30+clock*4, 2, -6>
//    right (x*image_width/image_height)/2
//}

//camera5: DJ's view of dancefloor
//camera {
//    location<50, 5, 0>
//    look_at <50, 2, -70>
//    right x*image_width/image_height
//}

//camera6: DJ's view of dancefloor with move
//camera {
//    location<52-clock*2, 5+clock, 0>
//    look_at <50, 2, -70>
//    right x*image_width/image_height
//}

//camera 7: rear area of dancefloor floating forward
//camera {
//    location <50, 2, -70+(clock*50)>
//    look_at <50, 5, 0>
//    right x*image_width/image_height
//}

//camera8: schräg über den dancefloor mit fokus in der Mitte des dancefloors
//camera {
//    location<45+clock*2, 5, -(6+clock*50)>
//    look_at <50, 2, -35>
//    right (x*image_width/image_height)/2
//}


//#declare lclock = clock;
//#switch(lclock)
//#case (lclock < 1)
////camera1
//camera {
//    location <50+20*sin(clock*5), 2, -70>
//    look_at <50, 5, 0>
//    right x*image_width/image_height
//}
//#case (lclock < 2)
////camera8
//camera {
//    location<45+clock*2, 5, -(6+clock*50)>
//    look_at <50, 2, -35>
//    right (x*image_width/image_height)/2
//}
//#case (lclock < 3)
////camera5
//camera {
//    location<50, 5, 0>
//    look_at <50, 2, -70>
//    right x*image_width/image_height
//}
//#case (lclock < 4)
////camera2
//camera {
//    location<50, 2.5, -4>
//    look_at <50, 4, 0>
//    right x*image_width/image_height
//}
//#case (lclock < 5)
////camera6
//camera {
//    location<52-clock*2, 5+clock, 0>
//    look_at <50, 2, -70>
//    right x*image_width/image_height
//}
//#case (lclock < 6)
////camera3
//camera {
//    location<45+clock*6, 2.5, -4>
//    look_at <50, 4, 0>
//    right x*image_width/image_height
//}
//#case (lclock < 7)
////camera4
//camera {
//    location <30+clock*8, 1.5, -4>
//    look_at <30+clock*4, 2, -6>
//    right (x*image_width/image_height)/2
//}
//#else
////camera7
//camera {
//    location <50, 2, -70+(clock*50)>
//    look_at <50, 5, 0>
//    right x*image_width/image_height
//}
//#end
//
