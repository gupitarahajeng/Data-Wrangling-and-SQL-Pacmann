# Data-Wrangling-and-SQL-Pacmann

Olist is an E-commerce company data stored in a relational database. 
From this database, we can either analyze the product or analyze sales trends which we also need to provide visualization. 
Note: In this project, SQL is used to access data from the database and Phyton is used for data processing and visualization.


### Objective
The objective I try to find from this dataset is as follows:
1. List of product categories based on popularity.
2. Sales growth from 2016-2018 based on top 10 highest product categories sales.
3. Customer’s origin that provides revenue to the company based on the number and total value order.
4. Customer’s Payment Preference.

Before analyzing, I did data checking such as missing value identification, outlier, duplicate data, and so on.
Some data manipulation I did for this dataset also included grouping, pivoting, and parsing dates.
I used SQL to create tables that I will use to answer the objectives that I want to answer and Google Collab to clean, manipulate, and visualize.


### Database Description
The database consists of 9 tables and in the table below I noted some of the tables that I eventually used 
to create the CSV file for the base of my analysis which will answer the objective I want to find.

![table](https://github.com/Tyrrrz/DiscordChatExporter/assets/138182400/0e8f6bd1-e3cb-4fef-b00b-18a7e96cfc81)


### Data Analysis and Process
1. What are the 10 most popular category products based on how many items were sold in those categories throughout 2016-2018?

Based on file Objective_1.ipynb you can see all the processes of data cleaning until visualization.
First, I open the CSV data and start working from there.
I checked all the missing values and tried to fill in all the NaN with the mode function.
Followed by removing the duplicate as I found that there are lots of doubling order_id.
I found that there are no inconsistent formats in the data.
I then pivot and visualize the data, and the visualization you can see below.

![image](https://github.com/gupitarahajeng/Data-Wrangling-and-SQL-Pacmann/assets/138182400/36f7b14f-184c-471c-8754-90e17e70de2d)

From the picture above, the most popular product category is bed_bath_table which sells luxury bedding, home apparel, bathroom, and outdoor lifestyle products.
Then in second place with health_beauty which includes cosmetics, skincare, and health supplements.
Followed by several types of hobby product categories such as sports_leisure, computers_accessories, and auto.
Several other categories are also in the 10 highest sales rankings, such as furniture_decor, housewares, watches_gift, etc.
From the pattern of the popularity of product category sales, 
we can say that customers are more interested in shopping for household goods, beauty & health, and hobbies. 
In conclusion, the focus of the e-commerce product categories is better towards those categories.

2.	How are product category sales growth in terms of number of orders throughout 2016-2018?

On file, Objective 2.ipynb includes all the processes of data cleaning, and manipulation until visualization. 
After I opened the CSV data, I started to check all the missing values and tried to fill in all the NaN with the mode function. 
I also removed the double order_id input. 
There are no inconsistent formats in the data. 
I found that on this data there are several kinds of orders such as delivered, shipped, canceled, invoiced, processing, unavailable, and approved. 
Based on those findings I tried to exclude all of the order_status except delivered
because I believe that the other status doesn’t represent the number of sales that I want to portray here. 
After changing the order_delivered_customer_date data type to dataframe I managed to extract the year and month from those data.
Followed by pivoting the year, month data, and total order data. 
While I pivoted the data, I also managed to remove sales data from (2018, 9) and (2018, 10) as it is representative enough to be included in this narrative. 
Lastly, I visualize the data, and the visualization you can see below.

![image](https://github.com/gupitarahajeng/Data-Wrangling-and-SQL-Pacmann/assets/138182400/19c8dbf8-d172-4d85-b58c-b4b6a61596e6)

From the picture above, health_beauty has the best sales growth compared to the other 9 product categories. 
Followed by houseware and auto which also had good growth because the sales value of products in these categories 
always increased even though when compared, these two products were not the product categories with the biggest sales. 
The product category that contributed the most product sales, namely the bed_bath table, 
has experienced a decline in sales since early 2018 even though its value is fluctuating. 
The sales of the other seven product categories, apart from health_beauty, houseware, and auto, waver quite a bit, 
but it can be said that the sales have decreased compared to the previous months. 
Sales of the toys product category experienced the most significant decline in sales. 
Based on this data, further evaluation can be carried out regarding the reasons for the decline in sales in several product categories 
so that the number of orders in the following months can further increase.

3.	Which customer’s origin provides more revenue to the company based on number and total value order?

File Objective 3.ipynb includes all the processes of analyzing this objective. 
After I opened the CSV data, I started to check all the missing values and removed the double order_id input. 
There are no findings of inconsistent formats in the data. 
Based on order_status I, dropped all of the values except delivered for the same reason I mentioned from the 2nd objective. 
I then counted the number of orders, and sum all of the prices that the customers had to pay. 
Using those data, I calculate the revenue and average spending per customer per state. 
I ended up with a table that consists of customer_state, number_of_order, revenue, and average_order value. 
Followed by pivoting and visualizing the data with the results below. 
From the pivot table, I concluded that the higher the revenue, the higher the number of orders will be. 
But, this does not mean that the average order value per customer per state is also the highest. 
Hence I created two visualizations based on these findings.

![image](https://github.com/gupitarahajeng/Data-Wrangling-and-SQL-Pacmann/assets/138182400/5b26ee0f-3e1a-41bb-a268-6cd954c5e2b3)

The top three biggest revenue contributors based on revenue value and number of orders are SP, RJ, and MG 
or you could say São Paulo, Rio de Janeiro, and Minas Gerais. 
The three of them accounted for a total of over 10,000 orders each and revenue of $187,210,719,152, $19,760,856,966, and $16,200,057,169, respectively.

![image](https://github.com/gupitarahajeng/Data-Wrangling-and-SQL-Pacmann/assets/138182400/61860f3d-4be9-4ece-b1ba-aed2a28dd5f3)

Meanwhile, the top three biggest revenue contributors based on the highest average order value per customer are Paraíba, Alabama, and Acre. 
The three of them accounted for a total of over $ 180/order/customer. 
Meanwhile, São Paulo ranked as the lowest average order value in all the states at only $ 114.13.

4.	What kind of payment method is most used by customers to place orders?

From Objective 4.ipynb I opened the CSV data, checked all the missing values, and filled in all the NaN with the mode function. 
Then I removed the double order_id input. 
There are no findings of inconsistent formats in the data. 
Followed by pivoting the data and sorting it from the highest payment method usage to the lowest. 
Lastly, I visualize the data with the x-axis as the payment method and the y-axis as the total order and the result is below.

![image](https://github.com/gupitarahajeng/Data-Wrangling-and-SQL-Pacmann/assets/138182400/05a9ae13-b8a7-4c7b-b887-6ab86cefacbb)

Based on the pie chart above the most favourite payment method used by customers is credit card by 77% customers, 
followed by debit card by 20%. Boleto and voucher make the least used payment method used by the customer by only 2%, and 1%, respectively.


### Conclusion
- The popularity of a product category sales is not always directly proportional to the company's sales growth.
- The number of orders in a state is comparatively proportionate to the total order value or company revenue.
- The number of orders and total revenue in a state is not always aligned with the average order value per customer.
- Most customers when placing orders chose credit cards as their preference payment method.
