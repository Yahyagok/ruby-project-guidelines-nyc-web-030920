class Cli    
def run
  # welcome 
  # login_or_create_account 
  interest_book


end 

def welcome 

   puts "THE WORLD IS CALLNG YOU".colorize(:light_cyan)
   puts "CATEGORIES".colorize(:green)
   puts "CHOSE YOUR INTEREST AND HANGOUT WITH THE OTHER PEOPLE BOOKS,FILMS,BUSINESS,TECH,ART,PHOTOGRAPHY,LEARINING" .colorize(:green)
   
end 


def login_or_create_account 

    puts "Would you like to login or create a new account "
    puts "you can simply type yes or create "
    answer = gets.chomp.downcase

    if answer == "yes"
      puts "type your name"
      print "type yer or create : "
      respond = gets.chomp
      sign_up = User.find_or_create_by(name:respond)
      puts "WELCOME AGAIN #{respond}"
    elsif answer == "create"
      puts "type your name please"
      print "Enter your name : "
      respond1 = gets.chomp
      sing_up = User.create(name:respond1)
    end 
 end

 def interest_book 
    # add person to that meetup group 
    # make capacity one more up 
    # puts you are added to that meet up 
    # meet up added to your calender
      puts "choose your category"
      print "choose on of these category: book, film, business, tech, art, photograpy,learning:"
      answer = STDIN.gets.chomp 
      if answer == "book" 
       puts " this weeks,book reviews book_names three monkey "
       puts "simply type three monkey"
       respond = STDIN.gets.chomp
       add_meetup =  Meetup.find_by(book: respond)

      end 
 end 
 







  end
      






 