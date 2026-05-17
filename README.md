# Foundation Notes


Trees, Scenes, Nodes 
  *  Tree
    * This tree makes up what is know as a Scene 
    * The whole setup is know as the game tree
    * Get tree gets the entire tree
    * Drawn in the order they are put in the tree
    * The top Node is draw first and the bottom Node is drawn last by default
   

    
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
    * Ordering: 
      * To change the ordering on a node in godot:
        1. Click on the node
        2. Select Ordering under CanvasItem
        3. Z index is relative 
          *  If changed to -1 it will be drawn first
          *  Press enter their and it will be drawn behind everything

      * If a object is a parent a object that is a child is relative will be drawn after
      
      * Y sort
        * Y sort enabled is mostly used in farming games.
        * Y sort is enabled on the parent
    
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

* Translate fucntions
  *  The translate fuction can be used to move a object
    *  Transform function uses a vector 2
    *  item.translate(Vector2.RIGHT * value * delta)
    *  You multiply by the value you want to move it by and the delta

Victors
* A Vector stores two numbers x, y
* Each number is on a axis
  *  Y is up or down
  *  x is left or right
  *  Object 1 is at point 1
  *  Object 2 is at point 2
  *  Help to understand the position, angle, direction, and distance
    *  Gives us an understanding of the length or magnitude of the victor 
      *  In godot the Code to get this is Vector length is (pos_x, pos_y).length()
    *  The angle
      *  To get it in godot Vector2(pos_x, pos_y).angle()
  * Normalized
    *  Normalized alters the values such as length is 1
    *  Useful for use in moveing a object 
    *  To do this in godot Vector2(8, 4).normalized()
    *  To get it to move in a direction do vectorNormalized * speed * delta
  *  Direction to
    *  Direction to returns the normalized vector from one to another in godot
    *  Vector2(pos_x[0], pos_y[0]).direction_to(Vector2(pos_x[1],pos_y[1]))
    *  This gets the difference between the two victors 
    *  The direction is the difference normalized

Transform
  * Represents the position, rotation and scale in 2d space
  * Vector2 uses to values for x and y
  * transfrom.y and transform.y are Vector 2s the represents the direction in the local node
  * They repersent the rotation
  
# GDSprict Notes

What is GDScrict
  * A Scripting Language
  * We write code in script
  * It is this code that tells Godot what to do
  * Godot works like python in that it needs to be indented by one tab
  * The code put in the fucntion wouldd be know as a scope

  * The print() function is used for displaying text

Variable 
  *  Are used to store usefull infomration
  *  var
    * the keyword to create veriables in godo is var 
    * This istructs Godot to make a variable 
    * variables in godot need to start with a lowercase, uppercase, or underscore "_"
    * = is used to assigned new  values to variables
    * var's can accept numbers, strings
    * Type of var
      *  print(type_string(typeof(var_name)))
      *  You can change the type of var while the program is running by giving it a new value
      *  type safty dose not exist in gdSprict
    * Static Variables 
      *  Godot has introduce static variables 
      *  var itme : int = 10
      *  After doing this it will give a error message when you try to change it to a different type over variable
      * types of static vars
        * int
        * String
        * float
        * bool
    * Constant
      *  Decleared with const
      *  Normally you would use all uppercase
      *  You can right click in godot and select uppercase to change lowercase to uppercase.
      *  You will get a error when assigning a const.  
  *  Variable names can only be used once 

Operators
  *  To look up information in godot on the symbol:
    1.  Select the text
    2.  right click
    3.  Lookup Symbol
  * Arithmetic operators 
    * Addition Opeartor
      *  + or +=
    * Subtraction Operator 
      *  - or -=
    * Multiplication
      * '*' or *=
    * Divison 
      * / or /=
      * If you divied a int by another int the value will come back as a whole number and will not be rounded.
      * If you divied it by a float you will not lose inforamtion
    * Modulo Operator
      * % 
  * Comparison operators 
    *  will return true or false 
    * to test is equal to ==
    * to test if not equal to !=
    * to test is greater then >
    * to test is greater then and equal >=
    * to test if less then <
    * to test is less then and equal <=
    * for testing floats use  the is_equal_approx(value_1, value_2)
  * logical operators
    * and is for checking if 2 things are true
    * or is to check if either thing is true
    * can use not or !
    * and can be &&
    * or can be ||
    * not can be !
  
Control Flow
  * if statements
    *  if followed by a boolen that ends with a : 
    *  elif is to do a related if statmant
    *  else is to do some if all of the other statements fail to be true.
  * loops
    * while 
      * to make a scope :
      * put in what you want to test before the scope
      * indent the text that will be run
      * if it runs forever it will crash the program
      * to leave early you type break
      * continue goes up to the top of the loop
    *  For loop
      *  type for name in array_name :
      *  then indent and type what you want to do in scope 
      *  You can also do a range with a for loop
        *  for name in range(value_1, value_2): 
        *  then tell it what to do in scope.

Arrays/Dictionary's 
