# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

contains_todo(string)

true 


## 3. Create Examples as Tests

contains_todo("Hello, world!)
=> false

contains_todo("This is a really long todo)
=> true

contains_todo("dadawdawsdawdaw 828793783879 todo)
=> true


## 4. Implement the Behaviour