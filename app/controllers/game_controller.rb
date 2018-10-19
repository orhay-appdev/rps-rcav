class GameController < ApplicationController
    def user_plays_rock
         @computer_move = ["rock","paper","scissors"].sample 
         if @computer_move == "rock" 
        @outcome = "tied" 
        elsif @computer_move == "paper"  
        @outcome = "lost" 
        else @outcome = "won" 
           end
        render("move_templates/played_rock.html.erb")
    end
    
    def user_plays_paper
         @computer_move = ["rock","paper","scissors"].sample 
         if @computer_move == "rock" 
        @outcome = "won" 
        elsif @computer_move == "paper"  
        @outcome = "tied" 
        else @outcome = "lost" 
           end
        render("move_templates/played_paper.html.erb")
    end
    
    def user_plays_scissors
         @computer_move = ["rock","paper","scissors"].sample 
         if @computer_move == "rock" 
        @outcome = "lost" 
        elsif @computer_move == "paper"  
        @outcome = "won" 
        else @outcome = "tied" 
           end
        render("move_templates/played_scissors.html.erb")
    end
    
    def index
        render("move_templates/index.html.erb")
    end
    
    if @outcome=="won"
        @color="success"
        elsif @outcome == "lost"
        @color = "danger"
    else
        @color = "warning"
    end
end