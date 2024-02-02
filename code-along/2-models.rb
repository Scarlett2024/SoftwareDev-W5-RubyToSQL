# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb
# rails runner data.rb   -> visually see all the data tables

# **************************
# DON'T CHANGE OR MOVE; delete all the rows in Companies table
Company.destroy_all
# **************************

#count the number of companies in the database
puts "There are #{Company.all.count} companies"

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data)

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
new_company = Company.new   #Create a new row
new_company["name"] = "Apple"
new_company["city"] = "Evanston"
new_company["state"] = "Illinois"
new_company["URL"] = "www.apple.com"
new_company.save     #insert the new row into the database
puts new_company.inspect    #Look at what's in the row; this is like a hash

new_company2 = Company.new   #Create a new row
new_company2["name"] = "Microsoft"
new_company2["city"] = "San Francisco"
new_company2["state"] = "California"
new_company2["URL"] = "www.microsoft.com"
new_company2.save

puts "There are #{Company.all.count} companies now"

# 3. query companies table to find all row with California company
all_companies = Company.all
#puts all_companies.inspect

# 4. query companies table to find single row for Apple
#apple = Company.where({"name" => "Apple"})[0]
apple = Company.find_by({"name" => "Apple"})
puts apple.inspect

# 5. read a row's column value
puts apple["URL"]

# 6. update a row's column value
microsoft = Company.find_by({"name" => "Microsoft"})
microsoft["URL"] = "microsoft.com"
microsoft.save

# 7. delete a row
microsoft = Company.find_by({"name" => "Microsoft"})
microsoft.destroy 