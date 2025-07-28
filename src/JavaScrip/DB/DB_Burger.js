const mysql = require('mysql');

class DB_Burger {
    constructor(burger, connection) {
        this.burger = burger;
        this.connection = connection;
    }

    insert() {
        const query = `
            INSERT INTO burgers
            (order_id, bun, patty, cheese, vegetables, extras, sauce, option, drink, price)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        `;

        const values = [
            this.burger.order_id,
            this.burger.bun,
            this.burger.patty,
            this.burger.cheese,
            this.burger.vegetables,
            this.burger.extras,
            this.burger.sauce,
            this.burger.option,
            this.burger.drink,
            this.burger.price
        ];

        this.connection.query(query, values, (error, results) => {
            if (error) throw error;
            console.log('Burger inserted:', results.insertId);
        });
    }
}

// WICHTIG: Export hinzufügen!
module.exports = DB_Burger;