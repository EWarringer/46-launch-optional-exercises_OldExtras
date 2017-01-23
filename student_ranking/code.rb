def rankings(students)
  students.each_with_index do |name, place|
    puts "#{place + 1}. #{name}"
  end
end

rankings(["Johnny", "Jane", "Sally", "Elizabeth", "Michael"])
