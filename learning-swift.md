#Swift Intro Video
- [Slides](https://dl.dropboxusercontent.com/u/689710/402_introduction_to_swift.pdf)

###Constants and Vars
- Swift prefers immutability
- you can use unicode characters for var names
![](https://dl.dropboxusercontent.com/s/xpigq57e
d4vc15l/constants%20and%20vars.png "")

####Type inference
no need to specify type

###String
![](https://dl.dropboxusercontent.com/s/l6h9u4bmnvs065i/2014-06-12%20at%2011.07%20AM.png "")

- collection of characters, can use a for in loop to iterate over characters
- can combine strings and characters

####Building Complex Strings
- interpolations

![](https://dl.dropboxusercontent.com/s/l6h9u4bmnvs065i/2014-06-12%20at%2011.07%20AM.png "")

####Array and Dictionaries
![](https://dl.dropboxusercontent.com/s/l6h9u4bmnvs065i/2014-06-12%20at%2011.07%20AM.png "")
- can work with any type, don't have to be objects or clas types
- Collections are *typed* collections. Can provide a type annotation to specify only accepts strings.

![](https://dl.dropboxusercontent.com/s/x5brx6dbsbnmvzx/2014-06-12%20at%2011.12%20AM.png "")

##Loops
###Create and modify collections
####For-in loop
- characters, strings, ranges 11:51, arrays, dictionaries

####Modifying an Array
![](https://dl.dropboxusercontent.com/s/y0a9zaj5c4uda7u/2014-06-12%20at%2011.19%20AM.png "")
- Nothing is represented by `nil`

###If Statements
![](https://dl.dropboxusercontent.com/s/oomvxw2bjwtddhp/2014-06-12%20at%2011.21%20AM.png "")21%20AM.png

- optional parens
- braces required

###Switch Statements
![](https://dl.dropboxusercontent.com/s/tukdseaba38r595/2014-06-12%20at%2011.22%20AM.png "")

- must supply `default` case. either a `case` for every value or a `default`.


##Functions
![](https://dl.dropboxusercontent.com/s/tukdseaba38r595/2014-06-12%20at%2011.22%20AM.png "")

![](https://dl.dropboxusercontent.com/s/tukdseaba38r595/2014-06-12%20at%2011.22%20AM.png "")

### Returning Values
![](https://dl.dropboxusercontent.com/s/3bcip8kb59ehm5t/2014-06-12%20at%2011.27%20AM.png "")

![](https://dl.dropboxusercontent.com/s/x94ny4cihd3dm8s/2014-06-12%20at%2011.29%20AM.png "")

![](https://dl.dropboxusercontent.com/s/rgxgcgsnqvf1jlm/2014-06-12%20at%2011.30%20AM.png "")

###Tuples
- usefule when u want to pass around multiple values simply like when a function returns multiple values
- u get at those values with a constant
![](https://dl.dropboxusercontent.com/s/ec6rir45sixv3bn/2014-06-12%20at%2011.32%20AM.png "")

- for each iteration of the dict you get a tuple pair
- 
####Another wayt o get values:

![](https://dl.dropboxusercontent.com/s/jc6doqhorrs34ad/2014-06-12%20at%2011.33%20AM.png "")

##Closures
- no need to specify types

![](https://dl.dropboxusercontent.com/s/wphci095mtf85yn/2014-06-12%20at%2011.34%20AM.png "")

- functions are **named closures** in Swift

##Classes
![](https://dl.dropboxusercontent.com/s/w6uslkbx7wevmov/2014-06-12%20at%2011.52%20AM.png "")
- no header files
- no base class required, can use NSObject for ex if you want

![](https://dl.dropboxusercontent.com/s/njoiru0k6l1ezw3/2014-06-12%20at%2011.53%20AM.png "")
- would be `let` instead of `var` if you don't want to change it later on
- stored and computed properties 30:52
- computed properties, even read-only ones do need to be defined as variables

####Initializer Syntax
![](https://dl.dropboxusercontent.com/s/njoiru0k6l1ezw3/2014-06-12%20at%2011.53%20AM.png "")

No more alloc!

- won't need an initializer if you had supplied a default value

####Dot Syntax
![](https://dl.dropboxusercontent.com/s/16icjp3orhybkyi/2014-06-12%20at%2011.57%20AM.png "")


####Class initialization
- see intermediate talk

