require 'pp'
require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  new_pigeon_data = {}
  
   data.each do |key, value|
  value.each do | new_key, names_array|
    names_array.each do | name | 
   if !new_pigeon_data[name] 
     new_pigeon_data[name] = {}
      
   end
     if  !new_pigeon_data[name][key] 
       
    new_pigeon_data[name][key] = []  
    
end
 new_pigeon_data[name][key] << new_key.to_s 
 
 
   
 end
 #filter_parameter_logging binding.pry 
  end
 end
 
#new_pigeon_data.each do [name,key]

#end



#data[:color] = ["purple", "grey","white","brown"]
#data[:gender] = ["male","female"]
#data[:lives] = ["Subway","central park","library"]
#new_pigeon_data[theo] = data[:color]["purple", "grey"]
#new_pigeon_data[data[:color][:purple][1]] = data[:color]["purple", "grey"]
return new_pigeon_data
end