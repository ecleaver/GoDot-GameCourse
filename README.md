#Godot Essentials

* The image files each get a import file that has code used by godot with the images.
* the .godot folder has the media data.
* github ignores this folder.

* Looking at multiple Scenes
* A child scene would be the blueprint
* Node Lifecycle
  * _init: Initial instance created, variables, methods, etc all defined 
  * _enter_tree: Instance added into the scene tree
    *  Used to keep track of other nodes
  * _ready Instance and all the children added to the tree
    *  Used to run code on sprit
  * _exit_tree Instance about to be removed from the tree.
  * _process 
    * Called every frame
  * _physics_process
    * Used for updating collession and other things
Signals
  *  Create a list of actions for the node
  *  Invokes the functions by going through its list
  *  To Create a Signal type signal

To create unique inputs
  1. Go to Project 
  2. Select Project settings 
  3. Select input
  4. Give the action a name
  5. Click add
  6. Click +
  