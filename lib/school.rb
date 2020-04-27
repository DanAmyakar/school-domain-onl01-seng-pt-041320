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
  def grade(class)
    roster.detect do |x,y|
      if x == class
         y
      end
    end
  end
  
  # Sorts the roster by name
  
  
  
  
end