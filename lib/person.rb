require 'pry'
class Person
        attr_reader :name  , :happiness , :hygiene
        attr_accessor  :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        case value
        when 0..10
            @happiness = value
        else
            if value < 0 
                @happiness = 0
            elsif value > 10
                @happiness = 10
            end
        end
    end


    def hygiene=(value) 
        case value
        when 0..10
            @hygiene = value
        else
            if value < 0 
                @hygiene = 0
            elsif value > 10
                @hygiene = 10
            end
        end  
    end

    def happy?
        (@happiness > 7) ? true : false 
    end

    def clean?
        (@hygiene > 7) ? true : false
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(@happiness + 2)
        self.hygiene=(@hygiene - 3)
        "♪ another one bites the dust ♫"
    end

    def call_friend(freind)
        Person.new(freind)
        self.happiness=(@happiness + 3)
        freind.happiness=(freind.happiness + 3)
        "Hi #{freind.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(freind, topic)
        case topic 

        when "politics"
            self.happiness=(@happiness - 2)
            freind.happiness=(freind.happiness - 2)
            "blah blah partisan blah lobbyist"

        when "weather"
            self.happiness=(@happiness + 1)
            freind.happiness=(freind.happiness + 1)
            "blah blah sun blah rain"
        
        else    "blah blah blah blah blah"
        end 
    end

end