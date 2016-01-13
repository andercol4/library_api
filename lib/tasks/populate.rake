namespace :populate do
  desc "populates the databse with random libraries with addresses"
  task libraries: :environment do
    Library.populate(100) do |library|
      library.name = Faker::Company.name
      library.date_built = Faker::Date.between(5.years.ago, Date.today)
      Address.populate(1) do |address|
        address.library_id = library.id
        address.city = Faker::Address.city
        address.state = Faker::Address.state
        address.zip = Faker::Address.zip
        address.street = Faker::Address.street_address
      end
    end
    puts "Libraries populated successfully. You have #{Library.count} libraries now."
  end

end
