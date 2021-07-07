def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attributes, values|
    values.each do |types, names|
      names.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        if !pigeon_list[name][attributes]
          pigeon_list[name][attributes] = []
        end
        pigeon_list[name][attributes].push(types.to_s)
      end
    end
  end
  pigeon_list
end
