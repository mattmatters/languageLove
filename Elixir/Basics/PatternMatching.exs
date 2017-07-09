# Think of the = operator as the = operator in algebra, where it simply means to assert that both sides are equal
# Opposed to the imperative programming style where = means assignment

# Assignment does not exist in Elixir, instead think of the "=" operator as an operation to force the left side to match the right
variable = "Stinky Cow"

# This next statement evaluates as true, since the left matches the right
"Stinky Cow" = variable

# "Large Cow" = variable would throw an error since Elixir cannot match the left side literal to a different variable on the right


# This type of matching will also work for lists
list = [ 1, 2, 3, 4 ]

# These variables would all be forced into matching list, if I cons an element on the front both sides it will also match those too
# This could be useful to destructure a list if need be
[ a, b, c, d ] = list

# We can also ignore part of a matching with the special variable "_"
[ e, _, g, h, i ] = [ a, b, c, d, list ]

# Variables can also only be binded once per match, below works
[ a, a ] = [ 1, 1 ]

# but [ a, a ] = [ 1, 2 ] would throw an error because a was already binded in the match

# prefix ^ to a variable on the left side to force the value to remain the same

^a = 1

# ^a = 2 would throw an error because ^a was forcefully bound to 1

# tuples can also be pattern matched
{ z, g, i } = { :cow, "dick", 5 }

# lists and tuples cannot be matched
