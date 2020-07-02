require 'pry'
class School
attr_accessor:name, :roster

 def initialize (name)
   @name = name
   @roster = {}
 end 
 
 def add_student (name,grade)
    roster[grade] ||= []
    roster[grade] << name
 end 
 
 def grade(grade)
    roster.each do |k, v| 
      if k == grade
        return v 
      end 
    end 
 end
 
 def sort 
   roster..sort_by { |k, v| v[:grade] }
 end 
end 