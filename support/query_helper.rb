module QueryHelper
  def join_values(a1, a2, join_index)
    a3 = []
    a1.each do |array1|
      index = a2.find_index { |array2| array1[join_index] == array2[join_index] }
      a3.push((array1 + a2[index]).uniq)
    end
    a3
  end
end