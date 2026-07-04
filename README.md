#Godot project Flight Game

Things to learn with the project:  
  * Autoloads
  * Signal Bus Pattern (normally call a event hub, or event bus)
  * Switching scenes
  * Transitions 
  * UI and Canvas 
  * Data Presistence to file
  * Parallax 
  * Physics Nodes

Project features
* Make basic game scene
* Create firebird scene
* Code them movement
* Build th objects
* Setup the scrolling logic
* Setu collsions
* Setup death 
* Create the menu 
  * Add navigation to the menu
* Add a game over screen
* Add the option for scoring with a high score saving
* Add Paralax backgrounds 
* Add Scene Transitions 

Firebird Scene
* Falls with gravity 
* Press a key to fly
* Collides with objects
* Add animation

Physics notes:
* Gravity 
* Collisiions
* Movement
* Forxe Impulses
* Godot comes with a physics server built in
* Godot offers 4 different 2d physics nodes:
  * StaticBody2d - Physics body for 2d physics which is stattic or moves only by script.  Useful for floor and walls
  * CharacterBody2d - Specialized 2d physics body node for characters moved by script 
  * AnimatableBody2d - Physics body for 2d physics which moves only by script or animation.  Useful for moving platforms or doors.
  * RigidBody2d Physics Body shich is moved by 2d physics simulation.  Useful for Objects that have gravity and can be pushed by other objects.
* To get the default gravity ProjectSettings.get("physics/2d/default_gravity")

Notes on Physics 2d
  * Interact with other Physics2d nodes (objects)
  * We do not control the position, the physics engine dose this for us
  * We supply the engine with a velocity/force
  * The physics engine calculates where we go and what our speed/position is
  * With the Physics node - It has a collison shpae that is used to interact with other collisions shapes
  * Used when you want aa physics interaction

CharacterBody2d
  * https://docs.godotengine.org/en/stable/classes/class_characterbody2d.html
  * Velocity
    * A vector2 x and y
    * Dose this by responding to move and slid
  * Move and slid
    * move_and_slide()
    * https://docs.godotengine.org/en/stable/tutorials/physics/physics_introduction.html#move-and-slide
    * only gravity/acceleration needs to scaled by delta
    * speed only needs to be added to velocity

Note on Area 2d
  *  Not a physics node - It has a collison shape that detects when other collision shapes are overlaped
  *  No physics calculation or compluation
  *  Takes less processing power on the computer.

StaticBody 2d
  * Physics body for 2d physics which is static or moves only by script.  Usful for floors and walls 

Menu/UI notes
  * Presenting Nodes 
    * Display Something
    * TexutreRect
    * Label 
  * Containers
    * Control the layout of the children
    * Margin Container 
    * HBox Container
  * Let the UI control things
  * Like programing web pages



Canvas Items 
  * Canvas items are drawn onto a 2d canvas(surface)
  * They are draw in a screenspace or world space

  * Node2d
    * World space the whole world beyound the camera
    * Camera moves around
  * Control Nodes
    * Screen space - the view port
    * Anchoring and position

  Singleton pattern
    *  A singleton is a single instance of a class and you can only have one of those instances 

  No Circular Reference
    *  When main is preloaded the main.gd contains n refereneces to the game.gd
    *  When game is preloaded the game.gd contains no references to main.gd
  
 
  This approch becomes a problem in bigger applications. 
    * Signal/event or Hub/BUS design pattern resolves the issue
    * Break it between subscribers and emitors
    
  GameOver
    * When the plane dies we show the GaveOverLabel
      *  Use show
      *  visible, hide()
    * After some time hde the game over label and show the Press Space Label 
    * Allow the power action to return to the main menu Only once the PressSpaceLable is visible
    * Play the game over sound!(sound.play)

  Scoring!
    *  The GameUi will keep track ofthe score
    *  A a var _points to the gameUI
    *  Each time we exit, score a point
    *  Hint on_point_scored should be added to the Signal Hub