class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    @@all = []

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
            if happiness > 10
                happiness = 10
            end
        @hygiene = hygiene
            if hygiene > 10
                hygiene = 10

        @@all << self
    end


end