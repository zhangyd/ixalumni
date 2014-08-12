# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Populating the FAQ page
Faq.create(:question => 'Why is the program called IXperience', :answer => 'We want you to have a unique experience, not just spend the whole time coding. Our program combines all the beautiful experiences of living in Cape Town while providing you with the skills to be a web developer.')
Faq.create(:question => 'Do I need to know how to program?', :answer => 'No. All you need is passion and the ability to unlearn the word "quit."')
Faq.create(:question => 'If I already know how to program a little. Is ixperience for me?', :answer => 'Absolutely. iXperience is more than just learning how to program – it\'s learning how to be a coder. It\'s learning how to build your own prototypes. It\'s learning where to go to find answers. It\'s learning about what the atmosphere of working in a startup is really like. Its about experiencing technology in a new culture.')
Faq.create(:question => 'What is the structure of the program over the 4 weeks?', :answer => 'Phase 1 (weeks 1 and 2): How the web works, MVC, and front end development, HTML CSS and Javascript. Phase 2 (week 3): Basic Ruby, how to think and communicate like a programmer, Database and ActiveRecord. Phase 3 (week 4): Putting these all together through the Rails framework and building an original APP from scratch!')

# Populating the Project Page 
# Note: Picture of the project needs to be added separately at /projects/#id/edit
Project.create(:name => 'Noteminders', :url => 'http://www.noteminders.com', :description => 'An App to help you take smarter note and remember things better')
Project.create(:name => 'getonnit', :url => 'http://getonnit.heroku.com', :description => 'Project organization and task allocation web app to keep all team members on track')
Project.create(:name => 'Amazing Salman', :url => 'http://salman.ixperience.co.za/', :description => 'A website dedicated to the beloved Salman Ansari')
Project.create(:name => 'Whit', :url => 'http://floating-chamber-2899.herokuapp.com/', :description => 'A app the help you get to know your governors better and be better educated to vote')


# Populating the Student Pgae 
# Note: Picture of each student needs to be added separately at /students/#id/edit
Student.create(:first_name => 'Allen', :last_name => 'Zhao', :school => "ff-university-of-michigan", :year => '2016', :major => 'Computer Science', :email => 'allenxyz@umich.edu', :github => 'allenxyz', :about => 'My name is Allen', :quote => 'IX is cool!', :project_id => 1)
Student.create(:first_name => 'Bingyan', :last_name => 'Hu', :school => "ff-barnard-college", :year => '2016', :major => 'Business', :email => 'bingyan@barnard.edu', :github => 'bingyanhu', :about => 'My name is Bingyan', :quote => 'IX is awesome!', :project_id => 2)
Student.create(:first_name => 'Sabra', :last_name => 'Meretab', :school => "ff-standford-university", :year => '2017', :major => 'Business', :email => 'sabra@standford.edu', :github => 'sabrameretab', :about => 'My name is Sabra', :quote => 'IX is cool!', :project_id => 3)
Student.create(:first_name => 'Zack', :last_name => 'Chauvin', :school => "ff-harvard-university", :year => '2017', :major => 'Computer Science', :email => 'zackc@harvard.edu', :github => 'zackchauvin', :about => 'My name is Zack', :quote => 'IX is cool!', :project_id => 4)
Student.create(:first_name => 'Amy', :last_name => 'Chang', :school => "ff-yale-university", :year => '2017', :major => 'Biomedical', :email => 'amychang@yale.edu', :github => 'amychang', :about => 'My name is Amy', :quote => 'IX is cool!', :project_id => 1)




























