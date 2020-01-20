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