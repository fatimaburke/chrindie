# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create! :username => 'fatimaburke',
                    :email => 'test@test.com',
                    :password => '123456',
                    :password_confirmation => '123456',
                    :name => 'Fatima Burke',
                    :bio => 'I\'m a fan of Christian Music',
                    :location => 'Philadelphia, PA',
                    :website => 'www.fatimaburke.com'

artist = Artist.create! :username => 'geneburke',
                    :email => 'test2@test.com',
                    :password => '123456',
                    :password_confirmation => '123456',
                    :name => 'Gene Keys',
                    :bio => 'I love to touch the hearts of people through singing',
                    :location => 'Philadelphia, PA',
                    :website => 'www.facebook.com/genekeyska'
