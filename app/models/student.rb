class Student
  attr_accessor :id, :first_name, :last_name, :screenshot, :capstones, :description, :name
      HEADERS = {'X-User-Email' => ENV['api_email'], 'Authorization' => "Token token=#{ENV['api_key']}", "Accept" => "application/json" }

  def initialize(options_hash)
    @id = options_hash["id"]
    @first_name = options_hash["first_name"]
    @last_name = options_hash["last_name"]
    @capstones = options_hash["capstones"]
    @screenshot = options_hash["capstones"][0]["screenshot"]
    @name = options_hash["capstones"][0]["name"]
    @description = options_hash["capstones"][0]["description"]
  end

  def self.all 
    students = []
    response = Unirest.get(
                          "https://crypto-currents-squidshack.herokuapp.com/api/v1/students.json",
                          headers: HEADERS
                          ).body
    response.each do |student_hash|
      students << student = Student.new(student_hash)
    end
    students
  end

  def self.find(student_id)
    Student.new(Unirest.get("https://crypto-currents-squidshack.herokuapp.com/api/v1/students/#{ student_id }.json",
      headers: HEADERS
      ).body)
  end
end