# This is a tutorial to learn the work with R. We will use the editor RStudio.

# Note: Everything behind a "#" is a commentary and will be ignored, when sent to the console. RStudio gives the comments a special color. Between the comments you will find the real code that you are sopposed to execute. By executing them, you cen see how they work and what results you get. Sometimes your task will be, to complete the code or even make up an entirely new line with the tools you learned before.

# Please execute every code line that will be presented to you. First, because you can see what happens. Second, because later commands could depend on, that this line gets executed first. Third, because at the end of this lecture, we will produce a "cheat sheet", in which we will phttps://stat.ethz.ch/pipermail/r-help/2006-June/106776.htmlrint out every command you used in thes lecture. This way you can easily remember them for later use.

#------------------ Lection 1.1: Execute Commands ------------------

# Highlight the following line with your mouse and copy it:

print("Test")

# Hint: In the menu "Edit" you will finde a command "Copy". Also you can press the buttons <ctrl> + c

# 2. Place the cursor in the console

# 3. Paste the copied text there

# Hint: select "Paste" in the "Edit" menu or press <ctrl> + v

# 4. Press <Enter>, to execute the command

# Under your input will appear the output of the command.

#------------------ Lection 1.2: Send commands to the console ------------------

# 1.  Highlight the following line:

print("dieser Befehl wurde direkt in die Console geschickt")

# 2.  Press <ctrl> + <Enter>

# The command is instantly send to the console and executed there. This is a shortcut for the whole procedure done in lection 1.1

# As an alternative you can press the button "Run" on the upper right of this text window. Or you could select in the menu "Code" the command "Run Line(s)". There you also will find some other commands like "Run Region".

# 3.  Next, place the cursor in the command line you just executed, but without highlighting anything. 

# 4.  Again press <ctrl>+<Enter>

# If you don't select anything, but place the cursor in the specific line, the entire line gets send to the console.

#------------------ Lection 1.3: Use help --------------------------------------

# You can display help using this command:

  help(print)

# You can also use the search field in the Help panel.

# The third way is to use the F1 key. If you set the cursor somewhere into the letters of a function name and press the F1 key, the help page about this function is displayd.

# 1. Try to display help to the print function with the F1 key:

  print("I know to display help")

# Use autocompletion: If you are typing a function name, variable name etc., you can use the <tab> key to display suggestions about how the name might end. This way you don't have to write long variable names. This also may help if you can't remember the exact function or variable name. 

# Place the cursor behind the last of the three letters in the next line and press <tab>:

  sav

# The autocompletion suggest several commands that begin with the word "save". Note that additionaly there is a short description of the command and you can navigate through the different commands bu pressing the up and down arrows or using the mouse. 

# If you have already written the command name and want to have additional information about the arguments, you can define, use the <tab> key inside the brackets of the function.

# Place the curser inside the () of the following line and press the <tab> key:

  sample()

# You can navigate through the different arguments of this command and display a short description about each one.
# Pressing F1 while the popup is open will open the detailed help page about this function.

#------------------ Lection 1.4: Repeat Commands ------------------

# 1.  Place the cursor in the console.

# 2.  Press the up arrow on the keyboard.

# Your last executed command appears.

# 3.  Press <Enter>, to execute the command anew.

# Alternatively in RStudio you find a window called "History". If you double click on one of the listed commands, it gets send to the console. Next press enter to execute it. There also is a button to send it to the code source (this window). 

# 4.  If you want to reexecute the last selection in the source window, you can press <shift> + <ctrl> + P 

# The difference is: If you change the code in the source window, this changed code will be executed. If you press the up arrow in the console, the exact same code as on last execution appears.

# This command you also find in the menu "Code" under "Re-Run Previous"

#------------------ Lection 1.5: Define variables ------------------

# 1.  Execute the following line, to assign the value "12" to the variable "A":

A <- 12

# 2.  Execute the following line to show whats saved in the variable "A":

A

# You may be wondering what the [1] before the actual result means. This will be explained later on.

# 3.  Exercise: Assign the value "18" to variable "B".

  # Delete this line (including the "#") and insert your command.
  # Send the code to the console and test whether it can be executed.

# 4.  If you where successful with the previous, execute the following code:

A + B

# If you have done your work right, the console will present the result "[1] 30". If not, you will get an Error that might look like this: "Error: can't find object 'B'"

# 5.  Assign the result of the calculation to variable "C":

C <- A + B

# The result of the calculation gets not displayed in the console. Instead it is saved in the variable "C".

# 6.  Try to remember how to display the value of a variable and do it with variable "C" in the following line:

  # Replace this line with your commands

#------------------ Lection 1.6: Some mathmatic calculations ------------------

# 1. Execute the following commands to learn what they do:

12 - 4 
1.15 + 2.25
10 * 5
17 / 2
56 %% 10      # modulo (residual of the devision of 10)
2 ^ 3
sqrt(225)     # square root
225 ^ (1/2)   # square root in exponential notation
125 ^ (1/3)   # 3. root

round(12.3)   # rounding
ceiling(12.3) # rounding up
floor(12.7)   # rounding down

#----------- Lection 1.7: Work with arrays -------------------------------------


# An array is an variable, that contains multiple elemens.

# 1.  Create an array with the c() command:

  D <- c(2, 4.5, 10, 298)

# Note: "c" is for "concatenate" or "combine".

# 2.  You can do the same mathmatics with arrays:

  D + 2     # adds 2 onto every element
  D * 3     # multiplys every element by 3
  sum(D)    # forms the sum of all the elements
  cumsum(D) # forms the cumulative sum of the elements
  mean(D)   # mean of all elements

  D + c(1, 2, 3, 4)   # Here every element in the second array is added to the element of "D" with the same index number (first element of on first element, second on second, ... , last on last)
  D * c(1, 2)         # If the number of elements of the two arrays don't match, R cycles through the smaller array, until the end of the larger is reached.
  D * c(1, 2, 3)      # If the number of elements of the shorter array is not a multiple of the shorter one, R will show a warning message.

# 3.  Which array do you have to add to D, so that the resulting array has 200 in every element?

  # Replace this line with your commands

# If you can't succeed this might help you:

  Test <- 200 - D
  D + Test
  Test

# 4.  round all elements of D:
#     (Hint: Use functions from the last sublecture)

  # Replace this line with your commands

# 5.  Calculate the deviation from the mean for every element of D
#     (Hint: Substract mean from every element)

  # Replace this line with your commands

#----------- Lekcion 1.8: Access single element in an array --------------------

# 1.  If you want to display the third element of D you can do it with this:

  D[3]

# 2.  You also can display select elements at once:

  D[c(1,2)]
  D[2:4]
  D[-1]         # all elements but the first (in this case this equals D[2:4])
  D[c(1,1,1,1)]
  D[c(2,2:4)]
  tail(D, 1)    # last element
  head(D, 1)    # first element
  tail(D, 2)    # last two elements
  tail(D, -1)   # the tail of D without the first element
  head(D, -2)   # head of D without the last two elements

# 3.  You could rebuild the command "cumsum()" of lection 1.7 with the following:

  c( D[1], sum( D[1:2] ), sum( D[1:3] ), sum( D[1:4] ) )

# 4.  Rebuild the command "sum()" with using the "+" operator: 

  # Replace this line with your commands

# 5.  If you want to determine the length of an array you can do it with:

  length(D)

# You can use this to display the last element of D:

  D[length(D)]

# 6.  Use the same method to acess the last-1 element of the array:
# (Know that you can do all arithmetic you want inside the square brackets)

  # Replace this line with your commands

#----------- Lection 1.9: Other ways to create arrays --------------------------

# 1.  Create arrays with ":"

  G <- 1:4
  G

# 2.  With "seq()":

  H <- seq(from=0, to=5, by=0.2)
  H

  I <- seq(from=0.5, to=10, length.out=20)
  I

# 3.  Repetition: Determine the length of H

  # Replace this line with your commands

# 4.  How do you produce the same array as H with the method used to produce I?

  # Replace this line with your commands

# 5.  Create arrays with "rep()":

  rep(1,5)        # repeats the number 1 five times
  rep("test", 7)  # repeats the string "test" seven times

