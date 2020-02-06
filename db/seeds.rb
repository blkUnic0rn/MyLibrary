# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', '100_books.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
user = User.create(email:'admin@kayla', password: 'kayla',
                                        password_confirmation:'kayla')

csv.each do |row|
  t = Recommendation.create(title: row['title'], author: row['author'], user_id: user.id)
  # t.title = row['title']
  # t.author = row['author']
  # t.save
  puts "#{t.title}, #{t.author}"
end
puts "there are now #{Recommendation.count} rows in the table"

# Recommendation.create!([
#                          {
#                            title: 'American Gods',
#                            author: 'Neil Gaiman'
#                          },
#                          {
#                            title: 'Lord of the Flies',
#                            author: 'Lord of the Flies'
#                          },
#                          {
#                            title: 'Siddhartha',
#                            author: 'Hermann Hesse'
#                          },
#                          {
#                            title: 'Sophies World',
#                            author: 'Jostein Gaarder'
#                          },
#                          {
#                            title: 'A Brief History of Time',
#                            author: 'Stephen Hawking'
#                          },
#                          {
#                            title: 'The Great Gatsby',
#                            author: 'F. Scott Fitzgerald'
#                          },
#                          {
#                            title: 'To Kill A Mocking Bird',
#                            author: 'Harper Lee'
#                          },
#                          {
#                            title: 'Matilda',
#                            author: 'Roald Dahl'
#                          },
#                          {
#                            title: 'The Complete Art of War',
#                            author: 'Sun Tzu'
#                          },
#                          {
#                            title: 'Do Androids Dream of Electric Sheep',
#                            author: 'Philip K. Dick'
#                          },
#                          {
#                            title: 'Long Walk to Freedom',
#                            author: 'Nelson Mandela'
#                          }
#                        ])
