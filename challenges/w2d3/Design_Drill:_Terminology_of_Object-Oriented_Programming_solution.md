## Problem space: Library

#### Nouns:

* Books
* Magazines
* Tapes (video/cassette)
* DVDs
* CDs
* Reference books 
* Fiction books
* Nonfiction books
* Children's books
* Romance novels

#### Verbs:

* Borrow
* Renew
* Return
* Destroy

------

#### Inheritance
A child class inherits everything from a parent class. This means a child can do anything that a parent can do. A child should be a type of parent. Example: reference books are a type of book. This would be written as ```ReferenceBooks < Books```. 

------

#### Composition
A way of making classes relate to each other without using inheritance. If we want to share methods from one class with another, we first have to ask if it's a "has a" or "is a" relationship. In the case of a "has a" relationship, you can move the methods you want to share into (1) a new class or (2) a module. With the module, you can use a mixin to make all of the methods available within your class. With a new class, you initialize an instance of the shared class inside of your existing class. You have to be careful about how you do this, because you don't want there to be a huge spiderweb mess of interrelations between your classes. 

A great example of this using the library problem space is with media such as DVDs and CDs. They are not a kind of book, but they share some of the same characteristics that we may want to make available to these items, such as ISBN, publisher, title, etc. Inheritance wouldn't work here because we don't want DVDs and CDs to share every single method available to books as many of them wouldn't be applicable.

------

#### Encapsulation
Each piece of data knows about its internal structure and what methods can be enacted on it. Encapsulation is when the representation and implementation are hidden inside of an object. The representation isn't visible and can't be access directly outside of the object. You're accessing the object, not the  thing it represents. You break the encapsulation by using public methods to alter the object's representation, not just the object.

With encapsulation, the data *and* methods are both hidden. This is where private methods come in! It's also important that data and methods are both hidden because NO other objects should depend on the internal details of another object. You have to send a message to the object to find anything out about it. 

In our library example, we would want to have methods to update the status of a book as checked out, renewed, late, etc. We would not want these methods accessible to the outside world. Instead, we would create methods that would send a message to the book object and ask it "are you checked out?" 

------

#### The Law of Demeter

The end goal is to have your objects be loosely coupled. Demeter restricts which objects a method can send messages to: methods should only be able to talk to their immediate neighbors, not their neighbor's neighbor. Method chaining puts you at risk of violating the Law of Demeter because now you're relying on the result of *every* method that comes before the next. You can't predict what an object sends in response to a message because you shouldn't know enough about the object itself. Building in these assumptions will make your code break anytime something before your method's place in the chain is changed.

Sometimes method chaining is ok, but it shouldn't be done lightly.

------

#### Overriding Methods (and using super)

------

#### Modules

------

#### Private vs Public Methods

------

#### Instance vs Class methods and variables

------

#### Polymorphism

------

#### Separation of Concerns