// Required npm packages for this project
var mysql = require('mysql');
var inquirer = require('inquirer');
var Table = require('cli-table');

var connection = mysql.createConnection({
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: '',
  database: 'bamazonDB'
})

connection.connect(function(err) {
  if (err) throw err;
  //console.log('Connected as id' + connection.threadId);
  launchBamazon();
})

function printTable(res) {
  var table = new Table({
    head: ['Item ID', 'Product', 'Department', 'Price', 'Stock']
    , colWidths: [10, 25, 20, 10, 10]
  });
  for (var i = 0; i < res.length; i++) {
    table.push([res[i].itemID, res[i].productName, res[i].departmentName, res[i].price, res[i].stockQuantity]);
  }
  console.log(table.toString());
}

var launchBamazon = function() {
  connection.query('SELECT * FROM products', function(err, res) {
    printTable(res);
    var productArray = [];
    for (var i = 0; i < res.length; i++) {
      productArray.push(res[i].productName);
    }
    inquirer.prompt([{
      name: 'item',
      type: 'input',
      message: 'Enter the Item ID # of the item to purchase.',
      validate: function validateItem(item){
            if (item > 10) {
              console.log("\n\x1b[31m%s\x1b[0m", "Enter valid item ID\n");
              return;
            } else if (!item.match(/^[0-9]*$/)) {
              console.log("\n\x1b[31m%s\x1b[0m", "item ID needs to be a number\n");
              return;
            } else {
              return true;
            }
      }
    },
    {
      name: 'quantity',
      type: 'input',
      message: 'How many would you like to purchase?'
    }]).then(function(answer) {
      //console.log("answer: ", answer);
      var itemID = answer.item;
      //console.log("itemID: ", itemID);
      var itemPicked = res[itemID-1];
      //console.log("this is itemPicked: ",itemPicked);
      var newQuantity = itemPicked.stockQuantity - answer.quantity;
      if (newQuantity >= 0) {
        connection.query('UPDATE products SET ? WHERE itemID = ?', [{ stockQuantity: newQuantity }, itemID]);
        console.log("\nThank you for your order. Please continue shopping.\n");
        launchBamazon();
      } else {
        console.log("\n\x1b[1;5;35m%s\x1b[0m", "Insufficient quantity! Please review stock quantities and adjust accordingly.\n");
        launchBamazon();
      }
    })
  })
}

