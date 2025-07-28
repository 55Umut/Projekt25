class Burger {
    constructor(order_id, bun, patty, cheese, vegetables, extras, sauce, option, drink, price) {
        this.order_id = order_id;
        this.bun = bun || "";
        this.patty = patty || "";
        this.cheese = cheese || "";
        this.vegetables = vegetables || "";
        this.extras = extras || "";
        this.sauce = sauce || "";
        this.option = option || "single";
        this.drink = drink || "";
        this.price = price || 0.00;
    }
}

module.exports = Burger;