require 'pry'



def nyc_pigeon_organizer(data)
    pigeons_by_name = {}
    data.each do |key, value|
      value.each do |new_value, names|
        names.each do |name|
          if !pigeons_by_name[name]
            pigeons_by_name[name] = {}
          end
        if !pigeons_by_name[name][key]
          pigeons_by_name[name][key] = []
                end
          pigeons_by_name[name][key] << new_value.to_s
        end
      end
    end
    pigeons_by_name
  end
