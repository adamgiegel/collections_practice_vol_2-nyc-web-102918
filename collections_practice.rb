def begins_with_r(array)
  array.all? do |i|
    i[0] == "r"
  end
end

def contain_a(array)
  array.select do |i|
  i.include?('a')
  end
end

def first_wa(array)
  array.find { |i| i[0..1] == "wa" }
end

def remove_non_strings(array)
  array.delete_if { |i| i.class != String }
end

def count_elements(array)
  newArr = array.uniq
   newArr.map do |name| 
    name.merge({ :count => array.count { |i| i[:name] == name[:name] }})
  end
end

def merge_data(keys,data)
  newArr = []
  data.each do |i|
    i.each do |name, info|
      keys.each do |j|
        newArr.push(j.merge(info)) if j.values[0] == name
      end
    end
  end
  newArr
end

def find_cool(array)
  array.select { |item| item[:temperature] == "cool" }
end

def organize_schools(school)
  newObj = {}
    school.each do |i, j|
      j.each do |item, loc|
        if newObj[loc] == nil
           newObj[loc] = [i]
        else
          newObj[loc] << i
        end
      end
    end
    newObj
end