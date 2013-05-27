**Testing and error finding**

Browsing through the driver code in ```bistro_test.rb``` and the actual code in ```bistro.rb```, it's pretty clear that *nothing* is going to happen when I run these files.  
  
But, dutifully, I checked anyways.  
  
And nothing happened.  
  
Why did nothing happen? For one, ```bistro.rb``` isn't actually loading a CSV to parse, so it can't use any of the existing methods. The ```recipes``` array is empty, there's nothing to find or display, and there's not even driver code to test it. Womp.  
  
Ok, so we need to instantiate a new Bistro object. Cool. Lets do that and try using the existing ARGV implementation to load a CSV. Bet you $500000 that it won't do anything because the ```load_recipes``` method is *empty*. And... got an undefined method error?   
  
Oh wait. lolololol forever. It didn't do anything because there's a typo on line 37 - ```recepes``` instead of ```recipe```. Really? Boo. **Cleaned it up** by fixing that typo. Tried again, and as predicted, it doesn't do anything.  
  
Calling the ```list``` ARGV returns a lovely TODO note as expected, but calling ```display``` returns yet another undefined method error. This time the method we're looking for is ```find_recipe_by_id```. It exists in our Bistro class, looks like I need to type ```display``` followed by an ID to get the existing code to work. Adding that in doesn't make it work, it looks like we're missing an attr_reader method for ```id``` in addition to having some shaky code.

------

*Clearly* I am going to re-write this. I don't like the implementation of ARGV. It's shaking at best, and it currently requires you to load the file every single time you want to take an action. It would probably be easier for Bernie if we could create a menu that was interactive, allowing him to list recipes, display a recipe by its ID, or exit. If we want to get fancy, I suppose we could create an option that lets Bernie add in a new recipe through the program interface and update the recipe file. We'll see how much time I have.

------

Oooook, Tanner is a party pooper and said that I *had* to user ARGV instead of just the user menu. So me being me, I did both.

The one with the menu is cuter. 
  
