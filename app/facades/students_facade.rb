class StudentsFacade
  attr_reader :house,
              :students

  def initialize(house)
    @house = house
  end

  def find_house_id
    houses.find do |house|
      house.name == @house
    end.id
  end

  def students
    service.get_students(find_house_id).map do |student_info|
      Student.new(student_info)
    end
  end

  def houses
    service.get_json("house").map do |house|
      House.new(house)
    end
  end



  def students_count
    students.count
  end


  def service
    HogwartsService.new
  end


end
