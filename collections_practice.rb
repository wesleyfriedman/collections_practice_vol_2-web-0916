def begins_with_r(array)
  array.sort do |a, b|
    a <=> b
  end
  if array.first[0] == array.last[0]
    return true
  else
    return false
  end
end

def contain_a(array)
include_a = []
  array.each do |word|
    if word.include? "a"
      include_a << word
    end
  end
  return include_a
end

def first_wa(array)
  array.each do |word|
    if word[0,2].eql? "wa"
      return word
    end
  end
end

def remove_non_strings(array)
array_string = []
  array.each do |word|
    if word.is_a? String
      array_string << word
    end
    return array_string
  end
end

def count_elements(array)
  people = []
  array.each do |person|
    person[:count] = array.count(person)
    people << person
    array.delete_if { |h| h == person }
  end
  return people
end

def merge_data(keys, data)
  merged_data = data[0].values.map.with_index {|v, i| keys[i].merge(v)}
  return merged_data
end

def find_cool(cool)
  cool_elements = []
  cool.each do |person|
    if person[:temperature] == "cool"
      cool_elements << person
    end
  end
  return cool_elements
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |key, value|
    if organized_schools.key?(value[:location])
      organized_schools[value[:location]] << key
    else
      organized_schools[value[:location]] = [key]
    end
  end
  return organized_schools
end
