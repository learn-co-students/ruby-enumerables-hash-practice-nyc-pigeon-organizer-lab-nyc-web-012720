def nyc_pigeon_organizer(data)
  result = {}
  data.map{|k,v|
    v.map{|internal_key, value| 
    puts value
      value.each_with_index{|name, i| 
      result[name] = {} unless result[name]
      result[name][k] = Array.new() unless result[name][k]
      result[name][k] << internal_key.to_s
     }
    }
  }
    return result
end