require 'tty-prompt'

$prompt = TTY::Prompt.new

def start
    puts 'Welcome to Hogwarts'
    
end

# def name
#     name = $prompt.ask('Welcome to Hogwarts, what is your name? ')
#     witchorwizard = %w(Witch Wizard)
#     answer = $prompt.select("Are you a witch or wizard? ", witchorwizard)

#     puts "Yer a #{answer}, #{name}"
    
# end

# def information
#     hash = $prompt.collect do
#         key(:name).ask('Name:')
#         key(:trait).ask('Trait:')
#         key(:favorite_house).ask('Favorite House:')
#     end
# end

$prompt = TTY::Prompt.new

def welcome

    puts "Welcome to Hogwarts!"
    puts "Please enter your information so we can add you to the Sorting Database."
    name = $prompt.ask('What is your name?', default: ENV['USER'])
    puts name
    email = $prompt.ask('What is your email address? (By entering email address, you agree to receive school communications via email...as well as owl post.)')
    puts email
    puts "Thank you! You have been added."

    Students.create(name: name, email_address: email)
end

def choice
    choice = @prompt.select("\nPlease choose from the following options:") do |menu|
        menu.choice 'Students', 1
        menu.choice 'Houses', 2
        menu.choice 'Values', 3
        menu.choice 'Exit', 4
    end

    if choice == 1
        student_menu()
    elsif choice == 2
        house_menu()
    elsif choice == 3
        value_menu()
    else choice == 4
        return
    end
end

def student_menu(current_user)
    student_selection = $prompt.select("Please choose a student to see their contact info") do |menu|
        menu.enum "."
        users_students(current_user).each_with_index do |student, index|
            menu.choice student.name, index
        end
    end
    selected_student = users_students(current_student)[student_selection]
    student_information(current_user, selected_student)
end

def favorite_house
    # favorite_house = $prompt.ask('Is there a specific House you want to be in? ')
    choices = %w(Gryffindor Slytherin Hufflepuff Ravenclaw)
    $prompt.multi_select("Is there a specific House you want to be in?", choices)
end

def traits
    traits = $prompt.select('Which of the following traits best describes you?', %w(Brave Intelligent Ambitious Loyal))
    # choices2 = %w(Brave Intelligent Ambitious Loyal)
    # $prompt.multi_select('Select your trait', choices2)
end

def first_prompt
    prompt = TTY::Prompt.new
    # clear_logs
    puts "Welcome to Hogwarts!"
    options = {"Filter by Students":1, "Filter by Houses":2, "Search by Values":3, "Exit History Database":4}
    return_value = prompt.select("Please begin by selecting one of the options:",options)
    first_menu(return_value)
end

def first_menu(first_response)
    prompt = TTY::Prompt.new
    # clear_logs
    case first_response
    when 1
        # clear_logs
        
        fill_hash = {}
        Student.all.order(:name).each do |s|
            fill_hash["#{s.name}"] = student.name 
        end
        
        return_value = prompt.select("\nSelect a student:\n",fill_hash)
        
        found_student = Student.find_by(name: return_value)
        student_menu_1(found_student)
    when 2
        # clear_logs

        fill_hash = {}
        House.all.order(:name).each do |h|
            if h.name != ""
                fill_hash["#{h.name}"] = industry.name
            end
        end

        return_value = prompt.select("\nSelect a house:\n\n",fill_hash)
        found_house = House.find_by(name: return_value)
        house_menu_1(found_house)
    when 3
        # clear_logs
        puts "\nPlease type the name of the value you are looking for.\n\n"
        second_response = gets.chomp
        value_menu_1(second_response)
    end
end
