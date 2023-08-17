require_relative 'Data_list'

class Data_list_student_short < Data_list
  attr_reader :column_names, :selected
  attr_accessor :data

  def initialize(data)
    super
  end

  def column_count
    @data[0].instance_variables.count
  end

  def select(number)
    @selected << data[:data][number]
  end

  def get_names
    %w[git contact short_name]
  end

  def get_data(obj)
    [obj.git, obj.contact, obj.short_name]
  end
end
