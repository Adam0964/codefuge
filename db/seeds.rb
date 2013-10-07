# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Book.delete_all

books = Book.create(
			               [
					          {title: 'Agile Web Development With Rails',       author: 'Dave Thomas and David Heinemeier Hansson',  pubDate: '2011', cover: 'agile.jpg'}, 
					          {title: 'Rails 3 in Action',                      author: 'Ryan Bigg and Yehuda Katz',                 pubDate: '2011', cover: 'rails_3_in_action.jpg'}, 
					          {title: 'Rails Antipatterns',                     author: 'Tammer Saleh and Chad Pytel',               pubDate: '2010', cover: 'rails_antipatterns.jpg'},
					          {title: 'Rails Recipes',                          author: 'Chad Fowler',                               pubDate: '2012', cover: 'rails_recipes_3_edition.jpg'},
					          {title: 'Rails 3 Way',                            author: 'Obie Fernandez',                            pubDate: '2010', cover: 'rails3way.jpg'}, 
					          {title: 'Objects On Rails',                       author: 'Avdi Grimm',                                pubDate: '2012', cover: 'railsobj.jpg'}, 
					          {title: 'Ruby on Rails 3 Tutorial',               author: 'Michael Hart',                              pubDate: '2012', cover: 'ruby_on_rails_tutorial_2nd_edition.jpg'},
					          {title: 'Programming Ruby',                       author: 'Thomas, Chad Fowler, Andy Hunt',            pubDate: '2004', cover: 'ruby.jpg'}, 
					          {title: 'The Rails View',                         author: 'John Athayde, Bruce Williams',              pubDate: '2012', cover: 'rails_view.jpg'}, 
					          {title: 'Learning Rails 3',                       author: 'Simon St. Laurent, et al',                  pubDate: '2012', cover: 'learning_rails_3.jpg'},
					          {title: 'Learning Ruby',                          author: 'Michael James Fitzgerald',                  pubDate: '2007', cover: 'learning_ruby.jpg'},
					          {title: 'Crafting Rails Applications',            author: 'Jose Valim',                                pubDate: '2011', cover: 'crafting_rails_applications.jpg'},
                              {title: 'Crafting Rails 4 Applications',          author: 'Jose Valim',                                pubDate: '2013', cover: 'crafting_rails4.jpg'}, 
					          {title: 'Advanced Rails Recipes',                 author: 'Mike Clarck',                               pubDate: '2008', cover: 'advanced_rails.jpg'}, 					
					          {title: 'Rest In Practice',                       author: 'Jim Webber, Savas Parastatidis, et al',     pubDate: '2010', cover: 'rest_in_practice.jpg'}, 
					          {title: 'Restful Web Serices',                    author: 'Leonard Richardson, Sam Ruby',              pubDate: '2007', cover: 'restful_web_services.jpg'}, 
					          {title: 'The Rspec Book',                         author: 'David Chelimsky, Dave Astels, et al',       pubDate: '2010', cover: 'rspec.jpg'},
                              {title: 'The Cucumber Book',                      author: 'Matt Wynne, Aslak Hellesoy',                pubDate: '2012', cover: 'cucumber_book.jpg'},
					          {title: 'Ruby, MongoDB Web Development',          author: 'Gautam Rege',                               pubDate: '2012', cover: 'ruby_and_mongodb_web_development.jpg'},
					          {title: 'Service Oriented Design With RoR',       author: 'Paul Dix',                                  pubDate: '2010', cover: 'service_oriented_design.jpg'}, 
					          {title: 'Smashing CSS',                           author: 'Eric Meyer',                                pubDate: '2010', cover: 'smashing_css.jpg'}, 
					          {title: 'The Book of CSS 3',                      author: 'Peter Gasston',                             pubDate: '2010', cover: 'the_book_of_css3.jpg'},
					          {title: 'Twitter Bootstrap Web Development',      author: 'David Chocran',                             pubDate: '2012', cover: 'twitter_bootstrap_web_development_how-to.jpg'}, 
					          {title: 'Typography Best Practices',              author: 'Smashing Magazine',                         pubDate: '2013', cover: 'typography.jpg'}, 
					          {title: 'Values, Units and Colors',               author: 'Eric eyer',                                 pubDate: '2012', cover: 'values_units_and_colors.jpg'},
					          {title: 'Web Design For Developers',              author: 'Brian P. Hogan',                            pubDate: '2010', cover: 'web_design_for_developers.jpg'},
					          {title: 'Building Web Apps With SVG',             author: 'David Dailey, Jon Frost, et al',            pubDate: '2012', cover: 'building_web_applications_with_svg.jpg'}, 
					          {title: 'CSS and Documents',                      author: 'Eric Meyer',                                pubDate: '2012', cover: 'css_and_documents.jpg'},
					          {title: 'Deploying Rails',                        author: 'Tom Copeland',                              pubDate: '2012', cover: 'deploying_rails.jpg'}, 
					          {title: 'Responsive Web Design',                  author: 'Nathan Marcotte',                           pubDate: '2012', cover: 'responsive_design1.jpg'}, 
					          {title: 'CSS For Web Designers',                  author: 'Dan Cederholm',                             pubDate: '2010', cover: 'css_for_web_designers.jpg'},
					          {title: 'Elastic Beanstalk',                      author: 'Jurg van Vliet, Flavia Paganelli, et al',   pubDate: '2011', cover: 'elastic_beanstalk.jpg'},
                              {title: 'Eloquent Ruby',                          author: 'Russ Olsen',                                pubDate: '2011', cover: 'eloquent_ruby.jpg'},
                              {title: 'ember.js App Development How-To',        author: 'Marc Bodmer',                               pubDate: '2013', cover: 'ember_application_how_to.jpg'},
                              {title: 'ember.js In Action',                     author: 'Joachim Haagen Skeie',                      pubDate: '2013', cover: 'ember_in_action.jpg'},
					          {title: 'Designing For Emotion',                  author: 'Aaron Walter',                              pubDate: '2011', cover: 'design_for_emotion.jpg'}, 
					          {title: 'Distributed VC With Git',                author: 'Lars Vogel',                                pubDate: '2013', cover: 'distributed_git.png'}, 
					          {title: 'Mobile First',                           author: 'Luke Wroblewski',                           pubDate: '2012', cover: 'mobile_first.jpg'},
                              {title: 'Git: VC For Everyone',                   author: 'Ravishankar Somasundaram',                  pubDate: '2013', cover: 'git_for_everyone.jpg'},
					          {title: 'HTML and CSS: The Good Parts',           author: 'Ben Henrick',                               pubDate: '2010', cover: 'html__css_the_good_parts.jpg'}, 
					          {title: 'HTML5 For Web Designers',                author: 'Jeremy Keith',                              pubDate: '2012', cover: 'html5_for_web_designers.jpg'},
					          {title: 'Engineering Software As A Service',      author: 'Armando Fox & David Patterson',             pubDate: '2012', cover: 'saas.jpg'},
					          {title: 'HTML Boilerplate',                       author: 'Dyvia Manian',                              pubDate: '2012', cover: 'html5_boilerplate_web_development.jpg'}, 
					          {title: 'Interactive Data Visualization',         author: 'Scott Murray',                              pubDate: '2013', cover: 'interactive_data_visualization_for_the_web.jpg'}, 
					          {title: 'Smashing jQuery',                        author: 'Jake Rutter',                               pubDate: '2011', cover: 'jquery.jpg'},
					          {title: 'JRuby Cookbook',                         author: 'Justin Edelson',                            pubDate: '2008', cover: 'jruby_cookbook.jpg'}, 
					          {title: 'Lucene In Action',                       author: 'Michael McCandless, Erik Hatcher, et al',   pubDate: '2010', cover: 'lucene_in_action_2nd_edition.jpg'}, 
					          {title: 'Mobile Design Pattern Gallery',          author: 'Theresa Neil',                              pubDate: '2012', cover: 'mobile_design_pattern_gallery.jpg'},
					          {title: 'Multitenency With Rails',                author: 'Ryan Bigg',                                 pubDate: '2013', cover: 'multitenancy_with_rails.jpg'},
					          {title: 'Pro CSS For High Traffic Websites',      author: 'Anthony kennedy',                           pubDate: '2011', cover: 'pro_css_for_high_traffic_websites.jpg'}, 
					          {title: 'Pro CSS Animation',                      author: 'Dudley Sorey',                              pubDate: '2012', cover: 'pro_css3_animation.jpg'}, 
					          {title: 'Professional Design V I',                author: 'Smashing Magazine',                         pubDate: '2010', cover: 'professional_design1.jpg'},
					          {title: 'Professional Design V II',               author: 'Smashing Magazine',                         pubDate: '2011', cover: 'professional_design2.jpg'}, 
					          {title: 'Programming Amazon EC2',                 author: 'Jurg van Vliet, Flavia Paganelli',          pubDate: '2011', cover: 'programming_amazon_ec2.jpg'}, 
					          {title: 'Programming The Mobile Web',             author: 'Maximiliano Firtman',                       pubDate: '2010', cover: 'programming_the_mobile_web.jpg'},
					          {title: 'Designing With Progressive Enhancement', author: 'Todd Parker, Scott Jehl, et al',            pubDate: '2010', cover: 'design_with_progressive_enhancement.jpg'},
					          {title: 'Prototype and Scriptaculous',            author: 'Andrew Dupont',                             pubDate: '2008', cover: 'prototype_and_scriptaculous.jpg'}, 
					          {title: 'Rails 4.0 Guide',                        author: 'Stefan Wintermeyer',                        pubDate: '2013', cover: 'rails4.jpg'}, 
					          {title: 'Content Strategy For Mobile',            author: 'Karen McGrane',                             pubDate: '2012', cover: 'content_strategy_for_mobile.jpg'},
					          {title: 'Metaprogramming Ruby',                   author: 'Paolo Perrotta',                            pubDate: '2010', cover: 'metaprogramming.jpg'}, 
					          {title: 'RubyMotion',                             author: 'Clay Allsopp ',                             pubDate: '2012', cover: 'rubymotion.jpg'}, 
					          {title: 'The dRuby Book',                         author: 'Masatoshi Seki',                            pubDate: '2012', cover: 'druby_book.jpg'},
                              {title: 'Speaking In Style',                      author: 'Jason Cranford Teague',                     pubDate: '2009', cover: 'speaking_in_style.jpg'},
                              {title: 'Search Patterns',                        author: 'Peter Morville, Jeffery Callender',         pubDate: '2010', cover: 'search_patterns.jpg'},
                              {title: 'AngularJS Web Application Development',  author: 'Peter Bacon Darwin, Pawel Kozlowski',       pubDate: '2013', cover: 'angular_web_development.jpg'},
                              {title: 'Apache Solr 3',                          author: 'David Smiley, Eric Pugh',                   pubDate: '2011', cover: 'apache_solr 3.jpg'},
                              {title: 'Apache Solr 4 Cookbook',                 author: 'Rafal Kuc',                                 pubDate: '2013', cover: 'apache_solr 4.jpg'},
                              {title: 'CoffeeScript Programming',               author: 'Michael Erasmus',                           pubDate: '2012', cover: 'coffeescript_programming_with_jquery_rails_and_node.js.jpg'}                                         

						    ]
					)

# posts = Post.create(
# 	                        [
# 	                        	{name: "Kyle Roberts", title: "First Blog",         content:   "The purpose of seed data is to bootstrap your database. For example, if you have a users table where you track users' 
# 	                        														           city and state, you may want to seed a related table with U.S. state names and abbreviations before creating the first user.
# 																					           Likewise, you may also want to seed things like administrative accounts, or other data that's necessary to run your application 
# 																					           for the first time. As a general rule, you shouldn't add anything to a seeds.rb file that isn't necessary to bootstrap your database or its relations."},
# 							    {name: "Mike Murphy",  title: "About Capistrano",   content:  "This will log into your server and do a series of “mkdir” calls. Note, though, that if you aren’t using sudo (e.g., you set use_sudo to false, 
# 							    	                                                           in your deploy.rb), you’ll need to make sure the permissions on your deploy_to directory are okay. If they aren’t, deploy:setup will fail. To fix 
#                                															       the permissions, you’ll need to log into your server and do a few invocations of “chown” to set the permissions. (What they need to be set to depends 
#                                															       greatly on your configuration, so if you aren’t sure how to do this, feel free to ask on the Capistrano mailing list.)

# 																							   Even if you are using sudo (or, maybe especially if you are using sudo), you may need to fix the permissions on the directories that deploy:setup creates. 
# 																							   Make sure the directories have the right permissions for whichever user you are deploying as to write to them."}                          


# 	                        ]
# 	                )
# videos = Video.create(
# 	                        [
# 	                          {title: 'BerkeleyX: CS169.1x Software as a Service'},                       {url: '//www.youtube.com/embed/Fr-B4xHZRzY'},                                         {caption: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa. Sed eleifend nonummy diam. Praesent mauris ante, elementum et, bibendum at, posuere sit amet, nibh. Duis tincidunt lectus quis dui viverra vestibulum. Suspendisse vulputate aliquam dui. Nulla elementum dui ut augue. Aliquam vehicula mi at mauris. Maecenas placerat, nisl at consequat rhoncus, sem nunc gravida justo, quis eleifend arcu velit quis lacus. Morbi magna magna, tincidunt a, mattis non, imperdiet vitae, tellus."},
# 	                          {title: 'BerkeleyX: CS169.2x Software as a Service'},                       {url: '//www.youtube.com/embed/_vJfPEXlYIo?list=PLzeC6PvwVZ_43YAOJMRatvtMoUVlL2qF6'}, {caption: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa. Sed eleifend nonummy diam. Praesent mauris ante, elementum et, bibendum at, posuere sit amet, nibh. Duis tincidunt lectus quis dui viverra vestibulum. Suspendisse vulputate aliquam dui. Nulla elementum dui ut augue. Aliquam vehicula mi at mauris. Maecenas placerat, nisl at consequat rhoncus, sem nunc gravida justo, quis eleifend arcu velit quis lacus. Morbi magna magna, tincidunt a, mattis non, imperdiet vitae, tellus."},
# 	                          {title: 'Efficient Rails Test Driven Development'},                         {url: '//www.youtube.com/embed/ra8Q0M3DJYk'}, 										{caption: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa. Sed eleifend nonummy diam. Praesent mauris ante, elementum et, bibendum at, posuere sit amet, nibh. Duis tincidunt lectus quis dui viverra vestibulum. Suspendisse vulputate aliquam dui. Nulla elementum dui ut augue. Aliquam vehicula mi at mauris. Maecenas placerat, nisl at consequat rhoncus, sem nunc gravida justo, quis eleifend arcu velit quis lacus. Morbi magna magna, tincidunt a, mattis non, imperdiet vitae, tellus."},
# 	                          {title: 'Intro to Android - Android Bootcamp Series 2012'},                 {url: '//www.youtube.com/embed/5RHtKIo_KDI'}, 										{caption: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa. Sed eleifend nonummy diam. Praesent mauris ante, elementum et, bibendum at, posuere sit amet, nibh. Duis tincidunt lectus quis dui viverra vestibulum. Suspendisse vulputate aliquam dui. Nulla elementum dui ut augue. Aliquam vehicula mi at mauris. Maecenas placerat, nisl at consequat rhoncus, sem nunc gravida justo, quis eleifend arcu velit quis lacus. Morbi magna magna, tincidunt a, mattis non, imperdiet vitae, tellus."},
# 	                          {title: 'Introduction to Ruby '},                                           {url: '//www.youtube.com/embed/InuzhKLUA1Y'}, 										{caption: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa. Sed eleifend nonummy diam. Praesent mauris ante, elementum et, bibendum at, posuere sit amet, nibh. Duis tincidunt lectus quis dui viverra vestibulum. Suspendisse vulputate aliquam dui. Nulla elementum dui ut augue. Aliquam vehicula mi at mauris. Maecenas placerat, nisl at consequat rhoncus, sem nunc gravida justo, quis eleifend arcu velit quis lacus. Morbi magna magna, tincidunt a, mattis non, imperdiet vitae, tellus."},
# 	                          {title: 'Ruby II - Regular Expression Review - Lecture 1'},                 {url: '//www.youtube.com/embed/flJQ787S-4A'}, 										{caption: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa. Sed eleifend nonummy diam. Praesent mauris ante, elementum et, bibendum at, posuere sit amet, nibh. Duis tincidunt lectus quis dui viverra vestibulum. Suspendisse vulputate aliquam dui. Nulla elementum dui ut augue. Aliquam vehicula mi at mauris. Maecenas placerat, nisl at consequat rhoncus, sem nunc gravida justo, quis eleifend arcu velit quis lacus. Morbi magna magna, tincidunt a, mattis non, imperdiet vitae, tellus."},
# 	                          {title: 'Intro to Ruby on Rails 3 - Installation'},                         {url: '//www.youtube.com/embed/InuzhKLUA1Y'}, 										{caption: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa. Sed eleifend nonummy diam. Praesent mauris ante, elementum et, bibendum at, posuere sit amet, nibh. Duis tincidunt lectus quis dui viverra vestibulum. Suspendisse vulputate aliquam dui. Nulla elementum dui ut augue. Aliquam vehicula mi at mauris. Maecenas placerat, nisl at consequat rhoncus, sem nunc gravida justo, quis eleifend arcu velit quis lacus. Morbi magna magna, tincidunt a, mattis non, imperdiet vitae, tellus."},
# 							  {title: 'Intro to Mobile Development I - SASS and PHPStorm Setup'},         {url: '//www.youtube.com/embed/-7nokndHD3Y'}, 										{caption: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa. Sed eleifend nonummy diam. Praesent mauris ante, elementum et, bibendum at, posuere sit amet, nibh. Duis tincidunt lectus quis dui viverra vestibulum. Suspendisse vulputate aliquam dui. Nulla elementum dui ut augue. Aliquam vehicula mi at mauris. Maecenas placerat, nisl at consequat rhoncus, sem nunc gravida justo, quis eleifend arcu velit quis lacus. Morbi magna magna, tincidunt a, mattis non, imperdiet vitae, tellus."},
#                             {title: 'Ruby On Rails Video Tutorials - Learn Rails By Examples'}          {url: '//www.youtube.com/watch?v=nFQ_ulWiCCI&feature=share&list=TLHIzhlHBXuxc'} {caption: "These focused video lessons help you learn crucial new skills fast-and put them to work immediately! Watch top Rails developer Michael Hartl guide you through building a complete application using todayâ€™s best practices for MVC and REST design, layout, Ruby coding, security, testing, deployment, and more."}
#                             {title: 'Learn Ruby: Creating a Blog application in Rails 3.2   '}          {url: "//www.youtube.com/embed/PUHmX18Zmyk?list=PL446512F0C1A9414B"} {caption: "These focused video lessons help you learn crucial new skills fast-and put them to work immediately! Watch top Rails developer Michael Hartl guide you through building a complete application using todayâ€™s best practices for MVC and REST design, layout, Ruby coding, security, testing, deployment, and more."}

# 	                        ]

# 	                )
