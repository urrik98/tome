# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

r1 = Role.create({name: "Reader", description: "Can read records"})
r2 = Role.create({name: "Editor", description: "Can read and create records. Can update and destroy own records"})
r3 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})

u1 = User.create({name: "Lord Urrik", email: "urrik@lord.com", password: "Deathtongue98", password_confirmation: "Deathtongue98", role_id: r3.id})
