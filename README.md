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
  * Array
    *  An array is a list of values 
    *  to create a array var items : Array [type] = ["values"]
      * this is a type array
    *  It is a ordered array
    *  [] let you know this is a array
    *  to add a value to a array list.append(value)
    *  to remove an item type list.erase(value)
    *  arrays start with a index 0
    *  to get a item at a speific spot list[number]
    *  to get something in godot at random array list.pick_random()
    *  you can shuffle the array by doing list.shuffle() to get a different order of list
    *  to get how big it is list.size()
    *  Use with control flow
      * if statements
        * if value in list:
        * Then provide a scope for what it needs to do
      * for loops
        * used to iterate through the loop
        * for item in list:
          * Scope of what is to be done with item
    * Dictionaries
      * Dictionaries are stores of key values 
      * You have a key and a value 
      * var dict : Dictionary [key, value] 
        *  example var dict : Dictionary [int, string] = {}
      * to get a value you type list[key]
      * Used for getting information from databases
      * To go through all the items
        * for key in dict: 
          *  Then tell it to do what is in the scope
      * To just get the values
        * for dict in dict.value():
      * To update the value
        * dict[number] = value
      *  To remove a item
        * level_items.erase(key)
      *  you can have nested dictionaries

Methods(funcations)
  *  to get a random number in godot randi() % 6 + 1
  * func name () -> void:
    *  will give a error if we try to assign it
    *  This make a scope
    *  can pass in values
    *  Allow you to keep speific infomration in one place
  * you can tell the function what value to return
    *  Example func health() -> int:
    * you can tell the function to return a calulation and take in a value
    * Example func attack(damge: int, name: String = "unknow") ->void:
  * Arrays are past by reference
  * vars like num are past by value
  * Objects, Arrays, and Dictionary's are past by refernce
  * https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html#built-in-types

Enums and Match
  * Enum
    * enum gives const a number
    * enum numbers {ONE, TWO, THREE}
    * enum are often used for states
    * match can be used to check on a enum
      * example: 
      match race:
        Race.RACE_NAME:
         print("Race name")
        Race.RACE_NAME_1, Race.NAME_2:
         print('race found')
      _:
        print("Race not found")
Strings
  *  https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_format_string.html#
  *  https://docs.godotengine.org/en/stable/classes/class_string.html#
  *  to print a number "number: %.2f" %number
  *  for multiple values item = "number %.2f number2 %d" % [number, number2]
  


    






