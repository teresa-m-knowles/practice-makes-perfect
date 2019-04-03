class StudentsFacade
  attr_reader :house,
              :students

  def initialize(house)
    @house = house
  end

  def students
    service.get_students(@house)[:data].first[:attributes][:students].map do |student_info|
      Student.new(student_info)
    end
  end

  def students_count
    students.count
  end


  def service
    HogwartsService.new
  end


end
