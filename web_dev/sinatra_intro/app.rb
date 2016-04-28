# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end
# localhost:9393/?name=Mandy&age=27

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end
# localhost:9393/about/ScoobyDoo

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end
# localhost:9393/Keith/loves/Rebecca

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end
# localhost:9393/students

# write a GET route that retrieves
# a particular student
get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end
# localhost:9393/students/21

# write /contact route that displays an address
get '/contact' do
  address = "321 Gunsmoke Drive<br>Austin, TX 78725"
  address.to_s
end
# localhost:9393/contact

# write a /great_job route that can take a person's name as a query parameter
# (not a route parameter) and say "Good job, [person's name]!". If the query
# parameter is not present, the route simply says "Good job!"
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end
# http://localhost:9393/great_job?name=Gandhi

# write a route that uses route parameters to add two numbers and respond with
# the result. The data types are tricky here -- when will the data need to be
# (or arrive as) a string?
get '/:num_one/plus/:num_two' do
  result = params[:num_one].to_i + params[:num_two].to_i
  result.to_s
end
# localhost:9393/2/plus/5

# Optional bonus: Make a route that allows the user to search the database in some way --
# maybe for students who have a certain first name, or some other attribute. If you like,
# you can simply modify the home page to take a query parameter, and filter the students
# displayed if a query parameter is present.
# -- I chose to display all the students from each campus by route parameter
get '/student/:campus' do
  students = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  result = ""
  students.each do |student|
    result << "Name: #{student['name']}<br>"
    result << "Age: #{student['age']}<br><br>"
  end
  "<h1>#{params[:campus]} Students:</h1>#{result}"
end
# localhost:9393/student/SD

# Research:
# 1. Is Sinatra the only web app library in Ruby? What are some others?
## Ruby on Rails, Merb, Nitro, and Camping

# 2. Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
## Mongo, MySQL, ActiveRecord

# 3. What is meant by the term web stack?
## "A Web stack is the collection of software required for Web development. At a minimum, a Web stack contains an operating system (OS), a programming language, database software and a Web server." (http://whatis.techtarget.com/definition/Web-stack)
