load '/home/habib/Documents/Ruby/user_project/model/user.rb'
require 'io/console'

class UserController
    def initalize
        #this instruction is empty
    end
    def add
        puts 'Enter your name'
        name =gets.chomp
        #puts 'Enter your password'
        #password=gets.chomp
        print "Password: "
        password=STDIN.noecho(&:gets).chomp
        if (name=='')or(password=='')
            puts 'Your name or your password are maybe empty'
            add
        else
            user=User.new(0,name,password)
            test=user.insert
            if (test==true)
                puts "This user is has been added in data "
            else
                puts "Error when you add a user !!"
            end
        end
    end
    
    def delete
        #puts 'Enter a id'
        #user=User.new
        #user.delete(id)
        
    end
    
    def update
        
    end
    
    def show
        user=User.new(nil,nil,nil)
        arr=user.show
        for a in arr
            puts a
        end
    end
    
end

u=UserController.new
u.show
