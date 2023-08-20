require_relative 'Data_list'

class Data_list_student_short < Data_list
  attr_reader :column_names, :selected

  attr_accessor :view

  def notify
    self.view.set_table_params(self.get_objects_attr_names.map{|x| x.to_s}, self.list.size)
    self.view.set_table_data(self.get_data)
  end
  
  def initialize(data)
    super
  end

  def column_count
    @data[0].size
  end

  def get_names
    %w[git contact short_name]
  end

  def get_data(obj)
    table = []
    counter = 0
    list.each { |obj| table.append([counter, *get_objects_attr(obj)]); counter += 1}
    return Data_table.new(table: table)
  end
end
