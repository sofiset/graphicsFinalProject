#include "colors.inc"
 
 //Place a light
  light_source {
    100
    color White
  }

  //Place the Camera
camera {
  location <5,6,-7>  //Camera Location
  look_at  <0,0,0>    //where the camera is pointing
	translate -.8
}




  // creating the spheres  
  //Use "phong" to make the hard and smooth surfaces of the object
  //"filter" is for giving transparency to the objects
  // "interior" to create the glass effect
sphere {<-1,1,-4>, 1 texture{pigment{color Red} finish {phong 0 }}}
sphere {<1,1,-4>, 1 texture{pigment{color Red} finish {phong .33  }}} 

sphere {<1,1,-2>, 1 texture{pigment{color Red} finish {phong .7  }}}
sphere {<3,1,-2>, 1 texture{pigment{color Red filter .66} finish {phong .8  }} interior {ior 2.5}}   

sphere {<-1,1,-1>, 1 texture{pigment{color Green } finish {phong 0  }}}
sphere {<2,1,1>, 1 texture{pigment{color Green transmit .33} finish {phong .8  }}interior {ior 2.5}}
                                                         

plane { <0,1,0> // normal vector
      , 0 // distance from origin
  pigment {
    checker color White, color Black   //create the "chessboard" plane
    
  }
}