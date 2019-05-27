# code here!
class School
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.collect do |grade|
      puts grade
      grade.sort
    end
  end
end
