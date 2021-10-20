Glossary 

Entity Name: store

Synonyms: Donation store, Better Will

Description: a store that has a exact address to do some charity business by accepting customer or donator donate some items and sell these items to someone who need.

Entity Name: employee

Synonyms: worker

Description: An employee is the person who work at a donation store. Each employee has his/her own employee_id. Employee should not include customer or donator or receiver. Each employee has his/her position such as sales, accounter, manager and so on.

Entity Name: user

Synonyms: customer, donator and receiver

Description: an user is the person who want to donate items to the store or want to buy some items from store. The user should not include employee or someone who work at store. 

Entity Name: orders

Synonyms: the order, business order, donation order.

Description: An order is a business form that record some transaction information. If user want to buy some items from store, he/she will put a order to an emplyee. In each order, it has a total amount that user will spend and transaction date that order happened. Each order should has a status to show this order paid,or not paid, on processing and so on.

Entity Name: donation_cart

Synonyms: cart, donation cart

Description: a donation cart is a tool that will be used by user to make a donation. Each donation cart has a date and donation_id to mark each donation information.

Entity Name: item

Synonyms: donation item, stuff, goods

Description: a item is the stuff that donator donate to store. It will be sold at store in an order that created by receiver and managed by a sales. 

Entity Name: category 

Description: a category is a general set of similar items. For exaple: furniture should has chair, table, cabinet. Cloth should has pans, jacket,T-shirt. 

Relationship: 


-Each Store has at least one employee to work, but also each store has more thatn one employees. 

-Each employee should work at only one store. so that means an employee cannot work at different store.

-An employee can manage 0 or more orders,because some employee are not sales. An order should has only one employee to manage it. 

-Each user can put 0 order if he donot want to buy items, or he can put more orders to buy some items.

-Each order has only one user

-Each user can use 0 donation cart if he donot want to donate. Or he can use more carts to make multi-times donation.

-Each Cart has only one donator.

-Each order can has at least one item. but each item may has belong to a order if some receiver like it or the item has no order because no one like.

-Each item should belong to only one category and each category include 0 or more items because some item may not belong to one specific category.

Attributes and Attribute Types:
-Each Store has an ID (int), name (varchar), address (varchar), phone (varchar) and email (varchar).
-Each employee has first (varchar) and last name (varchar), gender(varchar) position(varchar) and store_id(int) for the store they work for.
-Each order has an order-id(int), a store-id(int), sale-date(date) and total_amount(float).
-Each Donation Item has item id(int) and card id(int).
-Each User also has a first(varchar) and last name(varchar), phone(varchar), address(varchar), email(varchar) and a password(varchar).
Cascade and Restrict
-Cascade delete donation_cart on user
-Cascade delete donation_item on order
-Cascade delete category on donation_item
-Restrict delete employee on store
-Restrict delete donation_item on donation_cart
Our database does not have any supertype of subtype usage.



