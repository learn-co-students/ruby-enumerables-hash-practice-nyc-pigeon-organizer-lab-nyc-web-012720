def nyc_pigeon_organizer(data)
  new_hash = {}
  
  data.each_pair do |att, inner_hash| 
    inner_hash.each_pair do |att_val, name_arr|
      name_arr.each do |name| 
        att_val_arr = []
        att_val_arr << att_val.to_s
      
        if new_hash[name] && new_hash[name][att]
          new_hash[name][att] << att_val.to_s 
          
        elsif new_hash[name] && !new_hash[name][att]
          new_hash[name][att] = att_val_arr
          
        else 
          small_hash = {}
          small_hash[att] = att_val_arr
          new_hash[name] = small_hash
        end 
      end 
    end 
  end 
  
new_hash  
    
end