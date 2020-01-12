# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(number)
        if number > 10
            @happiness = 10
        elsif number < 0
            @happiness = 0
        elsif number.between?(0, 10)
            @happiness = number
        end
    end

    def hygiene=(number)
        if number > 10
            @hygiene = 10
        elsif number < 0
            @hygiene = 0
        elsif number.between?(0, 10)
            @hygiene = number
        end
    end

    def happy?
        self.happiness > 7 
    end

    def clean?
        self.hygiene > 7 
    end

    def get_paid(salary)
        self.bank_account += salary
        'all about the benjamins'
    end

    def take_bath
        current_hygiene = self.hygiene

        self.hygiene = (current_hygiene + 4)
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        current_hygiene = self.hygiene
        current_happiness = self.happiness

        self.hygiene = (current_hygiene - 3)
        self.happiness = (current_happiness + 2)
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        current_happiness = self.happiness
        current_friend_happiness = friend.happiness

        self.happiness = (current_happiness + 3)
        friend.happiness = (current_friend_happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        current_happiness = self.happiness
        current_person_happiness = person.happiness

        case topic
        when "politics"
            self.happiness = (current_happiness - 2)
            person.happiness = (current_person_happiness - 2)
            'blah blah partisan blah lobbyist'
        when "weather"
            self.happiness = (current_happiness + 1)
            person.happiness = (current_person_happiness + 1)
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end
end