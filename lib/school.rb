class School

  attr_reader :roster

  def initialize(roster)
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(level)
    @roster[level]
  end

  def sort
    final = {}
    @roster.each {|grade, students| final[grade] = students.sort }
    final
  end
end
