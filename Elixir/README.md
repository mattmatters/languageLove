# [Elixir](https://elixir-lang.org/)

Elixir is one of my favorite newer languages.  It is built on the Erlang VM, a virtual machine focused on concurrency, fault tolerence, and speed.  Using the vm, it has built in support for managing hundreds of processes across many machines.  Its practically begging to be scaled.  Thanks to the underlying functional programing concepts, things such as immutability will also allow to you to not worry about race conditions.  The syntax can be a bit cryptic at first, but it all makes sense with time.

Basically, this provides all the tools and constructs needed to build a awesome web application that can scale to whatever is needed. Companies such as [Discord](https://discordapp.com/) use it to power their systems.

**Keep in mind**, Elixir is not a great choice for big data processing, the data types and processing are not cut out for that type of heavy lifting.  Elixir's bread and butter are infrastructure and messaging systems.

## Installing
Use the appropriate package manager for installing Elixir, below are a couple examples
```sh
# OSX
brew install elixir

# Ubuntu
apt-get install elixir

# Arch
pacman -S elixir
```

## Running

There are a couple different ways to run a script. To compile and run from the command line
```sh
elixir hello.exs
```

Or you can use the interactive REPL iex
```sh
$ iex
iex(0)> c "hello.exs"
```

## Helpful Links
+ [Documentation](https://hexdocs.pm/elixir/master)
+ [Great Intro Book](https://www.amazon.com/Programming-Elixir-1-3-Functional-Concurrent/dp/168050200X)

