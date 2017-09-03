#By Habib Aroua

load '/home/habib/Documents/Ruby/user_project/db/connect.rb'

class User
    
    WILD = true
    attr_accessor :id
    attr_accessor :name
    attr_accessor :password
    
    def initialize(id,name,password)
        @id=id
        @name=name
        @password=password
    end
    
    def to_s
        return "Your id is : #{@id} , your name is #{@name} and your password : #{@password}"
    end
    
    def insert
        c=Connection.new()
        con=nil
        con=c.getConnection()
        con.query("insert into `user` values (null,'#{@name}','#{@password}')")
        if con.affected_rows == 1
            return true
        else
            return false
        end
    end
    
    def update(id,name,password)
        c=Connection.new()
        con=nil
        con=c.getConnection()
        con.query("update user set name='#{name}' , password='#{password}' where id=#{id}  ")
        puts con.affected_rows
    end
    
    def delete(id)
        c=Connection.new()
        con=nil
        con=c.getConnection()
        con.query("delete from user where id = #{id} ")
        puts con.affected_rows
    end
    
    def show
        c=Connection.new()
        con=nil
        con=c.getConnection()
        select=con.query("select * from user")
        arr = Array.new
        select.each_hash do |data|
            u=User.new(data['id'],data['name'],data['password'])
            arr << u
        end
        return arr
    end
    
    def countUser
         c=Connection.new()
        con=nil
        con=c.getConnection()
        select=con.query("select * from user")
        i=0
        select.each_hash do |data|
            i=i+1
        end
        i
    end

end

#it's for test our program by Habib Aroua
user=User.new(nil,"Habib","azerty")
puts user
arr=user.show
for a in arr
    puts a
end