class Student
  attr_accessor :id, :first_name, :last_name, :screenshot, :capstones, :description, :name

  def initialize(options_hash)
    @id = options_hash["id"]
    @first_name = options_hash["first_name"]
    @last_name = options_hash["last_name"]
    @capstones = options_hash["capstones"]
    @screenshot = options_hash["capstones"][0]["screenshot"]
    @name = options_hash["capstones"][0]["name"]
    @description = options_hash["capstones"][0]["description"]
  end

  def capstones

  end

  def self.all 
    students = []
    response = Unirest.get(
                          "https://crypto-currents-squidshack.herokuapp.com/api/v1/students.json",
                          ).body
    response.each do |student_hash|
      students << student = Student.new(student_hash)
    end
    students
  end

  def self.find(student_id)
    Student.new( { 
                  "first_name": "Sam",
                  "last_name": "Lorimer",
                  "id": student_id
                  })
  end
end