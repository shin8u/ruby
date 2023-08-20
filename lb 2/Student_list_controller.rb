require "student_list_view"
require_relative 'Student_list_base'

class StudentListController
  attr_accessor :view, :student_list

  def initialize(view)
    self.view = view
    self.list = Student_list_base.new
  end

end

