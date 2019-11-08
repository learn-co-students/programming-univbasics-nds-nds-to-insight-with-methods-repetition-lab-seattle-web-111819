$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require "pp"

pp directors_database

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end


def gross_for_director(d)
  total = 0
  index = 0
  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end
  total
end

def list_of_directors(source)
  # Write this implementation
  director_array= []
  list_index = 0
  while list_index < source.length do
      director_name = source[list_index][:name]
      director_array.push(director_name)
      list_index += 1
  end
  director_array
end

#get totals of each director and add them up
def total_gross(source)

index = 0
grand_total = 0

  while index < source.count do
      director = source[index]
      grand_total += gross_for_director(director)
      index +=1
  end
  grand_total
end

=begin
#gets total price on each coordinate and adds them up
def total_snack_price_on_spinner(nds, row_index, column_index)
  coordinate_total = 0
  inner_len = nds[row_index][column_index].length
  inner_index = 0
  while inner_index < inner_len do
    coordinate_total += nds[row_index][column_index][inner_index][:price]
    inner_index += 1
  end
  coordinate_total
end

#gets total of rows by adding all spinner totals
def total_snack_value_of_row(nds, row_index)
  grand_row_total = 0
  column_index = 0
  while column_index < nds[row_index].length do
    grand_row_total += total_snack_price_on_spinner(nds, row_index, column_index)
    column_index += 1
  end
  grand_row_total
end


#gets total of entire machine by adding all row totals
def total_value_of_snacks_in_machine(nds)
  grand_total = 0
  row_index = 0
  while row_index < nds.length do
    grand_total += total_snack_value_of_row(nds, row_index)
    row_index += 1
  end
  grand_total
end

p total_value_of_snacks_in_machine(vm) #=> 1192
=end





  # Write this implementation;
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total

#   grand_total = 0
#   row_index = 0
#   while row_index < source[row_index].count do
#     column_index = 0
#       while column_index < source[row_index].length do
#         inner_len= source[row_index][column_index].length
#         inner_index = 0
#           while inner_index < inner_len do
#               grand_total += directors_totals.director_name[index]
#       end
#
#     row_index += 1
#   end
#   grand_total
# end
# end
