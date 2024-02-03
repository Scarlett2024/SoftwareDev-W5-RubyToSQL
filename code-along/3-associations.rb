# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database
apple = Company.find_by({"name" => "Apple"})
microsoft = Company.find_by({"name" => "Microsoft"})
# 1. insert new rows in the contacts table with relationship to a company
contact1 = Contact.new
contact1["first_name"] = "Tim"
contact1["last_name"] = "Cook"
contact1["email"] = "tim.cook@apple.com"
contact1["company_id"] = apple["id"]
contact1.save

contact2 = Contact.new
contact2["first_name"] = "Jeff"
contact2["last_name"] = "Bezos"
contact2["email"] = "Jeff@microsoft.com"
contact2["company_id"] = microsoft["id"]
contact2.save

# 2. How many contacts work at Apple?
apple_contacts = Contact.where({"company_id" => apple["id"]})
puts "Apple contacts: #{apple_contacts.count}"
# 3. What is the full name of each contact who works at Apple?
apple_contact = Contact.where({"company_id" => apple["id"]})
for contact in apple_contact
    first_name = contact["first_name"]
    last_name = contact["last_name"]
    puts "Contact: #{first_name} #{last_name}"
end
