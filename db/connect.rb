class Connection
    WILD = true
    def initialize()
        
    end
    
    def getConnection()
        con=nil
       ipAdress="127.0.0.1" #ip Adresse of appache
       user="root" #user name
       password="" #your password
       db="ruby" #the name of your database 
       con=Mysql.new(ipAdress,user,password,db)
        #puts 'Your connection has been succes'
        return con
    end
end

require 'rubygems'
require 'mysql'
require 'dbi'
c=nil
c=Connection.new()
con=nil
con=c.getConnection()


=begin
ipAdress="127.0.0.1" #ip Adresse of appache
user="root" #user name
password="" #your password
db="ruby" #the name of your database 
begin
    con=Mysql.new(ipAdress,user,password,db)
    puts 'Your connection has been succes'
       #con.query("insert into `user` values (null,'Majdi','azerty')")
       #puts con.affected_rows
       #select=con.query("select * from user")
       #select.each_hash do |data|
        #   puts "data::#{data['user']}"
       #end
       
rescue  Mysql.Error =>e
    puts e.errno
    puts e.error
    puts "You can't connect"
ensure
    con.close if con
end
=end