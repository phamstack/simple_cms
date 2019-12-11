# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

subject1 = Subject.create(:name => "Tesla Motors", :position => 23, :visible => true)
subject2 = Subject.create(:name => "Are MacBooks overpriced?", :position => 1, :visible => true)
subject3 = Subject.create(:name => "Field Notes", :position => 31)
subject4 = Subject.create(:name => "Plain Paper", :position => 44, :visible => true)

page1 = Page.create(:name => "Page1", :permalink => "monday", :position => 1)
page2 = Page.create(:name => "Page2", :permalink => "tuesday", :position => 2)
page3 = Page.create(:name => "Page3", :permalink => "wednesday", :position => 3)
page4 = Page.create(:name => "Page4", :permalink => "thursday", :position => 4)
page5 = Page.create(:name => "Page5", :permalink => "friday", :position => 5)
page6 = Page.create(:name => "Page6", :permalink => "funday", :position => 6)

section1 = Section.create(:name => "Section1", :position => 1)
section2 = Section.create(:name => "Section2", :position => 2)
section3 = Section.create(:name => "Section3", :position => 3)

subject1.pages << page1
subject1.pages << page2
subject2.pages << page3
subject3.pages << page4
subject3.pages << page5
subject4.pages << page6

page1.sections << section1
page1.sections << section2
page1.sections << section3