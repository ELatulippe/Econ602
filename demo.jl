#=
 Tutorial 2 
=#
# Start repl Julia to open a command line in Julia 

my_integer = 5
my_float = .5
## To run section of the code in VSCode
my_range = 1:7
my_vector = [1,3,5]
my_string = "hello"
my_character = 'o'
my_boolean = true

typeof(my_integer)
typeof(my_float)

# Alt + enter to run the code line by line

# \alpha
α = 5; 

@show α + my_integer

print("α = $α \n", "My string is: $(my_string)")

## Array can contain any type of element
A = [1, 2, 3]
A = [1 2 3]
ones(3)
zeros(3)
C = [1 3; 5 9]

A = 1:9
B = 1:0.5:9 

# Julia starts indexing at 1 
B[3]

typeof(C)
size(C)
length(C)
ndims(C)

C[end]
C[1,2]

@show C 
@show C[1,2]
@show C[2, :]

#=
Create a new environment
] to active the package manager in the command line
active .
activate test_env 

add LinearAlgebra to add packages
status to see what packages are installed

using LinearAlgebra to use the package

backspace to go back to the Julia Command Line
=#

using LinearAlgebra
C*I 
C 


sin.([1,2,3])
inv(C)*C 
C\C # to inverse a matrix

using Random 
rand(1)
randn(3)

Random.seed!(1234)

# If Else statements
a = 3
if a == 3
    print("a is 3")
end 

c = true 
if c 
    print("True")
end 

# Condition ? If true : Else
c ? print("c is true") : nothing

if c 
    print("c is true")
else 
    print("c is not true")
end 

# Logical operators
b = true
if c | b # or, a & b and, && check if the first term is true then goes to the second term 
    print("a or b are true")
end 

# For loops 
vals = ["a", "b", "c"]
for val in vals
    println(val)
end 

e = 3
for val in vals 
    e = e + 1
end 

for i in eachindex(vals)
    println(vals[i])
end 

for (index, value) in enumerate(vals)
    print("Element $index of vals is $value\n")
end 

# Functions 

function cobbdouglas(l, k, α, β = 1-α; A = 1) # To have default value A = 1
    y = A*l^α*k^β
    return y 
end 

cobbdouglas(1, 3, 0.5)
cobbdouglas(1, 3, 0.5, 0.6)

# To store the returned output of the function
@show output = cobbdouglas(1, 3, 0.5)

# To evaluate the function at the two points
cobbdouglas.([1,2], 3, 0.5)

cobbdouglasshort(l,k,α) = l^α*k^(1-α)
cobbdouglasshort(1,3,0.5)