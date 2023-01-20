# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

    As a user
    So that I can record my experiences
    I want to keep a regular diary

    As a user
    So that I can reflect on my experiences
    I want to read my past diary entries

    As a user
    So that I can reflect on my experiences in my busy day
    I want to select diary entries to read based on how much time I have and my reading speed

    As a user
    So that I can keep track of my tasks
    I want to keep a todo list along with my diary

    As a user
    So that I can keep track of my contacts
    I want to see a list of all of the mobile phone numbers in all my diary entries

## 2. Design the Class System

_Also design the interface of each class in more detail._

```ruby
class Diary
  def initialize
    # ...
  end

  def add(entry) 
  end

  def read
    # Returns all diary entry contents
  end
  
  def read_by_time(time, wpm) 
    # Returns most suitable reading chunk
  end

  def add_todo(todo)
  end

  def contacts
  #returns phone numbers scraped from diary entries
  end

  def find_best_entry(wpm, minutes)
    #return best entry to read based on given time
  end

  def extract_number(diary)
    #scrapes all numbers into an array and returns
  end
end

class DiaryEntry
  def initialize(title, contents) # title and contents are both strings
  end

  def title
    # Returns title
  end

  def title
    # Returns contents
  end

  def count_words
     # number of words in content
  end

  def reading_time(wpm)
    #number of words that can be read in x time
  end

  def reading_chunk(wpm, minutes)
    #cycles through text based on wpm and minutes
  end

class Todo_list
  def initialize
  end

  def add(task)
  end

  def read_tasks
    #outputs all todos
  end
end

class Todo
  def initialize(task)
  end

  def read_task
    #outputs task
  end
end

```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

    As a user
    So that I can record my experiences
    I want to keep a regular diary 
```ruby
diary = Diary.new
entry1 = DiaryEntry.new("January 01", "Today I went to the shops and bought 10 melons, 6 packets of ham and a can of lemonade")
entry2 = DiaryEntry.new("January 02", "Today I did nothing")
diary.add(entry1)
diary.add(entry2)

```
    
    As a user
    So that I can reflect on my experiences
    I want to read my past diary entries

```ruby
diary = Diary.new
entry1 = DiaryEntry.new("January 01", "Today I went to the shops and bought 10 melons, 6 packets of ham and a can of lemonade")
entry2 = DiaryEntry.new("January 02", "Today I did nothing")
diary.add(entry1)
diary.add(entry2)
expect(diary.read).to eq(entry1, entry2)

```
    
    As a user
    So that I can reflect on my experiences in my busy day
    I want to select diary entries to read based on how much time I have and my reading speed

```ruby

diary = Diary.new
entry1 = DiaryEntry.new("January 01", "Today I went to the shops and bought 10 melons, 6 packets of ham and a can of lemonade")
entry2 = DiaryEntry.new("January 02", "Today I did nothing")
entry3 = DiaryEntry.new("January 03", "Today I slept")
diary.add(entry1)
diary.add(entry2)
diary.add(entry3)
expect(diary.find_best_entry(2, 3))

```
    
    As a user
    So that I can keep track of my tasks
    I want to keep a todo list along with my diary

```ruby

Todolist = Todo_list.new
todo1 = Todo.new("eat dinner")
todo2 = Todo.new("drink water")
Todo_list.add(todo1)
Todo_list.add(todo2)
expect(Todo_list.read_tasks).to eq [todo1, todo2]

```
    
    As a user
    So that I can keep track of my contacts
    I want to see a list of all of the mobile phone numbers in all my diary entries
```ruby

diary = Diary.new
entry1 = DiaryEntry.new("January 01", "Today I met Bob, his number is 07488155392")
entry2 = DiaryEntry.new("January 02", "Today I called 08122987263 on my mobile")
entry3 = DiaryEntry.new("January 03", "This string doesn't have a number")
diary.add(entry1)
diary.add(entry2)
diary.add(entry3)
contacts = Contacts.new
expect(contacts.extract_number(diary)).to eq ["07488155392", "08122987263"]


```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._


## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._


