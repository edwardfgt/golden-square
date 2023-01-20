# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

    As a user
    So that I can keep track of my tasks
    I want a program that I can add todo tasks to and see a list of them.

    As a user
    So that I can focus on tasks to complete
    I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class Todo
  def initialize
    @todos = []
  end

  def add_todo(string)
  end

  def del_todo(id)
  end

  def display_todo
    puts string
  end

end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
todo = Todo.new
todo.add_todo("Drink water")
todo.display_todo() # => "1: Drink water"


# 2
todo = Todo.new
todo.add_todo("Drink water")
todo.del_todo(1)
todo.display_todo() # => "There are no todos in your list"

# 3
todo = Todo.new
todo.add_todo("Drink water")
todo.add_todo("Wash the dishes")
todo.display_todo() # => "1: Drink water 2: Wash the dishes"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

