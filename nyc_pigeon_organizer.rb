require "pry"

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute, data|
    data.each do |data_type, names|
      names.each do |name|
        # binding.pry
        if !new_hash[name]
          new_hash[name] = {}
          binding.pry
        end
        if !new_hash[name][attribute]
          new_hash[name][attribute] = []
        end
        new_hash[name][attribute].push(data_type.to_s)
      end
      # binding.pry
    end
  end
  new_hash
end

# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

# nyc_pigeon_organizer(pigeon_data)
