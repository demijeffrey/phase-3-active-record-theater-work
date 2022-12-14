puts "Clearing database..."

Audition.destroy_all
Role.destroy_all

puts 'Database clear'

puts 'Creating roles...'

r1 = Role.create(character_name: "Jim Halpert")
r2 = Role.create(character_name: "Michael Scott")
r3 = Role.create(character_name: "Dwight Schrute")
r4 = Role.create(character_name: "Kevin Malone")

puts 'Roles created'

puts 'Creating auditions...'

a1 = Audition.create(actor: 'Rainn Wilson', location: 'Denver', phone: 0000000000, role: r3)
a2 = Audition.create(actor: 'Adam Sandler', location: 'Los Angeles', phone: 0000000000, role: r4)
a3 = Audition.create(actor: 'John Krasinsky', location: 'Atlanta', phone: 0000000000, role: r1)
a4 = Audition.create(actor: 'Will Ferrel', location: 'Miami', phone: 0000000000, role: r1)
a5 = Audition.create(actor: 'Rob Schnieder', location: 'Nashville', phone: 0000000000, role: r3)
a6 = Audition.create(actor: 'Steve Carrel', location: 'Boston', phone: 0000000000, role: r2)

puts 'Auditions created'