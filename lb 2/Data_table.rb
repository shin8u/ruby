class Data_table
    def initialize(data)
      @data = data
    end

    def get_element(row, col)
        @data[row][col]
    end

    def get_rows_count
        @data.size
    end

    def get_columns_count
        @data[0].size
    end
end
