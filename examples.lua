--=================================== variables ===================================
--set variable named 'x' to 5
x = 5

--set variable 'y' to a string
y = "hello, world"

--set 'z' to floating point number
z = 3.14

--assign 'y' to the value in 'x'
y = x

--declaring a vraible as local
local a = 6

local str = "goodbye"


--=================================== functions ===================================

--declare a function
function someFunc(arg1,arg2)
    --do stuff
end

--showing returning data
function someFunc2()
    --do stuff
    return 5
end

--functions can also return multiple pieces of data
function someFunc3()
    --do stuff
    local a = 3.14
    b = "world"
    return 5,a,"hello",b
end

--functions can also be declared local
local function someFunc4()
    --do stuff
end

--calling functions
someFunc(x,5)

--calling a function with multiple returns
a,b,c,d = someFunc3()


--=================================== Tables ===================================

--declaring an empty table
mytable = {}

--initalizing with data
mytable2 = {1,2,3,4,5}

--mixed types in same table
mytable3 = {3,"hello",4.5,'c'}

--an empty table of tables
mytable4 = { {} }

--initalizing a table of tables with data.
mytable5 = 
    {
        {1,2,3},
        {4,5,6},
        {7,8,9} 
    }

--associative array/dictionary
mytable6 = {hello = 5, world = 6, godbye = 7}



--inserting data into a table
--method 1: using index
mytable[1] = 5

mytable[2] = "hello"

--also works for associative/dictionary tables
mytable6["return5"] = 5

--insert item at end of table. '#' is used to get the length of a table
mytable[#mytable + 1] = 8

--method2:using function 'table.insert'
--put 6 into end of table
table.insert(mytable,6)

--put 7 into slot 2 of table
table.insert(mytable,2,7)

--you can assign the return data from a function into a table
mytable7 = {someFunc3()}  --each item returnd by someFunc3 is an index in mytable7

--retrieving data

--method 1:use index
a = mytable[1]
--use 'key' for dictionary/associative table
b = mytable["return5"]

--method2: use '.' operator on associative/dictionary tables
c = mytable.return5

--removing items
--remove item at index position 2
table.remove(mytable,2)

--remove items from dictionaries by setting 'key' to nil
mytable6["hello"] = nil

--sorting array
---using quicksort
table.sort(mytable2)

--you can also provide your own sorting compare function to change what sorting sorts off of
table.sort(mytable,compFunc)

--=================================== Print to stdout ===================================

--to print to stdout
io.write("hello,world\n")

--printing conenents of a variable.
--print conents of 'x'
io.write("x is:  ",x,"\n")


--=================================== control ===================================
--operators:
-- '<' '>' '>=' '<=' '==' 'or' 'not' 'and' '~='

if x == true then
    --do something
end

--lua uses 'and' for '&&'
if y == true and x == true then
    --do something
else
    --do something
end

--lua uses 'or' for '||'
if x == true or y == true then
    --do something
end

--lua uses '~=' to mean 'not equal to'
if x ~= 5 then
    --do something
end

--lua uses 'not' for '!'
if not(x == 5) then
    --do something
end

if y == true then
    --do something
elseif z == true then
    --do something else
else
    --do something
end


--=================================== loops ===================================

--start at 1, go to 10, and increment by 1 each loop
--var=start,end,incr
for i=1,10,1 do
    --break out of loop when true
    if i > 7 then
        break
    end
end

--start at 1, go to 5 and incrment by 0.5
for i=1,5,0.5 do
    --io.write("i is: ",i,"\n")
end
--start at 5, go to 0, and decrement by 1 each time
for i=5,0,-1 do
    --io.write("i is: ",i,"\n")
end

--go through a table being used as an array getting index and elements
for index,element in ipairs(mytable2) do
    --io.write("index is: ", index," element is: ", element,"\n")
end

--go through a dictionary getting key,value pairs
for key,value in pairs(mytable6) do
    --io.write("key is: ",key," value is: ",value,"\n")
end

j=0
--repeats the code below until the condition is true.
--seems to work like a do while loop except the conditon check is backwards from those.
repeat
    io.write("hello,world!\n")
    j = j+1
until(j > 3)


--=================================== file I/O ===================================

--open a file in read mode
--also uses 'w', 'w+', 'r','a','a+'
file = io.open("filename","r+")

--create a temp file which gets deleted when program closes.
temp_file = io.tmpfile()

--set file as the default input file
io.input(file)

--read a line from file
str = io.read()

--if you didnt set io.input you could do this instead
str1 = file:read()

--read the contents of the file into a single variable.
--can then use string functions to work with the contents.
entire_file = io.read("a")

--iterate over the text file line by line
--io.lines() with no arguments reads default input
--can use a filename to read from a file.
for s in io.lines() do
    io.write("s is: ",s,"\n")
end

--close a file
file:close()

--open file for writing
file = io.open("filename","w")

--set file as the default output
io.output(file)

--since file is now default output, io.write writes to it.
io.write("write this text to file")

--to write to a file which is not default output, use:
file:write("write this text to file")


--=================================== math ===================================
--functions to do math with

--pi
p = math.pi

--sin,cosine,tan,etc.
s = math.sin(rad)
c = math.cosine(rad)
t = math.tan(t)

--convert degree to radian
r = math.rad(deg)

--convert radians to degrees
d = math.deg(radian)

--square root of x
sq = math.sqrt(x)

--raise x^y
g = math.power(x,y)

--e^x
e = math.exp(x)

--natural log of x
l = math.log(x)

--log 10 of x
o = math.log10(x)

--get min of range of numbers
--m = math.min(x,y....)

--get max of range of numbers
--n = math.max(x,y....)

--get ceiling
c = math.ceil(x)

--get floor
f = math.floor(x)

--get absolute value
a = math.abs(x)

--=================================== math ===================================
--string functions

--length of string
l = str:len()

--concat two string
str3 = str1 .. str2

--convert to all upper case
str = string.upper(str)

--convert to lower
str = string.lower(str)

--make a string by repeating str n times
str = string.rep(str,n)

--return a formatted string
--seems equivalent to sprintf
str = string.format("some text %d %s %c \n", x,y,z)

--returns the start and end index of pattern in str
s,e = string.find(str,pattern)

--return first pattern match in str
match = str:match(pattern)

--returns str with all matches of pattern replaced with replacement. 
--optionally can specific n number of max matches to make
str = str:gsub(pattern,replacement,[n])

--iterate over each match in str
for match in str:gmatch(pattern) do
    --do stuff
end
