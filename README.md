# Database 

## Running database.
1. clone this repo and extract AntonAPI.rar
2. Open the project contained in AntonAPI.rar in netbeans
3. In netbeans click 'Services' then 'Databases' use the second mouse button on 'Java DB' click 'Create Database'
4. Name your database "restaurantDB" this is important
5. Something similarlly named to "jdbc:derby://localhost:1527/restaurantDB [ on APP]" should appear.
6. Connect to jdbc:derby://localhost:1527/restaurantDB [ on APP].
7. Use the second mouse button on jdbc:derby://localhost:1527/restaurantDB [ on APP] and choose "execute command"
8. Paste in the contents of java_db_run.sql and 04_insert_values.sql 
9. To connect to the database use the baseURL http://<YOUR LOCAL IP ADDRESS NOT LOCALHOST>:8080/AntonAPI/webresources
  since Java runs on a virtual machine you can't use local host so replace <YOUR LOCAL IP ADDRESS NOT LOCALHOST> with your local ip address should be 192.168.0.... something

## Tables
* Lunch menu
* Dinner menu
* Events
* Schedule
* Personell
* Orders
* Table booking
* Table
* Drinks(maybe not?)

## API
* Webpage ska konsumera API:et
* Mobile app ska konsumera API:et
* Admin webpage ska uppdatera/modifiera API:et
* Protect admin web page against unauth access (example a customer that is on the guest wifi sharing the IP)
