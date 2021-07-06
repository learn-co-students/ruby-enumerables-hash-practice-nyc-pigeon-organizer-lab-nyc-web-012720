require 'pry'
def nyc_pigeon_organizer(data) #data is the entire hash of hash of array
  new_hash = {}
  data.each do |key, value| #key is the color key, value is the hash associated with that key
  value.each do |new_key, names| #new key is each color key, names is the array of pigeons names
  names.each do |name| #name is each pigeons name *because names is an array of pigeons I can only use 1 variable instead of 2 when its a hash
    
  if !new_hash[name] #if new_hash[name] DOES NOT exist, ! inverts the truthy value to falsey
    new_hash[name] = {} #then the new_hash[name] will equal a hash, this turns the name variable into a hash.
  end
  if !new_hash[name][key] # if new_hash[name][key] DOES NOT exist *truthy value inverted again
    new_hash[name][key] = [] #new hash[name][key] will be an array. 
  end
  new_hash[name][key] << new_key.to_s #takes my new_hash and adds the colors that were keys as a string. name is now a key, key is the array and new key is added to the array as a string. 
  end
  end
  end
  new_hash
end
