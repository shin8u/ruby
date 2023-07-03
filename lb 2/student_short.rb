class Student_short
    attr_reader :id, :short_name, :git, :contact

    def initialize(id:nil, last_name:nil, first_name:nil, middle_name:nil, git:nil, phone_number:nil, mail:nil, telegram:nil)
        self.short_name = "#{last_name} #{first_name[0]}. #{middle_name[0]}."
        self.git = git
        get_contact(telegram:telegram, phone_number:phone_number, mail:mail)
        self.id = id
    end

    def self.is_id?(id)
        id.to_s.match(/^\d+$/)
    end
    
    def self.is_short_name?(short_name)
        short_name.match(/^[А-Я][а-я]+\s+[А-Я]\.\s+[А-Я]\.$/)
    end

    def self.is_contact?(contact)
        contact.match(/^почта: [A-Za-z\d]+@[A-Za-z\d]+\.[\w]+/) || contact.match(/^номер телефона: \+?[78][-\(]?\d{3}\)?-?\d{3}-?\d{2}-?\d{2}$/) || contact.match(/^телеграм: [A-Za-z\d_-]+$/)
    end
    
    def self.is_git?(git)
        git.match(/^https:\/\/github\.com\/[A-Za-z\d]+$/) || git.match(/^[A-Za-z\d]+$/)
    end

    def id= (id)
        raise ArgumentError unless id.nil? || Student_short.is_id?(id)
        @id = id
    end

    def git= (git)
        raise ArgumentError unless git.nil? || Student_short.is_git?(git)
        @git = git
    end

    def contact=(contact)
        raise ArgumentError unless contact.nil? || Student_short.is_contact?(contact)
        @contact = contact
    end

    def short_name=(short_name)
        raise ArgumentError unless short_name.nil? || Student_short.is_short_name?(short_name)
        @short_name = short_name
    end



    def get_contact(phone_number: nil, telegram: nil, mail: nil)
        if !phone_number.nil? then
            self.contact = "номер телефона: #{phone_number}"
        elsif !telegram.nil?
            self.contact = "телеграм: #{telegram}"
        elsif !mail.nil?
            self.contact = "почта: #{mail}"
        else
           "" 
        end
    end   

    def to_s
        res = "ФИО: #{short_name}"
        res += " id: #{id}" unless id.nil?
        res += " #{contact}"
        res += " git: #{git}" unless git.nil?
        res
    end

end
