// Unfinished 
// Early attempt at choose your own adventure JS game

// SET UP
confirm("I am ready to play. I think!");
var age = prompt("How old are you?");
if (age < 13){
  confirm("Do you have parental consent?");
} else {
	confirm("Party on, friend.");
}
// GENDER
var gender = prompt("Are you a boy or a girl?");
if(gender === "girl"){
	gender = "girl";
} else {
	gender = "boy";
	}
// NAME	
var name = prompt("What is your name?");
//STORY
console.log("Once upon a time there was a little" +
	" " + gender + " who was called" + " " + name + 
	".");
// ADVENTURE1
console.log(name + " was a brave knight, traveling" +
	" the land far and wide in search of the most" +
	" delicious cheese. The little knight was not" +
	" to be disuaded by the challenges ahead.");

var cheeze = prompt("What is your favorite cheese?");
var beasT = prompt("What creature are you most scared of?");
console.log(name + "'s favorite type of cheese" +
	" was " + cheeze + ", which was guarded" +
	" by the most vicious beast in the land." +
	" Smurffengurgle, the terrifying " + beasT +
	" haunted the nightmares of soldiers across" +
	" the land. Little " + name + " had to make" +
	" a choice: kill the " + beasT + " or spare" +
	" its life. Either way, the " + gender + " would" +
	" get the " + cheeze + ".");	
var choice1 = prompt ("Will you kill or spare the beast?");
