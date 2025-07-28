// Nötige Scripte
const Burger = require('./models/Burger.js');
const DB_Burger = require('./DB/DB_Burger.js');
const connection = require('./DB/DB_Connect.js');



// Variablen füllen mit user input
const order_id = 1; //Platzhalter
const bun = "Whole Grain Bun";
const patty = "Chicken Filet";
const cheese = "Gouda";
const vegetables = "Lettuce,Tomatoes,Arugula";
const extras = "";
const sauce = "Ketchup,Honey Mustard";
const option = "single";
const drink = "";
const price = 7.70;


// Objekt erstellen
const burger = new Burger(
    order_id,
    bun,
    patty,
    cheese,
    vegetables,
    extras,
    sauce,
    option,
    drink,
    price
);

// Burger Lossenden
const dbBurger = new DB_Burger(burger, connection);
dbBurger.insert();