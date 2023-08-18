require 'json'
require_relative 'Student_list_base'

class Student_list_JSON < Student_list_base

  public_class_method :new

  def read_file(file_path)
    raise ArgumentError, 'Файл не найден' unless File.exist?(file_path)
    list_hash = JSON.parse(File.read(file_path), { symbolize_names: true })
    self.students = list_hash.map {|st| Student_short.new(**st)}
  end

  def write_to_file(file_path)
    list_hash = @students.map(&:to_h)
    File.write(file_path, JSON.generate(list_hash))
  end
end
