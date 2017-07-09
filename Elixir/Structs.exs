# Elixir supports structs (structured typed maps)

# Defining a struct
defmodule Customer do
  defstruct name: "", location: "", paid: false, amtSpent: 0.00

  # We can also add struct specific behavior in the module
  def amtOwed(%Customer{ paid: true }), do: 0.00
  def amtOwed(%Customer{ paid: false, amtSpent: money }), do: money
end

# Now a struct can be called like guy = %Customer{}
# and our struct specific function can be called Customer.amtOwed guy

# We can also nest structs in other maps or structs
defmodule ShopLifter do
  defstruct customer: %Customer{}, informedPolice: false, isArrested: false

  def informPolice(%ShopLifter{ customer: %Customer{ name: name, paid: true }}) do
    IO.puts("#{name} has already paid!")
  end

  def informPolice(person = %ShopLifter{ customer: %Customer{ name: name, amtSpent: money }}) do
    IO.puts("Hey police! #{name} stole $#{money}!")
    %ShopLifter{ person | informedPolice: true }
  end

  def changeCustomer(person = %ShopLifter{}, customer = %Customer{}) do
    %ShopLifter{ person | customer: customer }
  end

  # you can use the macro put_in to change data in a nested structure
  def changeName(person = %ShopLifter{}, newName) do
    put_in(person.customer.name, newName)
  end

  # update_in will apply a function to a nested value
  def appendToName(person = %ShopLifter{}, nameAppend) do
    update_in(person.customer.name, &(nameAppend <> &1))
  end
end
