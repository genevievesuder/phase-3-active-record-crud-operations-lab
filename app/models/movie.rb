#CRUD Actions
require 'pry'

class Movie < ActiveRecord::Base

    #CREATE

    def self.create_with_title(title)
        Movie.create(title: title)
    end

    #READ

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find_by_id(id)
    end

    def self.find_movie_with_attributes(attribute)
        Movie.find_by(attribute)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > ?", 2002)
    end

    #UPDATE

    def update_with_attributes(keyandattribute)
        self.update(keyandattribute)
        
    end

    def self.update_all_titles(newtitle)
        Movie.update(title: newtitle)
    end

    #DELETE

    def self.delete_by_id(id)
        Movie.delete(id)
    end

    def self.delete_all_movies
        Movie.delete_all
    end

end