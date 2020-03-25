
class Cli 
   
 def run
 
   welcome 
 login_or_create_account 
   interest
 end 

def welcome 
  #  system('start''music/raising_me.mp3')
 
   puts $pastel.bright_red($font.write("                                           WELCOME"))
   puts $pastel.bright_red($font.write("                             TO    MEETUP   APP"))
end 

# def play_music(file)
#   @pid = spawn( file )
  

# end

# def stop_music_at_exit(file)
#  @pid = fork{ exec 'mpg123','-q', file }

# end
def login_or_create_account 
 answer =  $prompt.select("what would you like to do?",%w(Log_in Create_a_new_account))
    
 if answer == "Log_in"
   
 
  respond =  $prompt.ask('What is your name? >>>') do |user|
    
  user.required true
  user.messages[:required?] = "Enter a username to continue...  "
  user.messages[:valid?] = "Username taken, please try again..."
    user1 =  User.find_by(name:respond)
    # if User.all.exists?(name:respond)
    #  interest 


    # end 
 
  end 

  elsif answer == "Create_a_new_account"
   respond1 =  $prompt.ask('What is your name? >>>') do |user|
    user.required true
    user.messages[:required?] = "Enter a username to continue...  "
    user.messages[:valid?] = "Username taken, please try again..."
    sing_up1 = User.create(name:respond1)
   end 
    end 
  end

 def interest 
       answer = $prompt.select("What is your interest? >>>", %w(book film business tech art photography learning))
      if answer == "book"
        puts "this week's book of meetup group "
        respond = $prompt.select('please choose one of these book to attend the meet up group', %w(learn_ruby innocent_guy imposible_love pure_love lost_island king_arthur )) 
        add_meetup =  Meetup.find_by(book: respond)
       puts "You are going to attend #{add_meetup[:book].colorize(:green)} book review ,this group has #{add_meetup[:capacity]} person from meetup."
       puts "if you will attend this group, company gives  #{add_meetup[:discount_percent]} percent off for #{add_meetup[:book].colorize(:green)} book "
       puts "Also we have this week event is  #{add_meetup[:this_weeks_event].capitalize.colorize(:blue)}  that you might be interested  "
      
    elsif answer == "film" 
      puts "this week's film of meetup group"
      respond1 = $prompt.select('please choose one of these activity to attend the meet up group', %w(three_monkey gora  god_father flight sully unbreakable jumanji toy_story 1917 invisible_man star_wars forrest_gump a_beautiful_mind ))
      add_meetup1 = Meetup.find_by(film: respond1)
      puts "You are going to attend #{add_meetup1[:film].colorize(:green)} book review ,this group has #{add_meetup1[:capacity]} person from meetup."
      puts "if you will attend this group, company gives  #{add_meetup1[:discount_percent]} percent off for #{add_meetup1[:book].colorize(:green)}  book"
      puts "Also we have this week event is  #{add_meetup1[:this_weeks_event].capitalize.colorize(:blue)}  that you might be interested"
      

    elsif answer == "photography"
      puts "this week's photograpy of meetup groups"
      respond2 = $prompt.select('please choose one of these activity to attend the meet up group', %w(brooklyn_museum digital_photography fashion_photography jersey_city_photography hiking_photography landscape_photography))
      add_meetup2 = Meetup.find_by(photography: respond2)
      puts "You are going to attend #{add_meetup2[:photography].colorize(:green)} meetup ,this group has #{add_meetup2[:capacity]} person from meetup."
      puts "if you will attend this group, company gives  #{add_meetup2[:discount_percent]} percent off for #{add_meetup2[:film].colorize(:green)}  film"
      puts "Also we have this week event is  #{add_meetup2[:this_weeks_event].capitalize.colorize(:blue)}  that you might be interested"
    end
      do_next
   end 

     def do_next
      $prompt.select("what would you like to next?", filter: true) do |action|
              
              action.choice 'return main menu', -> {interest}
              action.choice 'exit', -> {exit_meetup}
              # action.choice 'delete_account' -> {delete_my_account}
      end 

     end 

     def exit_meetup 
      puts $pastel.red($font.write("                                           GOOD"))
      puts $pastel.red($font.write("                                  BYE    (^_^)"))
      login_or_create_account 
     end 


     def single_club 
        respond =  $prompt.select('What is your status ? >>>',%w(single tie_the_knot ))
          if respond == "tie_the_knot"
          puts "Sorry, You can not attend this club"
          do_next 
          else 
          puts "have fun"
          end    
     end 

     def age_limit 
      respond =  $prompt.ask('What is your age ? >>>')
        if respond.to_i < 14
        puts "Sorry, You can not attend this club"
        do_next 
        else 
        puts "have fun"
        end    
     end 

    #  def delete_my_account 



    #  end 

      
 end


#  User.destroy_by(name: 'David')





 
  







 