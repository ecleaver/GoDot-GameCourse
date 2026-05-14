# Notes


Trees, Scenes, Nodes 
  *  Tree
    * This tree makes up what is know as a Scene 
    * The whole setup is know as the game tree
    * Get tree gets the entire tree
    
  *  Root
     * Their can only be one root
     * Root is the Scene 
     * We tell godot which scene it should show (starting point)
     * There is always a main scene being rendered
     * This is normally the main menu
     * However we can have other scenes there as well, often they are used as data containers for tansitions
     * Do not

  *  Nodes
    * We add the nodes we need
    * We build the nodes in a Tree 
    * Nodes do something - show images, play sound etc
    * Allows for re-use
    * Create a instance of a enemy ship
    * The nodes under it are know as child nodes 
    
  *  Scene
    * We build the scene that make up our game
    * Godot renders these scenes
    * Scenes cotain nodes
    * We tell godot which scenes it should show 
    * That scene can contain other scenes
    * We can use scenes inside other scenes 
    * That scene can contain other scenes 


* Nodes
  * Play Sound
  * Collision 
  * Detection 
  * Functionality 
  * Create separate instances of nodes 
  * To give a Unique Name:
    * Right click the Node
    * Select Access as Unique Name

*  Sprit2d
  *  Has a Node2d section
  *  Sprit 2d inherits Node2d
  *  Anything that has a blue icon is a Node2d and has more features added 

Child
  * To make a node a child of another
    * Drag and drop it on another
  *  The position is always relative to the parent
  *  The transform is relative to the parent




* Resources 
  * .wav files
  * collision shapes
  * label settings
  * A data continer 
  * re-use resources where possible 

* Scripts
  * Drag and then press control to add a node to a existing script 

* AudioStreamPlayer
  *  uses a audio resource

*  View port:
  * Godot Creates a Window
  * It creates a Viewport, think of this as a window to our game world 
  * It chooses the scene to start
  * It reneders that scene into the viewport 
  * To change the size of the viewport:
      *  Clcik on the blue squre with arrows called embeding options
      *  Select Stretch to Fit
      *  Or Keep Aspect Ratio
  *  To change how the viewport looks:
      *  Go to Project
      *  Project settings 
      *  Select the general tab, if not already selected
      *  Select window
      *  Change the mode to either eihter 
      *  Canvas_items or Viewport
      *  Turn on Advance Settings 
      *  Can change asspect to expand mode, keep width, keep hight
      *  Use viewport for pixel art

*  Pixel art
  * To change it on 1 item
    *  Access texture
    *  Filter
    *  Select Nearest

*  move_local_scale
  *  setting move_local_x to false removes the gobal scaling affects 

