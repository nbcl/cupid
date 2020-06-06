# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# gustos = Gusto.create([{ nombre: 'Musica', descripcion: 'Te gusta la musica' },
#                        { nombre: 'Comida', descripcion: 'Te gusta la comida' }])
#
admin = Admin.new(email: 'admin@admin.cl', password: '123456')
admin.save

# comentario = Comentario.new(fecha: '12/12/2020', contenido: 'Hola', user: User.find(14), local: Local.find(5))
#
Comuna.destroy_all
vitacura = Comuna.create!(nombre:'Vitacura')
lascondes = Comuna.create!(nombre:'Las Condes')
san = Comuna.create!(nombre:'San Joaquin')
santiago = Comuna.create!(nombre:'Santiago')
providencia = Comuna.create!(nombre:'Providencia')
nuble = Comuna.create!(nombre:'Nuble')
chicureo = Comuna.create!(nombre:'Chicureo')


