def nyc_pigeon_organizer(old_hash)
  # write your code here!
  returned_hash = {}

  old_hash.each do |first_key, first_value|
    first_value.each do |second_key, array|
      array.each do |index|

        if !returned_hash.has_key?(index)
          returned_hash[index] = {}
        end

        if !returned_hash[index].has_key?(first_key)
          returned_hash[index][first_key] = []
        end

        if !returned_hash[index][first_key].include?(second_key)
          returned_hash[index][first_key] << second_key.to_s
        end

      end
    end
  end
  returned_hash
end
