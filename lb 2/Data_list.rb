class Data_list
  attr_reader :data, :selected


  def initialize(data)
    self.data = data
    @selected = []
  end

  def data= (data)
    index = 0
    @data = data[:data].each { |student| student[:id] = index += 1 }
  end

  def unselect
    self.selected = []
  end
  
  def select(number)
    @selected << data[number]
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
