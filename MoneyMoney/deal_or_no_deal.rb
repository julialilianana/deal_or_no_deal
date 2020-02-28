class Game
def initialize
    @briefcases = [1, 5, 10, 75, 100, 500, 750, 2500,50000,100000,200000,300000,400000,750000,1000000]
    @current_cases = @briefcases.shuffle
    @player_name = ""
    @first_pick = []
    @display_cases = @current_cases
    @player_select = 0
    @player_select1 = 0
    @player_select2 = 0
    @player_select3 = 0
    @player_select4 = 0
    @player_select5 = 0
    @player_select6 = 0
    @player_select7 = 0
    @player_select8 = 0
    @player_select9 = 0
    @player_select10 = 0
    @player_select11 = 0
    @player_select12 = 0
    @player_select13 = 0
    @player_select14 = 0

end

# These are our Methods ------------------------------------------
    def current_cases
        p @current_cases
    end
    def get_first
        p @first_pick
    end
    def get_display
        @display_cases = @current_cases.sort
        puts "Here are your briefcases: #{@display_cases}"
        puts "\n"
        puts 'Please note that these briefcases are not in order.'
        puts "\n"
    end
    def transition
        puts "\n"
        puts "Press Enter to continue."
        value = gets
    end

    def greeter
        puts "Welcome to Deal or No Deal, please enter your name."
        @player_name = gets.chomp
        puts "\n"
        puts "Welcome, #@player_name. Here is how you play: In this game you will have 15 briefcases. The game has 7 rounds and you will be asked to remove a certain number of briefcases each round. At the end of each round the banker will call in an offer which is a special one time only deal and you can choose to take the deal or not. If you arrive at the final round you will have a choice between the first briefcase you chose and the final briefcase. Good luck!"
        puts "\n"
    end
    def banker
        puts "\n"
        case_sum = @current_cases.reduce(0) {|sum, n| sum + n }
        banker_offer = (case_sum / @current_cases.length) * 0.1
        puts "Hello #{@player_name}, this is the banker. I would like to make a deal with you. Here is what I can offer you: $#{banker_offer.round(2)}"
        transition
        puts "Would you like to accept this offer #{@player_name}, y/n?"
        accept = gets.chomp
        while !(accept == "y" || accept == "n")
            puts "Please enter 'y' or 'n'"
            accept = gets.chomp
        end
        if accept == "y"
            p "Congratulations #{@player_name}, you are walking away with #{banker_offer}"
        elsif accept == "n"
            p "Let's keep going! you have #{@current_cases.length} briefcases left"
        end

    end

    def pre_round
        puts "Welcome to the pre round, please choose 1 briefcase to store for the final round."
        puts "\n"
        puts "Enter a number between 1 and 15 please."
        @player_select = gets.chomp.to_i - 1
        while !(@player_select >= 0 && @player_select <= 14)
            puts "Enter a number between 1 and 15 please."
            @player_select = gets.chomp.to_i - 1
        end
            @first_pick << @current_cases[@player_select]
            @current_cases.delete_at(@player_select)
        puts "Thank you for your choice. We have stored your selection in the vault."
        puts "\n"
    end

    def round_one
        puts "Welcome to round 1. Choose 3 briefcases to remove"
        puts "\n"
        puts "Select first briefcase. Choose a number between 1 and #{@current_cases.length}"
        @player_select1 = gets.chomp.to_i - 1
        while !(@player_select1 >= 0 && @player_select1 <= @current_cases.length-1)
            puts "Enter a number between 1 and #{@current_cases.length} please"
            @player_select1 = gets.chomp.to_i - 1
        end
        @current_cases.delete_at(@player_select1)
        puts "Select second briefcase. Choose a number between 1 and #{@current_cases.length}"
        @player_select2 = gets.chomp.to_i - 1
        while !(@player_select2 >= 0 && @player_select2 <= @current_cases.length-1)
            puts "Enter a number between 1 and #{@current_cases.length} please"
            @player_select2 = gets.chomp.to_i - 1
        end
        @current_cases.delete_at(@player_select2)
        puts "Select third briefcase. Choose a number between 1 and #{@current_cases.length}"
        @player_select3 = gets.chomp.to_i - 1
        while !(@player_select3 >= 0 && @player_select3 <= @current_cases.length-1)
            puts "Enter a number between 1 and #{@current_cases.length} please"
            @player_select3 = gets.chomp.to_i - 1
        end
        @current_cases.delete_at(@player_select3)
    end
    def round_two
        puts "Welcome to round 2. Choose 3 briefcases to remove."
        puts "\n"
        puts "Select first briefcase. Choose a number between 1 and #{@current_cases.length}."
        @player_select4 = gets.chomp.to_i - 1
        while !(@player_select4 >= 0 && @player_select4 <= @current_cases.length-1)
            puts "Enter a number between 1 and #{@current_cases.length} please."
            @player_select4 = gets.chomp.to_i - 1
        end
        @current_cases.delete_at(@player_select4)
        puts "Select second briefcase. Choose a number between 1 and #{@current_cases.length}."
        @player_select5 = gets.chomp.to_i - 1
        while !(@player_select5 >= 0 && @player_select5 <= @current_cases.length-1)
            puts "Enter a number between 1 and #{@current_cases.length} please."
            @player_select5 = gets.chomp.to_i - 1
        end
        @current_cases.delete_at(@player_select5)
        puts "Select third briefcase. Choose a number between 1 and #{@current_cases.length}."
        @player_select6 = gets.chomp.to_i - 1
        while !(@player_select6 >= 0 && @player_select6 <= @current_cases.length-1)
            puts "Enter a number between 1 and #{@current_cases.length} please."
            @player_select6 = gets.chomp.to_i - 1
        end
        @current_cases.delete_at(@player_select6)
    end
    def round_three
        puts "Welcome to round 3. Choose 2 briefcases to remove"
        puts "Select first briefcase. Choose a number between 1 and #{@current_cases.length}"
        @player_select7 = gets.chomp.to_i - 1
        while !(@player_select7 >= 0 && @player_select7 <= @current_cases.length-1)
            puts "Enter a number between 1 and #{@current_cases.length} please"
            @player_select7 = gets.chomp.to_i - 1
        end
        @current_cases.delete_at(@player_select7)
        puts "Select second briefcase. Choose a number between 1 and #{@current_cases.length}"
        @player_select8 = gets.chomp.to_i - 1
        while !(@player_select8 >= 0 && @player_select8 <= @current_cases.length-1)
            puts "Enter a number between 1 and #{@current_cases.length} please"
            @player_select8 = gets.chomp.to_i - 1
        end
        @current_cases.delete_at(@player_select8)
    end
    def round_four
        puts "Welcome to round 4. Choose 2 briefcases to remove"
        puts "Select first briefcase. Choose a number between 1 and #{@current_cases.length}"
        @player_select9 = gets.chomp.to_i - 1
        while !(@player_select9 >= 0 && @player_select9 <= @current_cases.length-1)
            puts "Enter a number between 1 and #{@current_cases.length} please"
            @player_select9 = gets.chomp.to_i - 1
        end
        @current_cases.delete_at(@player_select9)
        puts "Select second briefcase. Choose a number between 1 and #{@current_cases.length}"
        @player_select10 = gets.chomp.to_i - 1
        while !(@player_select10 >= 0 && @player_select10 <= @current_cases.length-1)
            puts "Enter a number between 1 and #{@current_cases.length} please"
            @player_select10 = gets.chomp.to_i - 1
        end
        @current_cases.delete_at(@player_select10)
    end
    def round_five
        puts "Welcome to round 5. Choose 2 briefcases to remove"
        puts "Select first briefcase. Choose a number between 1 and #{@current_cases.length}"
        @player_select11 = gets.chomp.to_i - 1
        while !(@player_select11 >= 0 && @player_select11 <= @current_cases.length-1)
            puts "Enter a number between 1 and #{@current_cases.length} please"
            @player_select11 = gets.chomp.to_i - 1
        end
        @current_cases.delete_at(@player_select11)
        puts "Select second briefcase. Choose a number between 1 and #{@current_cases.length}"
        @player_select12 = gets.chomp.to_i - 1
        while !(@player_select12 >= 0 && @player_select12 <= @current_cases.length-1)
            puts "Enter a number between 1 and #{@current_cases.length} please"
            @player_select12 = gets.chomp.to_i - 1
        end
        @current_cases.delete_at(@player_select12)
    end
    def round_six
        puts "Welcome to round 6. Choose 1 briefcases to remove"
        puts "Select the briefcase. Choose a number between 1 and #{@current_cases.length}"
        puts "Here are the remaining cases #{@display_cases}"
        puts "Choose wisely"
        @player_select13 = gets.chomp.to_i - 1
        while !(@player_select13 >= 0 && @player_select13 <= @current_cases.length-1)
            puts "Enter a number between 1 and #{@current_cases.length} please"
            @player_select13 = gets.chomp.to_i - 1
        end
        @current_cases.delete_at(@player_select13)
    end
    def final_banker
        case_sum = @current_cases.reduce(0) {|sum, n| sum + n }
        banker_offer = (case_sum / @current_cases.length) * 0.1
        puts "Hello #{@player_name}, this is the banker. I would like to make a deal with you. Here is what I can offer you: $#{banker_offer.round(2)}"
        transition
        puts "Would you like to accept this offer y/n?"
        accept = gets.chomp
        while !(accept == "y" || accept == "n")
            puts "Please enter 'y' or 'n'"
            accept = gets.chomp
        end
        if accept == "y"
            p "Congratulations #{@player_name}, you are walking away with #{banker_offer}"
        elsif accept == "n"

        end

    end
    def final_round_transition
        puts "We are now going into our Final Round. We are bringing back the first case from the vault.  You have 2 briefcases to choose from. You may choose to walk away with that first case or the final case in front of you."
    end
    def final_round
        @current_cases<<@first_pick[0]
        puts "Choose 1 briefcase to walk away with. Good luck, #{@player_name}!"
        puts "Select the briefcase. Choose a number between 1 and #{@current_cases.length}"
        p @current_cases
        @player_select14 = gets.chomp.to_i - 1
        while !(@player_select14 >= 0 && @player_select14 <= @current_cases.length-1)
            puts "Enter a number between 1 and #{@current_cases.length} please"
            @player_select14 = gets.chomp.to_i - 1
        end
        p "Congratulations #{@player_name}, you're walking away with: $#{@current_cases[@player_select14]}"
    end

end
# This is our story ____________________________________________________________
d_o_n_d = Game.new

# d_o_n_d.current_cases
d_o_n_d.greeter
d_o_n_d.get_display
d_o_n_d.transition
d_o_n_d.pre_round
# d_o_n_d.get_first
# d_o_n_d.current_cases
d_o_n_d.round_one
# d_o_n_d.current_cases
d_o_n_d.banker
d_o_n_d.transition
d_o_n_d.round_two
# d_o_n_d.current_cases
d_o_n_d.banker
d_o_n_d.transition
d_o_n_d.round_three
d_o_n_d.get_display
# d_o_n_d.current_cases
d_o_n_d.banker
d_o_n_d.transition
d_o_n_d.round_four
# d_o_n_d.current_cases
d_o_n_d.banker
d_o_n_d.transition
d_o_n_d.round_five
# d_o_n_d.current_cases
d_o_n_d.banker
d_o_n_d.transition
d_o_n_d.round_six
# d_o_n_d.current_cases
d_o_n_d.final_banker
d_o_n_d.final_round_transition
d_o_n_d.final_round
