class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    @@all = []

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness.clamp(0,10)
        @hygiene = hygiene.clamp(0,10)

        @@all << self
    end


end