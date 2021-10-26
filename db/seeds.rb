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
worker_2 = Worker.create(first_name: "John", last_name: "Henry", email: "jhenry@email.com", bio: "My daddy was the same way, always telling me what to do like I didn't have no mind of my own. [...] Well now, see, he only bothered on account of how much he cared for me. Daddy was just doing the best he knew how. It's what grieves me, I never got the gumption to tell him how I felt about it. [Daniel: Why not?] Daddy got sold downriver. [Daniel: Sold?] We were slaves. It's too late for me. Let's hope it's not too late for you.", password_digest: "password")
worker_3 = Worker.create(first_name: "Kaleb", last_name: "Cross", email: "revenant@email.com", bio: "Your revenge isn't aimed at one person. It's aimed at every person. It's aimed at any person. An endless supply of skin suits, and so much time to kill. What are you waiting for, little simulacrum?", password_digest: "password")

job_1 = Job.create(title: "Steel Forged", description: "I need a strong man to help build the foundation of a new building. I need someone that is handy, and knows a thing or two about reinforcing structures.", salary: 45000.00, needed_workers: 15, client_id: 1)
job_2 = Job.create(title: "Trained to Kill", description: "I am looking for an assassin. Someone that specializes in the art of terror, and is confident in their abilities to be as swift and silent as a ghost.", salary: 250000.00, needed_workers: 1, client_id: 2)
job_3 = Job.create(title: "Precious Cargo", description: "I have a girl. Her value to the world is indescribable. I need someone I can trust to transport her safely across the country.", salary: 8000.00, needed_workers: 1, client_id: 3)

contract_1 = Contract.create(start_date: "1/10/2021", end_date: "10/10/2021", job_id: 1, worker_id: 5)