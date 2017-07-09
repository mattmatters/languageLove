# Elixir has two different data structures for associative arrays

# Keyword Lists are lists of tuples where the first atom of the tuple is the keyword
#    + These are ordered
#    + Can have multiple values with the same key
#    + These are inefficient for randomly accessing keys
#    + On the flipside these are very efficient for traversing the data structure in order

defmodule KeywordExample do
  @defaults [ name: "Matt", mood: "happy" ]
  def sayGreeting(greeting, options\\@defaults) do
    options = Keyword.merge(@defaults, options)
    IO.puts "#{greeting} #{Keyword.get(options, :name)}!"
    IO.puts "#{Keyword.get(options, :name)}'s mood today is #{Keyword.get(options, :mood)}."
  end
end


# Maps are the traditional form of an associative array
#    + Not ordered
#    + Efficient for randomly accessing
#    + Each key is unique

defmodule MapExample do
  @defaults %{ name: "Matt", mood: "happy" }
  def sayGreeting(greeting, options\\@defaults) do
    options = Map.merge(@defaults, options)
    IO.puts "#{greeting} #{options.name}!"
    IO.puts "#{options.name}'s mood today is #{options.mood}."
  end

  # You can also pattern match maps (because Elixir)
  def isHappy(%{ mood: "happy" }), do: true
  def isHappy(_), do: false

  # for is a generator with a couple parts
  # for (pattern match) <- dataToFeed, condition, do: something
  def filterHappyPeople(people) do
    for person = %{ mood: mood } <- people, mood == "happy", do: person
  end

  # the for is a generator that matches patterns
  def getValues(map) do
    for key <- Map.keys(map) do
      # we cannot match keys, but we can use the pin (^) to use our already matched value earlier as a key
      %{ ^key => value } = map
      value
    end
  end

  # Updating the value of an existing key takes the form of %{ oldMap | keyToUpdate => newValue }
  # Note: This will only work with existing keys, non-existing keys will throw an error
  def changeName(person, name), do: %{ person | :name => name }
end

# Now let's move on to structs in Structs.exs
