require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

def remove_strawberry(contacts)
 contacts.each do |name, info|
    info.each do |category, value|
      if category == :favorite_ice_cream_flavors
        value.reject! do |flavor|
          if flavor == "strawberry"
          end
        end
      end
    end
  end
end
