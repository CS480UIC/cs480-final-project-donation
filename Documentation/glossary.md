Glossary
Entity Name: User
Synonyms : user, customer

Description: A user is any customer who can donate stuff to store or who can need stuff from the store.
User include both donator and receiver. But excludes any employee who works at store. so user_id will include donator_id and receiver_id, but except employee_id
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
