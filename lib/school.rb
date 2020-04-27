class School
  
  # Used attr_reader to cuz initialize is going to make the setter
  attr_reader :school, :roster;
  
  # Init w/ name and empty roster(hash)
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  # Define method for adding a student
  def add_student(name, grade)
    roster[grade]||=[]
    roster[grade] << name
  end
  
  # Gives the Roster for a grade level
  def grade(level)
    roster.detect do |x, y|
      if x == level
         return y
      end
    end
  end
  
  # Sorts the roster by name
  def sort 
    nu_hash = {}
    roster.each do |x, y| 
      nu_hash[x] = y.sort 
    end 
  nu_hash
  end 
  
  
  
end