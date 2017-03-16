# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categorias= Category.create([
{nombre: "construccion casa", area: "construccion"}, 
{nombre: "construccion edificio", area: "construccion"},
 {nombre: "construccion galpones", area: "construccion"}, 
 {nombre: "construccion Piscina", area: "construccion"},
 {nombre: "arquitectos", area: "construccion"}, 
 {nombre:"demoliciones", area:"construccion"},
 {nombre:"instalaciones deportivas", area:"construccion"},
 {nombre:"excavaciones", area:"construccion"},
 {nombre:"ingenieros", area:"construccion"},
 {nombre: "aire acondicionado", area: "remodelacion"}, 
 {nombre: "aislamiento termico", area: "remodelacion"},
 {nombre: "ascensores", area: "remodelacion"},  
 {nombre: "albañil", area: "remodelacion"}, 
 {nombre: "calefaccion", area: "remodelacion"}, 
 {nombre: "carpinteria", area: "remodelacion"}, 
 {nombre: "domotica", area: "remodelacion"}, 
 {nombre: "electricistas", area: "remodelacion"}, 
 {nombre: "gasfiteria", area: "remodelacion"}, 
 {nombre: "insonorizacion", area: "remodelacion"}, 
 {nombre: "pintores", area: "remodelacion"}, 
 {nombre: "pisos", area: "remodelacion"},
 {nombre: "jardin", area: "remodelacion"}, 
 {nombre: "pintores", area: "remodelacion"},
 {nombre: "seguridad", area: "remodelacion"}, 
 {nombre: "techos", area: "remodelacion"},  
 {nombre: "toldos", area: "remodelacion"}, 
 {nombre: "yeseros", area: "remodelacion"}, 
 {nombre: "ventanas", area: "remodelacion"}])

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Plane.create([{nombre: "basico",precio: 5500, descripcion: "Utiliza nuestros servicios durante dos meses.", meses:2},
	{nombre: "avanzado", precio:15000, descripcion:"Aprovecha 6 meses de suscripción en nuestra pagina.", meses: 6},
	{nombre:"full",precio: 25000, descripcion:"Disfruta de nuestra pagina durante 12 meses",meses:12}])

SecurityQuestion.create([{locale: :de, name: '¿Cual es el nombre de su primera mascota?'},
	{locale: :de, name: '¿Cual fue el nombre de su primera escuela?'},
	{locale: :de, name: '¿Cual es el nombre de su abuela?'},
	{locale: :de, name: '¿Lugar de nacimiento de su madre?'},
	{locale: :de, name: '¿Cual es el dia de nacimiento de su padre?'}])