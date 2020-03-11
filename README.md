# Nested Data Structures: Printing Data Lab

## Learning Goals

* Display the cells in an `Array` of `Array`s

## Introduction

In this lab, we're going to practice what we reviewed in the previous lesson -
displaying content from an `Array` of `Array`s.

We're going to give you a bit of "reference code." Reference code is code that's
a little generic. It probably doesn't solve any _real_ problem, but which is
kept intentionally ***very simple*** so that you can see how it might be adapted
to your particular need. Some people call these "reference implementations."

## Display the Cells in an `Array` of `Array`s

It's not often we say this, but this next bit of code is worth memorizing.
If you want to learn to speak any human language, it's a good idea to learn the
grammar, grow your vocabulary and talk with native speakers as much as
possible.

**But**

That takes years, and, in a pinch, you should _really know_ how to ask for
food, water, emergency services, and a bathroom. Even if you don't understand
what's happening grammatically, having a few "stock phrases" in times of need
is helpful.  The following code is a good "stock phrase."

Assuming the following AoA:

```ruby
spice_rack = [
  ["Posh", "Scary", "Sporty"],
  ["Paprika", "Fajita Mix", "Coriander"],
  ["Parsley", "Sage", "Rosemary"]
]
```

We display it like:

```ruby
spice_rack = [
  ["Posh", "Scary", "Sporty"],
  ["Paprika", "Fajita Mix", "Coriander"],
  ["Parsley", "Sage", "Rosemary"]
]

row_index = 0
while row_index < spice_rack.count do
  element_index = 0
  while element_index < spice_rack[row_index].count do
    p spice_rack[row_index][element_index]
    element_index += 1
  end
  row_index += 1
end #=> nil
```

This prints out:

```text
Posh
Scary
Sporty
Paprika
Fajita Mix
Coriander
Parsley
Sage
Rosemary
```

This "formula" can be expanded and changed. Maybe you want something more
descriptive than `row_index` or `element_index` index. Or, perhaps, you need to
adjust behavior slightly. That's fine! But if you're not sure how to start,
this is always a good start and will get you un-stuck!

## Instructions

For this lab, your task is to write the implementation for one method,
`find_even_values`. Write your code in `lib/iteration_with_loops.rb` using the
guidance in the comments there and below.

### `find_even_values`

This method is already defined but does not contain any code. It should accept
an array of arrays as a parameter. Your task is to iterate over the AoA to
access the elements of each nested array and print out every even number
present. So, given the following:

```rb
array_of_arrays = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]

find_even_values(array_of_arrays)
```

The expected output would be:

```sh
2
4
6
8
```

Use `learn` to check your solution and `learn submit` to submit it. Try to solve
this on your own first, but if you get stuck, a walkthrough is provided below.

...

...

## Solving this Lab

Our solution is going to be similar to the first example provided in this
lesson, but before we get there, let's look at solving this for a single array
of arrays using specific, concrete code. If we had the following array of arrays:

```rb
array_of_arrays = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]
```

And we only wanted to print out even values, a specific solution could be:

```rb
p array_of_arrays[0][1]
 # => 2
p array_of_arrays[1][0]
 # => 4
p array_of_arrays[1][2]
 # => 6
p array_of_arrays[2][1]
 # => 8
```

We can see which values are even, and go straight to printing only those. What
if we had this exact structure (an array of three arrays, each with three
element), but we couldn't see the values contained?

We would have to check every element using a conditional statement. [Integers][]
in Ruby have a built-in methods to tell if something is even or odd - `.even?`
and `.odd?`. We can use this to determine whether or not a value should be
printed:

[Integers]: https://ruby-doc.org/core-2.7.0/Integer.html

```rb
if array_of_arrays[0][0].even?
 p array_of_arrays[0][0]
end
if array_of_arrays[0][1].even?
 p array_of_arrays[0][1]
end
if array_of_arrays[0][2].even?
 p array_of_arrays[0][2]
end
if array_of_arrays[1][0].even?
 p array_of_arrays[1][0]
end
if array_of_arrays[1][1].even?
 p array_of_arrays[1][1]
end
# etc...
```

Now, regardless of the elements contained, we would be able to print out only
the even values.

This code still relies on the assumption that the array of arrays is structured
precisely how we expect. When writing a looping solution, the implementation for
deciding whether or not to print a value is going to be like we see above.
Loops, however, abstract away the specific indices being used.

To implement a looping solution, first, we'll start with a generic double loop:

```rb
def find_even_values(src)
  row_index = 0
  while row_index < src.count do
    element_index = 0
    while element_index < src[row_index].count do
      # inside this loop, src[row_index][element_index] will access the current element
      element_index += 1
    end
    row_index += 1
  end
end
```

We know thata the `src` parameter is an array of arrays, so we can use
`src.count` to get the length of the outer array and compare it to `row_index`
when setting up the first `while` loop. Inside this loop, we create a second
variable, `element_index`. Every time the outer loop runs, `element_index` is
set to `0`. When setting up the inner `while` loop, we use
`src[row_index].count`. This gives us the length of the current nested array
we're working with.

Inside this second `while` loop, we can access nested values with
`src[row_index][element_index]`. To output only even values, here is where we
will put a conditional statement:

```rb
def find_even_values(src)
  row_index = 0
  while row_index < src.count do
    element_index = 0
    while element_index < src[row_index].count do
      if src[row_index][element_index].even?
        p src[row_index][element_index]
      end
      element_index += 1
    end
    row_index += 1
  end
end
```

## Conclusion

Using loops with an array of arrays, we can access every value regardless of how
many nested arrays are present and how long each nested array is. We will see
all sorts of data structures, arrays of arrays of arrays, hashes of arrays,
arrays of hashes of arrays, etc... to work with each, we will need a slightly
customized loop implementation. An array of array of arrays, for instance, would
require _three_ `while` loops. Once we've worked out the particular
implementation, though, we gain a powerful tool in working with data!