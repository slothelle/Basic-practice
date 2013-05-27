var userChoice = prompt("Do you choose rock, paper or scissors?");
var computerChoice = Math.random();
if (computerChoice <0.34){
    computerChoice = "rock";
}
else if(computerChoice <=0.67){
  computerChoice = "paper";
}
else{
	computerChoice = "scissors";
}

var compare = function(choice1,choice2) {

if (choice1 === choice2) {
	console.log("The result is a tie!");
}

if (choice1 === "rock") {
	if (choice2 === "scissors"){
		console.log("rock wins");	
	}
else {
	console.log("paper wins");
}}

if (choice1 === "paper") {
	if (choice2 === "rock") {
		console.log("paper wins");}
else {
	console.log("scissors wins");
}}

if (choice1 === "scissors") {
	if (choice2 === "rock") {
		console.log("rock wins");
	}
else {
	console.log("scissors wins");
}}};
