class Statement
  attr_reader :arr
  def initialize(arr)
    @arr = arr
  end

  def convert(arr)
    arr.reverse_each do |element|
      puts element.join(",").gsub!(",", " || ")
    end
  end

  def print_header
    puts 'date || credit || debit || balance'
  end

  def print(arr)
    print_header
    convert(arr)
  end
end
