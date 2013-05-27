# Data structures
Are a way of storing and organizing data so you can use it efficiently. There are three common types:

* Primitive
* Composite
* Abstract

--------

#### Primitive
These are used as a building block for composite and abstract data structures. 

--------

#### Composite
Made up of primitive data structures. In Ruby, arrays and hashes are types of composite data structures, which provide index- and key-based storage (respectively). 

```ruby
array = [0, 1, 2, 3]
hash - {0 => "hello", 1 => "goodbye"}
```

In the example above, ```array``` and ```hash``` are composite data structures.

--------

#### Abstract
Sometimes you need to access data in a specific way that is not built into your composite data structure. When you need to do this, you create an abstract data structure to implement the pattern. Abstract data structures are defined by the operations that may be performed on them; it doesn't define *how* it is implemented or which primitive/composite types are used for implementation.

--------

# Abstract Data Structures
There are many different kinds, each of which is suited to something particular. When working with data, ask yourself these questions:

* What is the best way to store this data?
* What is the best way to access this data?

These are the four common data structures described below. There are [lots more than this][1].

* Stack
* Queue
* Linked list
* Set 

--------

### Stack
The main (or only) thing this does is either:

* **add**
 - example: ```Array#push```
* **remove**
 - example: ```Array#pop```

The relationship between the push and pop operations is a **Last In First Out** (LIFO) data structure. The last element added must be the first one removed. This means that the push and pop operations only happen at one end of the stack (the top or the bottom). 

You can also implement a **peek** operation where you see what the item is without removing it (```Array#last```).

#### Fun facts about stacks:  

* A stack is a **restricted data structure** because only a small number of operations are performed on it. 
* A stack has a **natural order**. Elements are removed in reverse order, so the last item removed has been in the stack the longest.
* **Overflow**: if a stack is considered full, you can't push anymore items into it. This puts your stack into an overflow state.
* **Underflow**: the the stack is empty!

--------

### Queue
Items in this collection are kept in order and it is considered a linear data structure. The main (or only) thing this does to the items in its collection is either:

* **add** to the rear position
 - example: ```Array#push```
* **remove** from the front position
 - example: ```Array#shift```

The relationship between these operations is a **First In First Out** (FIFO) data structure. The first element added to the data structure is the first one removed.

You can also implement a **peek** operation where you see what the first item is without removing it (```Array#first```).

#### Fun facts about queues:

* They don't (theoretically) have a specific capacity. A new element can always be added, and it can also be empty. If it's empty, you can't remove an element until a new one is added again.
* A linked list is an implementation of a FIFO queue.
* You can make a queue circular, which sounds really confusing.

--------

### Lists and linked lists
Lists can be linked or not, apparently. Lists can be static, which only allow for an examination of the items. Or lists can be mutable/dynamic, which allows you to add, remove, or replace items within the list.

In programming, lists are written in sequence, separated by commas, semicolons, or spaces, and appear within a pair of delimiters, such as parenthesis, brackets, etc. 

#### Linked lists
Specifically, a linked list is when the items represent a sequence. Each node has (a) data and (b) a reference to the next node in the sequence. This allows for removal or insertion of elements from any position in the sequence.

The main benefit of a linked list is that list elements can easily be added or removed without reorganizing or reallocating the entire structure. 

Simple linked lists on their own do not allow for random access to the data, or any form of efficient indexing. Many basic things, like finding the last node of the list, or a node that contains specific data, or locating the place where a node should be inserted, may require scanning most (or all) of the list.

--------

### Set

A set is a data structure that can store values without a particular order and without repeating values. This is a computer's version of the mathematical concept of a finite set. Sets are packaged, but unindexed.

Instead of retrieving a specific item from the set, you only test a value for membership.

**Static or frozen sets** don't change. Static sets only allow you to run queries on them, such as checking for membership in the set or enumerating the values in an arbitrary order.

**Dynamic or mutable sets** allow you to add or remove elements from the set.




[1]: http://en.wikipedia.org/wiki/List_of_data_structures