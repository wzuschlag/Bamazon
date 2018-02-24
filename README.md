# Bamazon
### BC Homework #12 using DB's 
##### Creating an Amazon-like storefront with the MySQL skills learned this week. The app will take in orders from customers and deplete stock from the store's inventory. 
###### To begin running this app you will need to istall the following npm's
* mysql
* inquirer
* cli-table
* prompt (optional)
* request (optional)

###### launch program at command prompt > node bamazonCustomer.js

Using mysql workbench and file bamazon.sql to create the initial invetory list for a hardware store. 

![initial inventory](/screenshots/initInventory.png)

following screen shows the kick off of the bamazon app from a command prompt window.  
To launch the app just type the following at the prompt.

> node bamazonCustomer.js

Notice that the data in the table matches that of the bamazon database in previous screenshot.
![opening screen](/screenshots/openingScreen.png)

This screen shows the first order being processed. 
App requests the customer to enter an item ID # and quantity for purchase.
Once inputs are made the app rebuilds the DB reducing the stock inventory.

This example illustrates item 6 (turkey frier) selling 3 units and the stock quantitiy reduced by 3 (20 to 17). 
![first order](/screenshots/firstOrder.png)

This screen shot shows that inventory is lacking to purchase 3 of item 5 (Bathtubs) and a warning message appears
to assist the customer at making a new choice.
![inventory low](/screenshots/inventoryLow.png)

Final screen shows app can handle invalid user inputs.  invalid item ID # or entering non-numeric chars.
Also shows that 5 shovels were purchased and stock inventory was adjusted. 
![invalid entry ie. wrong itemID or letters](/screenshots/invalidEntries.png)

Thank you  

