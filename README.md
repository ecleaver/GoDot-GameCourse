#Godot project Item-Dropper


Game logic
  *  Items will fall down the screen
  *  A score will be displayed to the left
  *  Its game over when a item pass's the bottom of the screen.
  *  A character will move back and forth 
  *  Everytime a object is caught a point is scored.
  *  The game scene is th main entry point
  *  A character scene
  *  A die scene
  *  Randomly spwaned in.
  *  Objects spin clockwise of conter clockwise

Notes:
  *  To remove a resrouce type queue_free()
  *  Which option to use
    * preload()
      *  At compile time.  When a scene is first loaded, Godot comiles the script, loads any preloads, and compiles their scripts as well
      * used a const
      *  Preload loads all upfront, so no potential sutters in the game
      *  But it could cause longer loading times.
    * load()
      * At run time.  When a scene is first loaded, godot compiles the script, but only loads resources when they are first needed in that scne.  
      *  use a var
      *  tells we will wait until we use the resource 
  
