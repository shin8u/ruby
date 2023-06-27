require_relative 'student'

class Student_short < Student
    attr_reader :id, :short_name, :git, :contact

    def initialize(student)
        @short_name = student.short_name(student.last_name, student.first_name, student.middle_name)
        @git = student.git
        @contact = student.get_contact(student.phone_number, student.telegram, student.mail)
        @id = student.id
    end


    def to_s
        res = "ФИО: #{short_name}"
        res += " id: #{id}" unless id.nil?
        res += " #{contact}"
        res += " git: #{git}" unless git.nil?
        res
    end

end
