var light = 5;
var medium = 7.50;
var bold = 9.75;

var amount due = prompt("What is the amount due?");
var tendered = prompt("What is the amount tendered?");
var thank_you = alert("Thank You!!");
var change = prompt("What your change is" + (amount-tendered));
if ((amount-tendered)<0) {
  alert("You still owe us some money bro")
}
else
{
  alert("You're good bro")
}
