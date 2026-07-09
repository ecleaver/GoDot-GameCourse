#Godot project Rigidbodies

Features

 * Rigidbody2d Physics
 * Forces, impules
 * Vector math
 * inherted Scenes 
 * More advance UI

To Learn
  *  Re-use of UI Nodes
  *  RigidBody2d physics node
  *  Signal Based inputs
  *  Vector calculations 
  *  Scene inheritence

Old Stuff
  *  Reinforce older concepts with challenges
  * I explian  the new, and a little bit of the old 

Instructions:
 * Create a project with a project folder
 * Create the main sceneand set the background image using TextRect
 * Make a base level scene, Node, and set the background to a image using a Sprite2d 
 * Test each scene to make sure they run
 * Set to Pascal Case naming if you need it
 * Default window Size

RigidBody2d
  *  Implements full 2d physics.  It is unable to be controlled directly, instead you must apply forces to it (gravity, impulses, etc), and the physics simulation will calculate the resulting movement, rotation, react to collisions, and affect other physics bodies in its path.
  *  You apply a force or impulse and the physics engine dose the reset.  
  *  https://docs.godotengine.org/en/stable/classes/class_rigidbody2d.html

Animal Scene
  * Drag Action
  * Arrow Rotates with Drag
  * Arrow grows when draged
  * Impulse on release 

Animal Scene Challenge
  * Create a RigidBody2d Called Animal
  * It needs to be detect input and have a contact monitoring on
  * Add the png to the Sprite 2d, scale to 0.15
  * Also, we will add a Label for debugging
  * Add 3 x Audio Stream Player2d
  * Add to the levelbase and let it fall
  * Then set it to freeze
  
Animal logic
  * Wait for a Click
  * Dragging
  * then letting go

Dragging 
  * have a drag start that is a vector
  * have a start
  * Get a dragged vector
  * get a position vector 
  