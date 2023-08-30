require_relative student

class Classroom
    attr_accessor :label, students
    attr_reader :student

    def initialize(label)
        @label = label
        @students = []
    end

    def add_student(student)
        @students << student
        student.Classroom = self
    end
end