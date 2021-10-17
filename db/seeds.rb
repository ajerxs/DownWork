# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

client_1 = Client.create(first_name: "Chuck", last_name: "Bass", email: "cbass@email.com", bio: "People like me don't write books, we're written about.", password_digest: "password")
client_2 = Client.create(first_name: "Anton", last_name: "Castillo", email: "acastillo@email.com", bio: "Our country is like this grenade, except it has two basic parts. Our people, and you. And you must clutch them nice and tight, or we all go boom.", password_digest: "password")
client_3 = Client.create(first_name: "Marlene", last_name: "(unknown)", email: "marlene@email.com", bio: "Apparently, there's no way to extricate the parasite without eliminating the host. Fancy way of saying we got to kill the kid. And now they're asking for my go ahead. The tests just keep getting harder and harder, don't they?", password_digest: "password")


worker_1 = Worker.create(first_name: "Joel", last_name: "Miller", email: "jmiller@email.com", bio: "I struggled for a long time with survivin', and no matter what, you keep finding something to fight for.", password_digest: "password")