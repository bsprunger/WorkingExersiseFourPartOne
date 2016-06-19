class Movie < ActiveRecord::Base
    def self.all_ratings
<<<<<<< HEAD
        self.find(:all, :select => "rating", :group => "rating").map(&:rating)
=======
        ['G','PG', 'PG-13', 'R', 'NC-17']
>>>>>>> a3041b8269378256b5d7095957578b3176a0cb40
    end
end