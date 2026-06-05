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
  

