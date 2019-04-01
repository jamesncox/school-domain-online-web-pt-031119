require 'pry'

class School
  attr_accessor :name, :roster
  #binding.pry
  
  def initialize(name)
    @name = name
    @roster = {}
    #binding.pry
  end
  
  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
    #binding.pry
  end
  
  def grade(student_grade)
    roster[student_grade]
    #binding.pry
  end
  
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
      #binding.pry
    end
    sorted
  end
  
end