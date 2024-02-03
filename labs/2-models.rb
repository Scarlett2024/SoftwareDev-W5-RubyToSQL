# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
salesperson1 = Salesperson.new
salesperson1["first_name"] = "Amy"
salesperson1["last_name"] = "Zhang"
salesperson1["email"] = "amy.zhang@gmail.com"
salesperson1.save

salesperson2 = Salesperson.new
salesperson2["first_name"] = "Nancy"
salesperson2["last_name"] = "Yang"
salesperson2["email"] = "nancy.yang@gmail.com"
salesperson2.save

# 3. write code to display how many salespeople rows are in the database

puts "Salespeople: #{Salesperson.all.count}"
# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
new_sales = Salesperson.find_by({"first_name" => "Nancy", "last_name" => "Yang"})
new_sales["first_name"] = "Jack"
new_sales["last_name"] = "Li"
new_sales["email"] = "jack.li@gmail.com"
new_sales.save

#puts Salesperson.all.inspect

# CHALLENGE:
# 5. write code to display each salesperson's full name
puts "Salespeople: #{Salesperson.all.count}"
for i in 0..Salesperson.count-1
    name_sales = Salesperson.all[i]
    puts"#{name_sales["first_name"]} #{name_sales["last_name"]}"
end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
