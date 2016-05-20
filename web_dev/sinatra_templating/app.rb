# require gems
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

# create a route to the campus request form
get '/campus/new' do
  erb :campus
end

# add the requested database to the campuses table
post '/campus' do
  db.execute("INSERT INTO campuses (loc, current) VALUES (?, \"false\")", [params[:campus]])
  redirect '/thank-you'
end

get '/thank-you' do
  erb :thank_you
end
