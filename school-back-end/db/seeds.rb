# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Professor.create(username: "aaaa", password: "aaaa", 
    speciality: "math", email: "aaa@example.com", phone:111)

Professor.create(username: "bbbb", password: "bbbb", 
        speciality: "math",email: "bbbb@example.com", phone:222)

Parent.create(username: "hassan", password: "hassan", 
        address: "ningon_nord", email: "hassan@example.com", 
        phone:333)

Classe.create(title: "6eme A")

Student.create(classe_id: 1, username: "jack", password: "jack", 
    firstname: "jack", lastname: "jack", email: "jack@example.com", 
    phone:555)

Student.create(classe_id: 1, username: "tom", password: "tom", 
    firstname: "tom", lastname: "tom", email: "tom@example.com", 
    phone:666)