

# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

check_grammar(string)

string will be a string of the text which the user wants checking.

The method will output a boolean, either true or false depending on whether the string starts with a capital and ends with punctuation.



## 3. Create Examples as Tests

check_grammar("hello world)
=> false

check_grammar("Hello world!)
=> true


## 4. Implement the Behaviour