//EXAMPLE OF SPHERE
//Example taken from: http://www.ms.uky.edu/~lee/visual05/povray/sphere.pov
//Files with predefined colors and textures
#include "colors.inc"
#include "glass.inc"
#include "golds.inc"
#include "metals.inc"
#include "stones.inc"
#include "woods.inc" 
#include "textures.inc"

//Place the camera
camera {
  sky <0,0,1>           //Don't change this
  direction <-1,0,0>    //Don't change this  
  right <-4/3,0,0>      //Don't change this
  location <20,40,28> //Camera location
  look_at <0,0,0>     //Where camera is pointing
  angle 8      //Angle of the view--increase to see more, decrease to see less
}


//Ambient light to "brighten up" darker pictures
global_settings { ambient_light White }

//Place a light--you can have more than one!
light_source {
  <10,-10,20>   //Change this if you want to put the light at a different point
  color White*2         //Multiplying by 2 doubles the brightness
}

//Set a background color
background { color White }

//Create a "floor"
box { -0.5, 0.5 scale <200,100,1> texture {White_Marble}}