require_relative 'student'
require_relative 'student_short'

student1 = Student_short.new(id:1, last_name:'Васильев', first_name:'Олег', middle_name:'Отчество', phone_number:'89184980098', telegram:'oleg', mail:'oleg@mail.ru', git:'OlegVasil')
student2 = Student_short.new(id:2, last_name:'Нагалевский', first_name:'Артём', middle_name:'Михайлович', phone_number:'+79186768777', telegram:'jakepps', mail:'artem@mail.ru', git:'Jakepps')
student3 = Student_short.new(id:3, last_name:'Воронин', first_name:'Георгий', middle_name:'Евгеньевич', phone_number:'+79186532003', telegram:'shin8u', mail:'shin8u@yandex.ru', git:'https://github.com/shin8u')

puts student1.to_s
puts student3.to_s


student_short1 = Student.new(id:1, last_name:'Васильев', first_name:'Олег', middle_name:'Отчество', phone_number:'89184980098', telegram:'oleg', mail:'oleg@mail.ru', git:'OlegVasil')

puts student_short1.getInfo

puts student_short1.to_s
