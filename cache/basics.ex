# #########
# Basics
# #########

> elixir -v # Get elixir version

> iex # Interactive terminal

> mix new app # Create a new elixir app
> cd app
> mix test

x = 2 + 23
y = (34 * 4) / 3
z = 3 - 23

div(100, 4)  # division
div 100, 4   # division
rem 100, 4   # remainder

IO.puts "Hello, World"
IO.puts 1 + 3

out = fn str1 ->
    fn str2 ->
        "#{str1} #{str2}"
    end
end

IO.puts out.("Hello").("World")

x = 3 # Integer

y = "Hello" # String

z = 3.14 # Floats
v = 1.0e-10 # Floats

k = true # Booleans

j = :foo  # Atoms
p = :bar  # Atoms

j == p

:foo == :foo

# The booleans true and false are also the atoms :true and :false, respectively.

> is_atom(true)  # true
> is_boolean(:true)  #true
> :true === true # true

> "Hello" <> "World"   # String Concatenation

> name = "Sean"

> "Hello " <> name  # "Hello Sean"
> "Hello #{name}"   # "Hello Sean"

1 > 2   # false
1 != 2  # true
2 == 2  # true
2 <= 3  # true
2 == 2.0  # true
2 === 2.0  # false

# ##########
# Collections
# ##########

lst = [3.14, :pie, "apple"]

# Prepending (fast)
["π" | lst]          # ["π", 3.14, :pie, "Apple"]

# Appending (slow)
lst ++ ["Cherry"]    # [3.14, :pie, "Apple", "Cherry"]

[1, 2] ++ [3, 4, 1]   # List concatenation [1, 2, 3, 4, 1]

["foo", :bar, 42] -- [42, "bar"]    # List Subtraction ["foo", :bar]

[1, 2, 2, 3, 2, 3] -- [1, 2, 3, 2]   # List Subtraction [2, 3]

# List subtraction uses strict comparison to match the values
[2] -- [2.0]    # List Subtraction [2]
[2.0] -- [2.0]  # List Subtraction []

> hd [3.14, :pie, "Apple"]    # 3.14
> tl [3.14, :pie, "Apple"]    # [:pie, "Apple"]

[head | tail] = [3.14, :pie, "Apple"]

> head    # 3.14
> tail    # [:pie, "Apple"]

{3.14, :pie, "Apple"} # Tuple

> File.read("/var/log/access.log") # Read a non existent file
{:error, :enoent}

> File.read("/var/log/system.log") # Read a file
{:ok,
 "Oct " <> ...}

> [foo: "bar", hello: "world"]
[foo: "bar", hello: "world"]

> [{:foo, "bar"}, {:hello, "world"}]
[foo: "bar", hello: "world"]


> mp = %{:foo => "bar", "hello" => :world}   # %{:foo => "bar", "hello" => :world}
> mp[:foo]        # "bar"
> mp["hello"]     # :world
> mp["hell"]      # nil

> %{foo: "bar", hello: "world"} == %{:foo => "bar", :hello => "world"}    # true
> %{foo: "bar", hello: "world"} === %{:foo => "bar", :hello => "world"}   # true
> k = %{:foo => "bar", :hello => "world"}
> k.foo   # "bar"

> map = %{foo: "bar", hello: "world"}      # %{foo: "bar", hello: "world"}
> %{map | foo: "baz"}                      # %{foo: "baz", hello: "world"}

# To append a new key
> map = %{hello: "world"}      # %{hello: "world"}
> Map.put(map, :dd, "dd")      # %{dd: "dd", hello: "world"}

# Enum Functions
> Enum.all?([1, 2, 3, 4, 5], fn x -> x > 0 end)  # true
> Enum.all?([1, 2, 3, 4, 5], fn x -> x > 1 end)  # false
> Enum.any?([1, 2, 3, 4, 5], fn x -> x == 5 end)  # true
> Enum.any?([1, 2, 3, 4, 5], fn x -> x == 6 end)  # false
> Enum.map_every([1, 2, 3, 4, 5, 6, 7, 8], 3, fn x -> x + 1000 end)   # [1001, 2, 3, 1004, 5, 6, 1007, 8]
> Enum.each(["one", "two", "three"], fn(s) -> IO.puts(s) end)
# one
# two
# three
> Enum.map([0, 1, 2, 3], fn(x) -> x - 1 end)   # [-1, 0, 1, 2]
> Enum.min([5, 3, 0, -1]) # -1
> Enum.max([5, 3, 0, -1])  # 5
> Enum.filter([1, 2, 3, 4], fn(x) -> rem(x, 2) == 0 end)  # [2, 4]
> Enum.sort([5, 6, 1, 3, -1, 4]) # [-1, 1, 3, 4, 5, 6]
> Enum.sort([2, 3, 1], :desc)  # [3, 2, 1]
> Enum.uniq([1, 2, 3, 2, 1, 1, 1, 1, 1]) # [1, 2, 3]
> Enum.map([1,2,3], &(&1 + 3))  # [4, 5, 6]

defmodule Adding do
  def plus_three(number), do: number + 3
end

> Enum.map([1,2,3], &Adding.plus_three(&1))  # [4, 5, 6]
> Enum.map([1,2,3], &Adding.plus_three/1)    # [4, 5, 6]

defmodule Func do
    def add_1 x do
        x + 1
    end

    def add_5 x do
        x + 5
    end

    def add_7 x do
        x + 7
    end
end

IO.puts(1 |> Func.add_5 |> Func.add_7)   # 13

"Elixir rocks" |> String.upcase() |> String.split() # ["ELIXIR", "ROCKS"]
"elixir" |> String.ends_with?("ixir")    # true


tp = {:earth, 78}

tuple_size(tp) # 2
elem(tp, 1)  # 78

s = put_elem(tp, 1, 79)
elem(s, 1) # 79


# ##########
# Functions
# ##########

distance = fn(x) -> :math.sqrt(2 * 9.8 * x) end
distance.(20)

sum = fn x, y -> x + y end
sum.(1, 2)

sum2 = &(&1 + &2)
sum2.(2, 2)

mps_to_mph = fn mps -> 2.23 * mps end
mps_to_mph.(12)

pow = fn x, y -> :math.pow(x, y) end
pow.(3, 2) # 9

# ##########
# Modules
# ##########

defmodule Basics do
    # public method
    def sum(x, y) do
        x + y
    end

    # private method
    defp mult(x, y) do
        x * y
    end
end

Basics.sum(1, 2) # returns 3

defmodule Solution do
  def any?(a, b, c, d) do
    a or b or c or d
  end

  def truthy?(a, b) do
    a && b
  end
end

Solution.any?(true, false, true, false)
Solution.truthy?(true, true)
Solution.truthy?(true, false)


defmodule Example do
  def greeting(name) do
    "Hello #{name}."
  end
end

> Example.greeting "Sean"  # "Hello Sean."

defmodule Example.Greetings do
  def morning(name) do
    "Good morning #{name}."
  end

  def evening(name) do
    "Good night #{name}."
  end
end

> Example.Greetings.morning "Sean"  # "Good morning Sean."

defmodule Example do
  @greeting "Hello"

  def greeting(name) do
    "#{@greeting} #{name}"
  end
end

> Example.greeting "Sean"  # "Hello Sean"

defmodule Greeter do
    @moduledoc """
    Functions that calculate the ....

    Copyright 2022 by clivern
    """

    @vsn 0.1

    @doc """
    Print a hello message

    ## Parameters

        - name: the person name

    ## Returns
        The hello message

    ## Examples

        iex> Greeter.hello("Sean")
        "Hello, Sean"

        iex> Greeter.hello("pete")
        "Hello, pete"
    """
    @spec hello(String.t()) :: String.t()
    def hello(name) do
        "Hello, " <> name
    end
end

defmodule Greeter do
  @moduledoc false
end

defmodule Drop do
    import :math, only: [sqrt: 1]

    def fall_velocity(:earth, distance) when distance >= 0 do
        sqrt(2 * 9.8 * distance)
    end

    def fall_velocity(:moon, distance) when distance >= 0 do
        sqrt(2 * 1.6 * distance)
    end

    def fall_velocity(:mars, distance) when distance >= 0 do
        sqrt(2 * 3.71 * distance)
    end
end

> Drop.fall_velocity(:mars, 22)    # 12.776541002947551
> Drop.fall_velocity(:earth, 22)   # 20.765355763867856
> Drop.fall_velocity(:moon, 22)    # 8.390470785361213


defmodule MathDemo do
    def absolute(number) when number > 0 do
        number
    end

    def absolute(number) when number == 0 do
        0
    end

    def absolute(number) when number < 0 do
        -number
    end
end

> MathDemo.absolute(-1)  # 1
> MathDemo.absolute(1)   # 1
> MathDemo.absolute(0)   # 0

defmodule Drop do
    import :math, only: [sqrt: 1]

    def fall_velocity(_, distance) when distance >= 0 do
        sqrt(2 * 9.8 * distance)
    end
end

> Drop.fall_velocity(:ignore, 22)    # 12.776541002947551

defmodule Drop do
    import :math, only: [sqrt: 1]

    def fall_velocity({planemo, distance}) when distance >= 0 do
        fall_velocity(planemo, distance)
    end

    defp fall_velocity(:earth, distance) do
        sqrt(2 * 9.8 * distance)
    end

    defp fall_velocity(:moon, distance) do
        sqrt(2 * 1.6 * distance)
    end

    defp fall_velocity(:mars, distance) do
        sqrt(2 * 3.71 * distance)
    end
end

> Drop.fall_velocity({:mars, 22})    # 12.776541002947551
> Drop.fall_velocity({:earth, 22})   # 20.765355763867856
> Drop.fall_velocity({:moon, 22})    # 8.390470785361213


defmodule Animal do
    defstruct name: "", age: nil
end

defprotocol Talk do
    @spec talk(Animal) :: String.t()
    def talk(t)
end

defimpl Talk, for: Animal do
    def talk(t = %Animal{name: name, age: age}) do
        "#{t.name} animal has #{age} years"
    end
end

> a = %Animal{name: "Joe", age: 390}
> Talk.talk(a)    # "Joe animal has 390 years


> pid = self()
> send(pid, :test)
> flush()   # :test


defmodule Bounce do
    def report do
        receive do
            msg -> IO.puts("Received #{inspect msg}")
            report()
        end
    end
end

pid = spawn(Bounce, :report, [])

send(pid, "Hey")
