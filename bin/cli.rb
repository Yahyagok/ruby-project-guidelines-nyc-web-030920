class Cli 
      def run
           welcome 
          login_or_create_account 
       #    interest
       #    create_meetup 

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
        answer =  $prompt.select("what would you like to do?",%w(LOG_IN CREATE_A_NEW_ACCOUNT))
    if answer == "LOG_IN"
         @respond =  $prompt.ask('What is your name? >>>') do |user1|
         user1.required true
         user1.messages[:required?] = "Enter a username to continue...  "
         user1.messages[:valid?] = "Username taken, please try again..."
      end 
    if @user = User.find_by(name:@respond)
       @user = User.find_by(name:@respond)
              puts "------------------------------------------------------------------------------------------"
              puts "                                       WELCOME BACK #{@user.name}                         "
              puts "------------------------------------------------------------------------------------------"
              user_book
              user_film 
              user_photography
             # log_in_user_table 
             updated_table 
     else 
             puts "You don't have an account, create a new account "
             login_or_create_account
         end
    
    
     elsif answer == "CREATE_A_NEW_ACCOUNT"
          @respond_new =  $prompt.ask('What is your name? >>>') do |user|
         user.required true
         user.messages[:required?] = "Enter a username to continue... "
         user.messages[:valid?] = "Username taken, please try again..."
          end
        if  @person = User.create(name:@respond_new)
          
          
          puts "------------------------------------------------------------------------------------------"
          puts "                                       WELCOME  #{@person.name}                             "
          puts "------------------------------------------------------------------------------------------"
         
         
         
         end 
       end 
       interest
       create_meetup
       do_next
    end 
    # def new_user_meetup
    #   binding.pry
    #   @userb = @person.meetups.find{|meetup| meetup}
    # end
    def new_user_update_book
       @respond.meetups do |meetup|
        meetup.book = @respond_interest1
        meetup.save
      end
    end 
   #------------------------------------------------------------------------------------user---------------------------------------------------------------------------------------

    def user_meetup
      @user_meetup =  @user.meetups
      # p @user_meetup[0].book
    end

    def user_books
      # array of books
      @user_books = user_meetup.map do |meetup|
        meetup.book
      end
    end

    def user_films
      user_meetup.map do |meetup|
        meetup.film
      end
    end
    def user_film
      user_films.each do |film|
        puts "#{@respond}'s film clubs: #{film}"
      end
    end
    
    def user_photographies
        user_meetup.map do |meetup|
          meetup.photography
      end 
    end 

    def user_photography
      user_photographies.map do |photography|
      puts "#{@respond}'s photography clubs: #{photography}"
      end 
    end 


    def user_book
       user_books.each do |book|
      puts "#{@respond}'s book clubs: #{book}"
    end
  end 

    # def user_meetup
    #   @usera =  @user.meetups.find{|meetup| meetup}
    # end
    # def save
    #   @usera.user.name = @respond
    # end 

    # def user_book
        
    #     puts "#{@respond}'s  book club #{user_meetup.book} "
    # end 

    # def user_film 
    #   puts "#{@respond}'s  film club #{user_meetup.film} "
    # end 

    # def user_photography
    #   puts "#{@respond}'s  photography club #{user_meetup.photography} "
    # end 
    def interest 
      
         answer = $prompt.select("What is your interest? >>>", %w(book film business tech art photography learning))
        if answer == "book" 
         puts "this week's book of meetup group "
         @respond_interest1 = $prompt.select('please choose one of these book to attend the meet up group', %w(learn_ruby innocent_guy imposible_love pure_love lost_island king_arthur )) 
         update_book 
        #  add_meetup =  Meetup.find_or_create_by(book: @respond_interest1 ||  user_meetup.book )

        #  puts "You are going to attend #{add_meetup[:book]} book review ,this group has #{add_meetup[:capacity]} person from meetup."
        #  puts "if you will attend this group, company gives  #{add_meetup[:discount_percent]} percent off for #{add_meetup[:book]} book "
        #  puts "Also we have this week event is  #{add_meetup[:this_weeks_event]}  that you might be interested  "
         
      
      elsif answer == "film" 
      puts "this week's film of meetup group"
      @respond_interest2 = $prompt.select('please choose one of these activity to attend the meet up group', %w(three_monkey gora  god_father flight sully unbreakable jumanji toy_story 1917 invisible_man star_wars forrest_gump a_beautiful_mind ))
      update_film 
       # add_meetup1 = Meetup.find_or_create_by(film: @respond_interest2 || user_meetup.film )
      # puts "You are going to attend #{add_meetup1[:film]} book review ,this group has #{add_meetup1[:capacity]} person from meetup."
      # puts "if you will attend this group, company gives  #{add_meetup1[:discount_percent]} percent off for #{add_meetup1[:book]}  book"
      # puts "Also we have this week event is  #{add_meetup1[:this_weeks_event]}  that you might be interested"
      

     elsif answer == "photography"
      puts "this week's photograpy of meetup groups"
      @respond_interest3 = $prompt.select('please choose one of these activity to attend the meet up group', %w(brooklyn_museum digital_photography fashion_photography jersey_city_photography hiking_photography landscape_photography))
      update_photography
      # add_meetup2 = Meetup.find_or_create_by(photography: @respond_interest3 || user_meetup.photography )
      # puts "You are going to attend #{add_meetup2[:photography]} meetup ,this group has #{add_meetup2[:capacity]} person from meetup."
      # puts "if you will attend this group, company gives  #{add_meetup2[:discount_percent]} percent off for #{add_meetup2[:film]}  film"
      # puts "Also we have this week event is  #{add_meetup2[:this_weeks_event]}   that you might be interested"
     end
    #  @meetup = Meetup.find_or_create_by(book:@respond_interest1 || user_book, film:@respond_interest2 || user_film,photography:@respond_interest3 || user_photography)
      
       do_next 
      #  update
   end 
    def log_in_user_update
      # update
      puts "----------------------------CLICK ON INTEREST THAT YOU WOULD LIKE TO UPDATE--------------------------------------------"
      interest
      # update
    
      
    end 

    def update_book
     @user.meetups do |meetup|
      meetup.book = @respond_interest1
      meetup.save 
     end
    end 

    def update_film 
      @user.meetups do |meetup|
        meetup.film = @respond_interest2
        meetup.save
      end 
    end 

    def update_photography
      @user.meetups do |meetup|
        meetup.photography = @respond_interest3
        meetup.save
      end 
    end 

    


    
        #  user = User.find_by(name: 'David')
        #       user.name = 'Dave'
        #        user.save 






    # def update
    #   if user_book.update(book:@respond_interest1)
    #     user_book.update(book:@respond_interest1)
    #    else 
    #     user_book
    #   end 

    #   if user_film.update(film:@respond_interest2)
    #     user_film.update(film:@respond_interest2)
    #   else
    #     user_film
    #   end

    #   if user_photography.update(photography:@respond_interest3)
    #     user_photography.update(photography:@respond_interest3)
    #   else
    #     user_photography
    #   end 

    # end 



     def do_next
        
      $prompt.select("what would you like to do next?", filter: true) do |action|
              
              action.choice 'return main menu', -> {interest}
              action.choice 'exit', -> {exit_meetup}
              action.choice 'delete_account', -> {delete}
              action.choice 'see your meetups', -> {updated_table}
              # action.choice 'uptade a meetup', -> {updated_table}
          end 

     end 

     def exit_meetup 
      
      puts $pastel.red($font.write("                                           GOOD"))
      puts $pastel.red($font.write("                                  BYE    (^_^)"))
      login_or_create_account 
     end 


     def single_club 
        @respond_status =  $prompt.select('What is your status ? >>>',%w(single tie_the_knot ))
          if respond == "tie_the_knot"
          puts "Sorry, You can not attend this club"
          do_next 
          else 
          puts "have fun"
          end    
     end 

     def age_limit 
      @respond_age =  $prompt.ask('What is your age ? >>>')
        if respond.to_i < 14
        puts "Sorry, You can not attend this club"
        do_next 
        else 
        puts "have fun"
        end    
     end 

     def delete 
      answer = $prompt.ask(' would you like to delete your account?(yes or no) >>>')
      if answer =="yes"

         Meetup.last.delete || @user.delete
      # elsif answer == "film"
      #   Meetup.last.film.delete #|| new_user_meetup.film.delete
      # elsif answer == "photography"
      #   Meetup.last.photography.delete #|| new_user_meetup.photography.delete
      end 
     end 


     def log_in_user_table 
      
                        puts "-------------------------------------------------------------------"
                        puts "                        #{@user.name} 'S MEET UP GROUPS            "
                        puts "-------------------------------------------------------------------"
                                                       user_book                                
                        puts "-------------------------------------------------------------------" 
                                                       user_film                               
                        puts "-------------------------------------------------------------------"
                                                    user_photography 
                        puts "-------------------------------------------------------------------"
     end 

     def updated_table 

                         puts "-------------------------------------------------------------------"
                         puts "                        #{@user.name} 'S MEET UP GROUPS            "
                         puts "-------------------------------------------------------------------"
                                                      @respond_interest1 || user_book                       
                         puts "-------------------------------------------------------------------" 
                                                      @respond_interest2  || user_film                           
                         puts "-------------------------------------------------------------------"
                                                      @respond_interest3 || user_photography
                         puts "-------------------------------------------------------------------"


     end 

   

    def create_meetup 
        #  @meetup

                         puts "-------------------------------------------------------------------"
                         puts "                        #{@respond} 'S MEET UP GROUPS              "
                         puts "-------------------------------------------------------------------"
                                                               user_book                              
                         puts "-------------------------------------------------------------------" 
                                                               user_film                              
                         puts "-------------------------------------------------------------------"
                                                            user_photography                              
                         puts "-------------------------------------------------------------------"
    end 

    def find_user_meetup
      @user.meetups.select do |meetup|
        meetup == @meetup 
      end

    end
 end


 





 

    
 



 

    