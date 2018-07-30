# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
student1 = Student.create(name: "Jeffrey", email: "jeff@gmail.com", password: "jeffspassword")
student2 = Student.create(name: "Dana", email: "dana@gmail.com", password: "danaspassword")
student3 = Student.create(name: "Lisa", email: "lisa@gmail.com", password: "lisaspassword")
student4 = Student.create(name: "Jamel", email: "jamel@yahoo.com", password: "jamelspassword")

teacher1 = Teacher.create(name: "Ms.Scoop", email: "msscoop@umd.edu", password: "greatest")
course1 = Course.create(name: "English")
teacher1.courses << course1
teacher1.save

teacher2 = Teacher.create(name: "Mr.Bean", email: "beany@umd.edu", password: "frijoles")
course2 = Course.create(name: "Physics")
teacher2.courses << course2
teacher2.save

teacher3 = Teacher.create(name: "Ms.Lola", email: "mslola@umd.edu", password: "cheaya")
course3 = Course.create(name: "Spanish")
course4 = Course.create(name: "French")
course5 = Course.create(name: "Civics")
teacher3.courses << course3
teacher3.courses << course4
teacher3.courses << course5
teacher3.save

student1.courses << course1
student1.courses << course2
student1.save

student2.courses << course1
student2.courses << course3
student2.save

student3.courses << course4
student3.courses << course5
student3.save

student4.courses << course1
student4.courses << course5
student4.save
