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
        puts con.affected_rows
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
        
    end
end

user=User.new(nil,"Habib","azerty")
puts user
#user.insert
#user.update(1,'Nada','Nadouda')
user.delete(2)