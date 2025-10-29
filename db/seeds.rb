# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



record = Record.create(
    company_name: 'company',
    email_id: 'ravi@ror.com',
    website: 'wwww.company.co.in'

)
10.times do |i|
    puts "Creating Company #{i+1}"
    Record.create(
        company_name: "Company #{i+1}",
        email_id: "company#{i+1}@ror.com",
        website: " wwww.company#{i+1}.co.in"
    )
end

record.save