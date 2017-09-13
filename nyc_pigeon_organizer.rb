def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}

  data.each do |descrip, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !pigeon_list.has_key?(name)
          pigeon_list[name] = {}
        end

        if !pigeon_list[name].has_key?(descrip)
          pigeon_list[name][descrip] = []
        end

        if !pigeon_list[name][descrip].include?(attribute)
          pigeon_list[name][descrip] << attribute.to_s
        end
      end
    end
  end
  pigeon_list
end
