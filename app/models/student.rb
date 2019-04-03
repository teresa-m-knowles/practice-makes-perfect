class Student
  attr_reader :id,
              :name
  def initialize(student_info)
    @id = student_info["id"]
    @name = student_info["name"]
  end
end
