//Next
//make 2 expressions for face depending on action
//add craters to moon

//Questions

//how to accomplish following?

//user paints line with mouse press
  //upon mouse release, painted line moves toward moon like magnetic attraction (vector... position that changes over time)
      //use perlin noise to make this mvmt^ look organic & magnetic
  //once painted line reaches moon: 
      //trigger jiggle of moon - maybe w gaussian mvmt
      //moons facial expression changes
      
//Notes     (reference vimeo NOC video 1.2)
      //location = new PVector(mouseX, mouseY); //name is location, data type is PVector, 2D arguement 
      //velocity = new PVector(enter xspeed, enter yspeed);
     
      //under class variables i'll have PVector location; and PVector velocity; for location and speed direction
          //will i be making the users painting into a class?
          
      //under move() function, location.add(velocity);
  
