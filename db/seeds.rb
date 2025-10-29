# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

usr1 = User.create({ email: "gerrard@gmail.com", password: "liverpool80", password_confirmation: "liverpool80" })
usr2 = User.create({ email: "backham@hotmail.com", password: "manutd75", password_confirmation: "manutd75" })
usr3 = User.create({ email: "henry@yahoo.com", password: "arsenal77", password_confirmation: "arsenal77" })
usr4 = User.create({ email: "kamphol@ru.ac.th", password: "computer76", password_confirmation: "computer76" })
usr5 = User.create({ email: "waranyu@kmitnb.ac.th", password: "machinelearning79", password_confirmation: "machinelearning79" })

frm1 = Forum.create({
                      thread: 'How many times Arsenal won the Champions League?',
                      content: 'Arsenal have never won the Champions League.',
                      user_id: usr3.id,
                    })
frm2 = Forum.create({
                      thread: 'How many times Liverpool won the Champions League?',
                      content: 'Liverpool have won the Champions League six times: 1976/77, 1977/78,
1980/82, 1983/85, 2004/05 and 2009/10',
                      user_id: usr4.id
                    })
frm3 = Forum.create({
                      thread: 'How many times Man Utd won the Champions League?',
                      content: 'Man Utd have won the Champions League three times: 1967–68, 1998–99 and
2007–08',
                      user_id: usr4.id,
                    })
frm4 = Forum.create({
                      thread: 'Computer Engineering, RU',
                      content: 'For more information, please visit to http://www.eng.ru.ac.th',
                      user_id: usr4.id
                    })
frm5 = Forum.create({
                      thread: 'Internet Engineering Task Force',
                      content: 'The Internet Engineering Task Force (IETF) is an open standards organization,
which develops and promotes voluntary Internet standards, in particular the standards
that comprise the Internet protocol suite (TCP/IP).',
                      user_id: usr5.id
                    })
frm6 = Forum.create({
                      thread: 'Ruby on Rails',
                      content: "Ruby on Rails, or Rails, is a server-side web application framework written in Ruby
under the MIT License. Rails is a model–view–controller (MVC) framework, providing default
structures for a database, a web service, and web pages. It encourages and facilitates the use of
web standards such as JSON or XML for data transfer, HTML, CSS and JavaScript for user
interfacing. In addition to MVC, Rails emphasizes the use of other well-known software engineering
patterns and paradigms, including convention over configuration (CoC), don't repeat yourself
                    (DRY), and the active record pattern.",
                    user_id: usr4.id
                    })

cmmt1 = Comment.create({
                         message: 'Where can I find online course for ruby coding?',
                         forum_id: frm6.id,
                         user_id: usr4.id
                       })
