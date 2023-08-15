require File.expand_path("../student_short", __FILE__)

class Student < Student_short
    attr_reader :id, :last_name, :first_name, :middle_name, :phone_number, :telegram, :mail, :git

    def initialize(id:nil, last_name:nil, first_name:nil, middle_name:nil, git:nil, phone_number:nil, mail:nil, telegram:nil)
        super
        self.last_name = last_name
        self.first_name = first_name
        self.middle_name = middle_name
        set_contacts(telegram:telegram, phone_number:phone_number, mail:mail)
    end

    def self.is_name?(name)
        name.match(/^[А-Яа-я]+|[A-Za-z]+$/)
    end
    
    def self.is_telegram?(telegram)
        telegram.match(/^[A-Za-z\d_-]+$/)
    end
    
    def self.is_mail?(mail)
        mail.match(/^[A-Za-z\d]+@[A-Za-z\d]+\.[\w]+/)
    end
    
    def self.is_phone_number?(phone_number)
        phone_number.match(/^\+?[78][-\(]?\d{3}\)?-?\d{3}-?\d{2}-?\d{2}$/)
    end

    def has_git?
        !git.nil?
    end
    
    def has_contact?
        !phone.nil? || !telegram.nil? || !mail.nil?
    end
    
    def validate
       has_git? && has_contact?
    end
    
    def set_contacts(mail:nil, phone_number:nil, telegram:nil)
       self.mail = mail
       self.phone_number = phone_number
       self.telegram = telegram
    end

    def last_name=(last_name)
        raise ArgumentError unless last_name.nil? || Student.is_name?(last_name)
        @last_name = last_name
    end
    
    def first_name=(first_name)
        raise ArgumentError unless first_name.nil? || Student.is_name?(first_name)
        @first_name = first_name
    end
    
    def middle_name=(middle_name)
        raise ArgumentError unless middle_name.nil? || Student.is_name?(middle_name)
        @middle_name = middle_name
    end
    
    def phone_number=(phone_number)
        raise ArgumentError unless phone_number.nil? || Student.is_phone_number?(phone_number)
        @phone_number = phone_number
    end
    
    def telegram=(telegram)
        raise ArgumentError unless telegram.nil? || Student.is_telegram?(telegram)
        @telegram = telegram
    end
    
    def mail=(mail)
        raise ArgumentError unless mail.nil? || Student.is_mail?(mail)
        @mail = mail
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


    def getInfo
        info = short_name + "\n" + contact
        info += "\n" + "гит: #{git}" unless git.nil?
        info
    end
end
