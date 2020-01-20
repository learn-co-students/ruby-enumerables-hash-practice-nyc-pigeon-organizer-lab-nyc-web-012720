def nyc_pigeon_organizer(data)
  pigeon_list = {}
  pigeon_names = []
  data.each do |key, value| 
    value.each do |val, subval|
      pigeon_names << subval
    end
  end
  pigeon_names = pigeon_names.flatten.uniq
  pigeon_names.each do |name|
    pigeon_list[name] = {}
    data.each do |attribute, inner_att|
      inner_att.each do |answer, value|
        if value.include?(name)
          if pigeon_list[name].keys.include?(attribute)
            pigeon_list[name][attribute].push(answer.to_s)
          else
            pigeon_list[name][attribute] = [answer.to_s]
          end
        end
      end
    end
  end
  pigeon_list
end

 pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }
      nyc_pigeon_organizer(pigeon_data)
      