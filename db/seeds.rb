# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

docs = %w(one two three)


docs.each do |doc|
  document = Document.create({ title: "Document##{doc}" })

  docs.each do |sub_doc|
    Document.create({ title: "Sub Document##{sub_doc} for Document##{doc}", parent: document })
  end
end
