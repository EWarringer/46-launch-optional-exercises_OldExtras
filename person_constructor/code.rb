class Person
  def initialize(name, last_name = nil, middle_name = nil)
    if last_name.nil?
      name = name.split(" ")
      @first_name = name[0]
        if name.length == 3
          @middle_name = name[1]
          @last_name = name[2]
        else
          @last_name = name[1]
        end
    else
      if middle_name != nil
        @middle_name = middle_name
      end
      @first_name = name
      @last_name = last_name
    end
  end
end
