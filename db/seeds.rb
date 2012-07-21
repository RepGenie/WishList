# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Priority.create [{:priority => 'Highest'},
                 {:priority => 'High'},
                 {:priority => 'Medium'},
                 {:priority => 'Low'},
                 {:priority => 'Lowest'}]
                 
Category.create [{:category => 'Books'},
                 {:category => 'Music'},
                 {:category => 'Clothing'},
                 {:category => 'Videos and Movies'},
                 {:category => 'Computer Software'},
                 {:category => 'Electronics'},
                 {:category => 'Fashion Accessories'},
                 {:category => 'Games'},
                 {:category => 'Gift Certificates'},
                 {:category => 'Shoes'},
                 {:category => 'Tools'},
                 {:category => 'Toys'},
                 {:category => 'Video Games'},
                 {:category => 'Sporting Goods'},
                 {:category => 'Makeup'},
                 {:category => 'Perfume or Cologne'},
                 {:category => 'Kitchenware and Appliances'},
                 {:category => 'Food and Drink'},
                 {:category => 'Office Products'},
                 {:category => 'Tickets'},
                 {:category => 'Musical Instruments'},
                 {:category => 'Pet Supplies'},
                 {:category => 'Housewares'},
                 {:category => 'Jewelry and Watches'},
                 {:category => 'Subscriptions'}]
    
category = Category.find_by_category('Books')
category.formats.create [{:format => 'Hardback'},
                         {:format => 'Paperback'},
                         {:format => 'Kindle'},
                         {:format => 'Nook'},
                         {:format => 'Other'}]
                         
category = Category.find_by_category('Music')
category.formats.create [{:format => 'CD'},
                         {:format => 'iTunes'},
                         {:format => 'MP3'},
                         {:format => 'Other'}]
                         
category = Category.find_by_category('Videos and Movies')
category.formats.create [{:format => 'DVD'},
                         {:format => 'BluRay'},
                         {:format => 'Other'}]
                         
category = Category.find_by_category('Video Games')
category.formats.create [{:format => 'XBox 360'},
                         {:format => 'Wii'},
                         {:format => 'PS3'},
                         {:format => 'Windows PC'},
                         {:format => 'Mac'},
                         {:format => 'Nintendo DS'},
                         {:format => 'PSP'},
                         {:format => 'Other'}]
                         

# ******************************************************************
# Seeds below this point are for development only
# Remove these lines in the production version of the application
# ******************************************************************
user1 = User.create :email => "clayyearsley@yahoo.com",
				    :password => "password",
				    :password_confirmation => "password"
				    
user2 = User.create :email => "you@abc.com",
					:password => "secret",
					:password_confirmation => "secret"
					
user1.messages.create :for_user => 2,
					  :active => true,
					  :message => "Hey, you!"
					  
user2.messages.create :for_user => 1,
					  :active => true,
					  :message => "Yes, master"
