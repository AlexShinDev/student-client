class Student
  attr_accessor :first_name
  def initialize(options_hash)
    @first_name = options_hash[:first_name]
  end

  def self.all 
    students = []
    response = [
                {
                  "first_name": "Sam"
                },
                {
                  "first_name": "Neil"
                },
                {
                  "first_name": "Alex"
                }
              ]
    response.each do |student_hash|
      p student_hash
      students << Student.new(student_hash)
    end
    students
  end
end