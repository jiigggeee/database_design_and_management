create trigger purchaseUpdateInventory
after insert on customer_purchases
for each row
	update inventory
    set number_in_stock = number_in_stock - 1
    where inventory_id = NEW.inventory_id;
    
    insert into customer_purchases values
    (13, 16, 3, NULL), 
    (14, 15, 4, NULL);
    
    
