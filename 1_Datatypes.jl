#Scalar types
#These are values of unicode symbols. 
#We have letters e.g σ = sigma θ = theta
#Mathematical equations e.g λ = lambda π = pi

#For whole number we use Int64 e.g 8, 10, 1 e.t.c
#For decimal numerals we have Float64 e.g 0.5, 2.1, 3.9
#For a single letter we have Char e.g 'a', 'b'
#For words we have the String e.g "Jackson", "Pet", "Walking"
#For true or false we have Bool e.g either true or false

#String operation
#splitting strings
s = "Happy Easter"
split(s)
#Joining strings
s1 = "Happy "
s2 = "Easter"
join([s1,s2], "")
#replacing strings
s = "I has gone to the market to buy milk"
replace(s, "has" => "have") #We start with what we are searching for and end with what we are replacing

#Arrays
#they are N-dimension mutable Characters
fruits = ["mangoes","oranges","plums"]
typeof(fruits)
#An array containing 2 ID arrays
d = [[1,2,3],[4,5,6]]
typeof(d)
#An array containing 1 2D array
e = [[1,2,3] [4,5,6]]
typeof(e)
#Array of type any
f = [["a","b","c"] [1,2,3]]
typeof(f)
#Vectors()
#Row Vectors
a = [1 2 3]
typeof(a)
#Column Vectors
b = [1 ;2; 3]
typeof(b)
#Empty array
d = []
push!(d, 1)
push!(d, 2) #Push adds data to the array. A function with ! means that it is mutable
typeof(d)
#Removing objects from the end
A = [1,2,3,4,5]
#pop!(A)
popfirst!(A)
println(A)

#Tuples
#They are immutable meaning they can change
a = (1,2,3)
typeof(a)
#Packing into multiple variables
s1, s2 = ("Hello","World")
println(s1)
#Named Tuples
courses = (technology="Computer Science", finance="Banking",social="Catering",cosmetics="Barber")
typeof(courses)
println(courses.finance)
keys(courses)
values(courses)
#Pairing
c1 = ("DCIT","Banking","Accounting","Human Resource","Catering")
c2 = ("ICT","Supply chain","Social Work","Computer Science", "Statistics")
c3 = ("Data Analysis", "Web Development", "Android Development")
c4 = ("AI", "Procurement", "Engineering","Civil Engineering")
#create the named tupple
courses = (cat1=c1, cat2=c2, cat3=c3, cat4=c4)
#Iterate and pair
for (k,v) in pairs(courses)
    println(courses.cat1)
end

#Dictionaries
mydict = Dict('a'=>1, 'b'=>2, 'c'=>3)
typeof(mydict)
#looking for a value
mydict['a']

#Sets
#collections of unordered, unique values.
a = Set()
typeof(a)
#with values
b = Set([1,2,2,3,4])
typeof(b)
#operations
set1 = Set([1,2,3,4,5])
set2 = Set([0,8,9,6])
#intersect
println(intersect(set1,set2))
println(union(set1,set2))
println(setdiff(set1,set2))