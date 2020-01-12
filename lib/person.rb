class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
@@all = []
    def initialize (name, bank_account=25, happiness =8 , hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene= hygiene
        @@all<< self
    end 

    def self.all
        @@all
    end

    def happiness
        if @happiness > 10 
          return 10 
        elsif @happiness < 0 
        return 0 
        else 
          return @happiness
        end 
      end 

      def hygiene
        if @hygiene > 10 
          return 10 
        elsif @hygiene < 0 
        return 0 
        else 
          return @hygiene
        end 
      end 

    def clean?
        if  @hygiene >7
            true
        else
            false
        end
    end

    def happy?
        if @happiness >7
            true
        else
            false
        end
    end

    def get_paid (salary)
     @bank_account += salary
     return 'all about the benjamins'
    end

    def take_bath 
        self.hygiene +=4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.happiness +=2
        self.hygiene -=3
    
        return "♪ another one bites the dust ♫"
    end
  

    def call_friend (friend)
        self.happiness +=3
        friend.happiness +=3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (person, topic)
        if topic =='politics' 
            self.happiness -=2
            person.happiness -=2
            return "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness +=1
            person.happiness +=1
            return 'blah blah sun blah rain'
        else  
            return "blah blah blah blah blah"
        end
    end
end
