Glossary
Entity Name: User
Synonyms : user, customer
Description: A user is any customer who can donate stuff to store or who can need stuff from the store.
User include both donator and receiver. But excludes any employee who works at store. so user_id will include donator_id and receiver_id, but except employee_id

Entity Name: Donation Cart
Synonyms : Cart, donation cart
Description: a donation cart is a tool container in which user make a donation. Donation activity was marked on specific date and time. 
Relationship : User_use_DonationCart
Description: one user can use no doncation cart without donation or user can use one or more donation carts to make donations. So donation with DonationCart is optional.

Entity Name: Category
Synonyms: DonationCategory
Description: category includes many different category that donation stuff belong to. Each specific category has its own unique id named category_id. For example: categories may include furniture, cloth, shoe, electronic and so on. Categoryid “001” means cloth, “002” means furniture.

Entity Name: Item
Synonyms: stuff, donation stuff, donation item
Description: a item means any single thing that donator or user donate to store with donationcart. Each item has unique id name “item_id”. In table item, we can find each item danationCart id that means who and when this item donate. Also we can check the item whether was ordered by order_id. Each item has a name or its own description.

Relationship Name: Category_include_item
Description: each category include many items. For example, furniture include chair, desk, bed. Cloth include pans, jacket, underwear. Each category may include zero item or many items. One item only belong to one category.
<h2> ER diagram Documentation:</h2>

<h3>Relationships and Minima/Maxima:</h3>
-Each Store has a donation cart 1:n </br>
-Each Store has a donation item 1:1 </br>
-Each Item belongs to a category n:1 </br>
-Each Charity has one store 1:1 </br>
-Each Charity has many orders n:n </br>
-Each Charity can have many Frequent Donors under Users 1:n </br>
-Each Charity can have multiple orders n:n </br>
-Each Store can have multiple employees n:n </br>
-Each Employee can have multiple orders n:n </br>

<h3>Attributes:</h3>
-Each Store has an ID, name, address, phone and email.</br>
-Each employee has first and last name, gender position and store_id for the store they work for.</br>
-Each order has an order-id, a store-id, sale-date and unit price.</br>
-Each Donation Item has item id and card id.</br>
-Each User also has a first and last name, phone, address, email and a password.</br>
