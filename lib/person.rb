require "pry"
class Person

  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(change)
    @happiness = change
    if @happiness > 10
      return @happiness = 10
    elsif @happiness < 0
      return @happiness = 0
    else
      return @happiness
    end
  end

  def hygiene=(change)
    @hygiene = change
    if @hygiene > 10
      return @hygiene = 10
    elsif @hygiene < 0
      return @hygiene = 0
    else
      return @hygiene
    end
  end

  def happy?
    return @happiness > 7 ? true : false
  end

  def clean?
    return @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)

    if topic == "weather"
      person.happiness += 1
      self.happiness  += 1
    end

    if topic == "politics"
     person.happiness -= 2
     self.happiness -= 2
    end

    if topic == "politics"
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      return "blah blah sun blah rain"
    end

   if topic != ("politics" && "weather")
    return "blah blah blah blah blah"
   end

  end
end
