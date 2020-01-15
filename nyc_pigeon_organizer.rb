def nyc_pigeon_organizer(data)
  
final={}  

data.each do |color_gender_lives,all_other|
  all_other.each do |category, array|
    array.each do |name|
      final[name]={:color => [],:gender =>[], :lives =>[]}
    end
  end
end

x =final.keys

data[:color].each do |bird_color,name|
  name.each do |bird_name|
    x.each do |item|
      if bird_name === item
        final[item][:color] << bird_color.to_s
    end
  end
end
end

data[:gender].each do |gender,name|
  name.each do |bird_name|
    x.each do |item|
       if bird_name === item
         final[item][:gender].push(gender.to_s)
     end
    end
  end
end

data[:lives].each do |location,name|
  name.each do |bird_name|
    x.each do |item|
      if bird_name === item
        final[item][:lives] << location.to_s
    end
  end
end
end

return final
end 


