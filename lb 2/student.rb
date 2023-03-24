class Student
    attr_accessor :id, :last_name, :first_name, :middle_name, :phone_number, :telegram, :mail, :git

    def initialize(last_name:, first_name:, middle_name:, id:nil, phone_number:nil, telegram:nil, mail:nil, git:nil)
        self.last_name = last_name
        self.first_name = first_name
        self.middle_name = middle_name
        self.id = id
        self.git = git
        self.phone_number = phone_number
        self.telegram = telegram
        self.mail = mail
        self.git = git
    end

    def to_s
        res = "ФИО: #{last_name} #{first_name} #{middle_name}"
        res += " id: #{id}" unless id.nil?
        res += " номер телефона: #{phone_number}" unless phone_number.nil?
        res += " телеграм: #{telegram}" unless telegram.nil?
        res += " почта: #{mail}" unless mail.nil?
        res += " git: #{git}" unless git.nil?
        res
    end
end
