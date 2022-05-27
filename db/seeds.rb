puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.create(item_name: "freebie 1", value: 1, dev_id: Dev.find_by(name: "Rick").id, company_id: Company.find_by(name: "Google").id)
Freebie.create(item_name: "freebie 2", value: 4, dev_id: Dev.find_by(name: "Rick").id, company_id: Company.find_by(name: "Facebook").id)
Freebie.create(item_name: "freebie 3", value: 8, dev_id: Dev.find_by(name: "Morty").id, company_id: Company.find_by(name: "Enron").id)
Freebie.create(item_name: "freebie 4", value: 1, dev_id: Dev.find_by(name: "Gazorpazop").id, company_id: Company.find_by(name: "Dunder Mifflin").id)

puts "Seeding done!"
