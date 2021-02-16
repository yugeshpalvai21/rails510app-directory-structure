# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movies_list = File.open(Rails.root.join('netflix_titles.csv')).read.split("\n").map.with_index do |movie, index| 
                    arr = movie.split(",")
                    sorted_movie = {   
                        show_id: arr[0],
                        movie_type: arr[1],  
                        title: arr[2], 
                        director: arr[3], 
                        cast: arr[4], 
                        country: arr[5], 
                        date_added: arr[6], 
                        release_year: arr[7], 
                        rating: arr[8], 
                        duration: arr[9],
                        listed_in: arr[10], 
                        description: arr[11]
                    }
                    puts "String to Hash Conversion Completed Successfully of Index #{index}"
                    sorted_movie
                end

total_time = Benchmark.measure { Movie.create(movies_list) }
#total_time = Benchmark.measure { movies_list.each { |movie| Movie.create(movie) } }
puts total_time