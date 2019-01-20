class Matrix
  attr_reader :rows

  def initialize(input)
    @rows = convert_to_rows(input)
  end

  def columns
    columns = []
    rows.each do |row|
      row.each_with_index do |number, index|
        columns[index] ||= []
        columns[index] << number
      end
    end
    columns
  end 

  private

    def convert_to_rows(matrix)
      combined_rows = matrix.split(/\n/)
  
      combined_rows.map do |row|
        row.split(' ').map(&:to_i)
      end
    end
end