# require gems
require 'sinatra'
require 'sqlite3'

# add static resources (i think this comment goes here...)
set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

# add new student to database
get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add page to display all san francisco students
get '/san_fran' do
  @students = db.execute("SELECT * FROM students WHERE campus='SF'")
  erb :san_fran
end

# add form to get new edited student info
get '/students/edit' do
  erb :edit_student
end

# get info from edit form and update student info
post '/student_edit' do
  db.execute("UPDATE students SET name=?, campus=?, age=? WHERE name=?",
             [params['new_name'], params['campus'], params['age'].to_i, params['current_name']])
  redirect '/'
end

