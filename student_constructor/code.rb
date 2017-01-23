class Student
  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @grades = info[:grades]
    @average = (info[:grades].inject(:+).to_f)/info[:grades].length
  end
end
