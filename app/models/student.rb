class Student
  attr_accessor :id, :first_name
  def initialize(options_hash)
    @id = options_hash[:id]
    @first_name = options_hash[:first_name]
  end

  def self.find(student_id)
    Student.new( { 
                  "first_name": "Sam",
                  "last_name": "Lorimer",
                  "id": student_id
                  })
  end
end
