class Student_list_base
  private_class_method :new

  attr_writer :students

  def initialize
    self.students = []
  end

 def read_file(file_path)
    raise ArgumentError, 'Файл не найден' unless File.exist?(file_path)
    list_hash = list_hash_from_str(File.read(file_path))
    self.students = list_hash.map {|st| Student_short.new(**st)}
  end

  def write_to_file(file_path)
    list_hash = @students.map(&:to_h)
    File.write(file_path, list_hash_to_str(list_hash))
  end
  
  def get_student_by_id(id)
    @students.find {|st| st.id==id}
  end

  def get_k_n_student_short_list(page, n, data_list:nil)
    page_list = (@students[(page - 1) * n..page * n - 1].map { |stud| stud.to_h })
    return Data_list_student_short.new(data:page_list) if data_list.nil?

    data_list.append(page_list)
  end

  def sorted_by_name
    @students.sort_by(&:short_name)
  end

  def add_student(student)
    student.id = get_new_student_id
    @students << student
  end

  def replace_student_by_id(student, st_id)
    id_student = @students.find_index{|st| st.id==st_id}
    @students[id_student] = student
  end

  def delete_student_by_id(st_id)
    @students.delete_if {|st| st.id==st_id}
  end

  def get_student_count
    @students.size
  end

  def get_new_student_id
    @students.max_by(&:id).id +1
  end
end
