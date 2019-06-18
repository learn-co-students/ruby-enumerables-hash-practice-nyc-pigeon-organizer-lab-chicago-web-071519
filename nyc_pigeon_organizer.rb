def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {} 

  
# adding to pigeon_list hash a name of each pigeon  
# as a key and assigning it to an empty hash
 
  
  pigeon_data.each do |key, value|
    value.each do |key2, value2|
      value2.each do |value3|
        if !pigeon_list.key? (value3)
          pigeon_list[value3] = {}  
        end
      end  
    end
  end


#adding attributes of every pigeon to created empty hashes
#before as keys and assigning each of them to an empty array


  pigeon_list.each_key do |key|
    pigeon_data.each_key do |key2|
      pigeon_list[key][key2] = []
    end
   end  


#iterating through the original pigeon_data hash 
#searching for data related to each of our pigeon
#adding info to their attributes arrays


  pigeon_data.each do |key, value|
    value.each do |key2, value2|
      pigeon_list.each_key do |key3|
        if pigeon_data[key][key2].include?(key3)
          pigeon_list[key3][key].push(key2.to_s)
        end
      end
    end
  end

  pigeon_list
end