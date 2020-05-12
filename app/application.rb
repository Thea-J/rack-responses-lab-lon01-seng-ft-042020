
class Application 
    #If it's before noon, greet the user with "Good Morning!"
    #If it's after noon, greet the user with "Good Afternoon!"
 def call(env)
    #Set up a base web server
       resp = Rack::Response.new
    #Returns the current hour of the current day
       if Time.now.hour >= 12
        resp.write "Good Afternoon!"
       else
        resp.write "Good Morning!"
       end
       resp.finish
 end

end 
