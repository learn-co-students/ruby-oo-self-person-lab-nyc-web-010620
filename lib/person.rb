# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account, :happiness

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = happiness.clamp(0,10)
    end

    def hygiene=(hygiene)
        @hygiene =hygiene.clamp(0,10)
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person,topic)
        case topic
        when 'politics'
            fill_ins = [-2, 'partisan', 'lobbyist']
        when 'weather'
            fill_ins = [1, 'sun', 'rain']
        else
            fill_ins = [0, 'blah', 'blah']
        end

        self.happiness += fill_ins[0]
        person.happiness += fill_ins[0]
        return "blah blah #{fill_ins[1]} blah #{fill_ins[2]}"
    end
end