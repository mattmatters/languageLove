# Datatype notes

# integers can be written in multiple ways
decimalInt = 501
binaryInt = 0b1010
hexadecimalInt = 0xcafe
octaldecimalInt = 0o765

# one can also use "_" to space out decimal numbers for readabilty
100000 = 100_000

# floats are also supported
float = 1.0

# so are exponents
floatWithExponent = 1.0101010101e-5


# atoms are also a basic datatype (yay lisp!), any atom is preceded with the ":" you can also encapsulate whatever trails with double quotes if you want to avoid bad characters
:johnWayne
:johnWayne?
:"big john wayne"

# Ranges are denoted like start..enddate

oneTwoThree = 1..3

# Regular expressions can be denoted as ~r{regexp}opts or ~/regexp/opts or basically anything for the delimiters
# as long as ~r is in front of it, ~r{regexp}opts seems to be the recomended one
# Regular expression support is provided by PCRE (Basically Perl regex stuff)
regex1 = ~r{([A-Z])\w+}g
regex2 = ~r/([A-Z])\w+/g


# pid

# references

# tuples
tuple1 = { 1, 2 }
tuple2 = { :cow, 2 }
tuple3 = { "chicken", 6, :thingy }

# tuples are commonly returned from functions to denote success or errors
someSuccessfulReturnValue = { :ok, 200 }
someFailedReturnValue = { :err, "Process Timeout" }

# lists
# comma separated lists delimited on by sides by square brackets
# go learn lisp real quick if you don't know them
# use them for traversing in order as they are basically linked lists,
# but don't use them for randomly accessing, tuples and maps are better for that
list1 = [ 1, 2, 3, 4 ]
list2 = [ :cow, "strawberry", 4 ]
list3 = [ [ list2 | list1 ], 1, 2, 3, 4 ]

# keyword lists
keywordList = [ sandwich: "tomato", burger: "fries" ]

# keyword lists are actually just tuple values
[ sandwich: "tomato", burger: "fries" ] = [ { :sandwich, "tomato" }, { :burger, "fries" } ]


# Maps
# Maps are Elixir's version of key value pairs or associative arrays
simpleMap = %{ :key => :value, :key2 => :value2 }

# unlike keywords lists, in maps there can only be one unique key
# Keys can be atoms, strings, lists, expressions, or tuples
weirdMap = %{
  [ :thing, :thing2 ] => :value,
  { :thing3, "thing4" } => :value2,
  :thing5 => :value3,
  "thing6" => :value4,
  String.downcase("FISh") => :value5
}

# atom keys can use the same syntatic sugar that keyword lists use
atomMap = %{ thing: :value, thing2: :value2 }

# you can access a map by using the map[key] notation, atom keywords can also use the . operator
atomMap[:thing] = atomMap.thing


# binaries
bytes = << 1, 2 >>


# Dates and times
date1 = ~D[ 2017-03-25 ]

# You can also pattern match the constructer to get valid dates
{ :ok, date2 } = Date.new(2017, 3, 25)

time1 = ~T[ 12:15:00 ]
time2 = ~T[ 23:59:12.52 ]
{ :ok, time3 } = Time.new(12, 15, 32)

dateTime1 = %DateTime{
  year: 2000,
  month: 2,
  day: 29,
  zone_abbr: "CET",
  hour: 23,
  minute: 0,
  second: 7,
  microsecond: {0, 0},
  utc_offset: 3600,
  std_offset: 0,
  time_zone: "Europe/Warsaw"
}
