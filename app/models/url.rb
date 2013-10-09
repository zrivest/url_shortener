class Url < ActiveRecord::Base
 def self.link_generator  
    sample_url = []

    massive_array = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a

    6.times do
      next_char = massive_array.sample
      sample_url << next_char
    end
    sample_url.join
  end

     
end

# iterate 6 times through a loop
# array1 = (a..z).to_a.sample
# array2 = (1..9)
