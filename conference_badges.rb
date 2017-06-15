def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array_of_names)
  batch_badge_array = []
  array_of_names.each do |name|
    batch_badge_array.push(badge_maker(name))
  end
  batch_badge_array
end


def assign_rooms(array_of_names)
  #array_of_rooms = [1..7]
  #room_assignments_array = Array.new(7){Hash.new}
  room_assignments_array = []
  array_of_names.each_with_index do |name, index|
    room_assignments_array.push("Hello, #{name}! You'll be assigned to room #{index+1}!")
  end
  room_assignments_array
end


def printer(array_of_names)
  #array_to_print = Array.new(7){Hash.new}
  #batch_badge_array = batch_badge_creator(array_of_names)
  #room_assignments_array = assign_rooms(array_of_names)

  #array_to_print.each_with_index do |name, index|
  #  array_to_print[index] = batch_badge_array[index], room_assignments_array[index]
  #end
  #array_to_print.each do |element|
  #  puts element
  #end

  array_to_print = batch_badge_creator(array_of_names).concat(assign_rooms(array_of_names))
  array_to_print.each do |element|
    puts element
  end

end
