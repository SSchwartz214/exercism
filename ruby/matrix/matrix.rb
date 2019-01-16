class Matrix
  attr_reader :rows,
              :columns

  def initialize(input)
    @rows = convert_to_rows(input)
    @columns = convert_to_columns(rows)
  end

  def convert_to_rows(matrix)
    combined_rows = matrix.split(/\n/)

    rows = combined_rows.map do |row|
      row.split(' ')
    end

    rows.map do |row|
      row.map(&:to_i)
    end
  end

  def convert_to_columns(rows)
    columns = []
    rows.each do |row|
      row.each_with_index do |number, index|
        columns[index] ||= []
        columns[index] << number
      end
    end
    columns
  end
end