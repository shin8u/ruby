class Data_list_2
    attr_reader :data
  
    private_class_method :new
  
    def initialize(data)
      @data = data
      @selected = []
    end
  
    def select(number)
      @selected << @data[number]
    end
  
    def get_selected
      @selected.map(&:id)
    end
  
    def get_names
      raise NotImplementedError
    end
  
    def get_data
      raise NotImplementedError
    end
end 
