# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class Musictracker
def initialize
end

def add_song(song)
end

def view_songs
  return songs
end

```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
library = Musictracker.new
library.add_song("Rolling in the deep")
library.view_songs() # => "Rolling in the deep"


# 2
library = Musictracker.new
library.add_song("Rolling in the deep")
library.add_song("Baby")
library.view_songs() # => "Rolling in the deep, Baby"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

