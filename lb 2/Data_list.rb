class Data_list
  attr_reader :data, :selected


  def initialize(data)
    @data = data
    @selected = []
  end

  def select(number)
    @selected << data[:data][number]
  end

  def get_selected
    @selected.map { |student| student[:id] }
  end

  def get_names
    raise NotImplementedError
  end

  def get_data
    raise NotImplementedError
  end
end 
