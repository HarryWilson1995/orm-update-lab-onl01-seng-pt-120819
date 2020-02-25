require_relative "../config/environment.rb"

class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  
  attr_accessor :name, :grade 
  attr_reader :id 

  def initialize(name, grade, id=nil)
    @name = name 
    @grade = grade 
    @id = id 
  end 
  
  def update
    sql = "UPDATE students SET name = ?, grade = ? WHERE id = ?"
    DB[:conn].execute(sql, self.name, self.grade, self.id)
  end

end
