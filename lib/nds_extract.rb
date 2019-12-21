require 'directors_database'
require 'pp'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  director_index = 0
  result = {}
  
while director_index < nds.length
 movie_index = 0
director_name = nds[director_index][:name] 
result[director_name] = 0
 while movie_index < nds[director_index][:movies].length
  result[director_name] +=  nds[director_index][:movies][movie_index][:worldwide_gross]
  movie_index += 1
end
director_index += 1
end
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
result[director_data]
end

directors_totals(directors_database)