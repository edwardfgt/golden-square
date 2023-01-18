# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem
'''
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.
'''

## 2. Design the Method Signature

'''
estimate_time(string)

string will be a string of the text which is being measured
the method will the total reading time
'''


## 3. Create Examples as Tests

'''
estimate_time(100 words)
=> 1

estimate_time(300 words)
=> 2

estimate_time(650 words)
=> 3
'''


## 4. Implement the Behaviour