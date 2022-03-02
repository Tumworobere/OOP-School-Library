class Classroom
  attr_accessor :label
  attr_reader :students

  def intitialize(label)
    @label = label
    @students = []
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
    end
end
