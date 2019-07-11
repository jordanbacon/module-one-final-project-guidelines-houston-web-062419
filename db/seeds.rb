Students.destroy_all
Houses.destroy_all
Values.destroy_all

s1 = Students.create(name: 'Harry Potter', email_address: 'hpotter@hogwarts.edu')
s2 = Students.create(name: 'Draco Malfoy', email_address: 'dmalfoy@hogwarts.edu')
s3 = Students.create(name: 'Cedric Diggory', email_address: 'cdiggory@hogwarts.edu')
s4 = Students.create(name: 'Luna Lovegood', email_address: 'llovegood@hogwarts.edu')
s5 = Students.create(name: 'Hermione Granger', email_address: 'hgranger@hogwarts.edu')
s6 = Students.create(name: 'Pansy Parkinson', email_address: 'pparkinson@hogwarts.edu')

h1 = Houses.create(house_name: 'Gryffindor', founder: 'Godric Gryffindor', ideal: ['courage', 'bravery'])
h2 = Houses.create(house_name: 'Hufflepuff', founder: 'Helga Hufflepuff', ideal: 'loyalty')
h3 = Houses.create(house_name: 'Ravenclaw', founder: 'Rowena Ravenclaw', ideal: 'intelligence')
h4 = Houses.create(house_name: 'Slytherin', founder: 'Salazar Slytherin', ideal: ['ambition', 'resourcefulness'])

Values.create(student_id: s1.id, house_id: h1.id) 
Values.create(student_id: s2.id, house_id: h4.id) 
Values.create(student_id: s3.id, house_id: h2.id) 
Values.create(student_id: s4.id, house_id: h3.id) 
Values.create(student_id: s5.id, house_id: h1.id) 
Values.create(student_id: s6.id, house_id: h4.id) 
