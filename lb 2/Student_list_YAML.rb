require 'yaml'
require_relative 'Student_list_base'

class Student_list_YAML < Student_list_base

  public_class_method :new

  def read_file(file_path)
    raise ArgumentError, 'Файл не найден' unless File.exist?(file_path)
    list_hash = YAML.load(File.read(file_path)).map {|hash| hash.transform_keys(&:to_sym)}
    self.students = list_hash.map {|st| Student_short.new(**st)}
    # get_new_student_id
  end

  #запись в файл
  def write_to_file(file_path)
    list_hash = @students.map(&:to_h)
    File.write(file_path, list_hash.map{ |hash| hash.transform_keys(&:to_s)}.to_yaml)
  end
end
