require_relative 'student'

student1 = Student.new(id:1, last_name:'Васильев', first_name:'Олег', middle_name:'Отчество', phone_number:'11111111111', telegram:'oleg', mail:'oleg@mail.ru', git:'https://github.com/OlegVasil')
student2 = Student.new(id:2, last_name:'Нагалевский', first_name:'Артём', middle_name:'Михайлович', phone_number:'+79186768777', telegram:'jakepps', mail:'artem@mail.ru', git:'https://github.com/Jakepps')
student3 = Student.new(id:3, last_name:'Воронин', first_name:'Георгий', middle_name:'Евгеньевич', phone_number:'+79186532003', telegram:'shin8u', mail:'shin8u@yandex.ru', git:'https://github.com/shin8u')
puts student1
