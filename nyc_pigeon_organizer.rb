def nyc_pigeon_organizer(data)
  # write your code here!
  result = {}

  data.each {|key,value|
    value.each {|new_value,names|
      names.each {|name|
        
    if !result[name]
      result[name] = {}
    end

    if !result[name][key]
      result[name][key] = []
    end

    result[name][key] << new_value.to_s


    }}}
    result




end
