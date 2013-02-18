User.delete_all()
email = ENV['ADMIN_USERNAME'] && ENV['ADMIN_USERNAME'].dup
admin = User.find_or_create_by_email(:email => email || "admin@localhost.com", :password => ENV['ADMIN_PASSWORD'], :password_confirmation => ENV['ADMIN_PASSWORD'], :name=>"Admin", :admin => true)

groom = User.find_or_create_by_email(:email => "groom@localhost.com", :password => ENV['ADMIN_PASSWORD'], :password_confirmation => ENV['ADMIN_PASSWORD'], :name=>"Groom", :role => "groom", :admin => true)
bride = User.find_or_create_by_email(:email => "bride@localhost.com", :password => ENV['ADMIN_PASSWORD'], :password_confirmation => ENV['ADMIN_PASSWORD'], :name=>"Bride", :role => "bride", :admin => true)

groomsman1 = User.find_or_create_by_email(:email => "g1@localhost.com", :password => ENV['ADMIN_PASSWORD'], :password_confirmation => ENV['ADMIN_PASSWORD'], :name=>"Tom", :role => "groomsman", :admin => true)
groomsman4 = User.find_or_create_by_email(:email => "g2@localhost.com", :password => ENV['ADMIN_PASSWORD'], :password_confirmation => ENV['ADMIN_PASSWORD'], :name=>"Joe", :role => "groomsman", :admin => true)
groomsman3 = User.find_or_create_by_email(:email => "g3@localhost.com", :password => ENV['ADMIN_PASSWORD'], :password_confirmation => ENV['ADMIN_PASSWORD'], :name=>"John", :role => "groomsman", :admin => true)
groomsman2 = User.find_or_create_by_email(:email => "g4@localhost.com", :password => ENV['ADMIN_PASSWORD'], :password_confirmation => ENV['ADMIN_PASSWORD'], :name=>"Dick", :role => "groomsman", :admin => true)

bridesmaid4 = User.find_or_create_by_email(:email => "b2@localhost.com", :password => ENV['ADMIN_PASSWORD'], :password_confirmation => ENV['ADMIN_PASSWORD'], :name=>"Lynn", :role => "bridesmaid", :admin => true)
bridesmaid1 = User.find_or_create_by_email(:email => "b1@localhost.com", :password => ENV['ADMIN_PASSWORD'], :password_confirmation => ENV['ADMIN_PASSWORD'], :name=>"Sue", :role => "bridesmaid", :admin => true)
bridesmaid3 = User.find_or_create_by_email(:email => "b3@localhost.com", :password => ENV['ADMIN_PASSWORD'], :password_confirmation => ENV['ADMIN_PASSWORD'], :name=>"Jill", :role => "bridesmaid", :admin => true)
bridesmaid2 = User.find_or_create_by_email(:email => "b4@localhost.com", :password => ENV['ADMIN_PASSWORD'], :password_confirmation => ENV['ADMIN_PASSWORD'], :name=>"Jane", :role => "bridesmaid", :admin => true)

ring_bearer = User.find_or_create_by_email(:email => "rb@localhost.com", :password => ENV['ADMIN_PASSWORD'], :password_confirmation => ENV['ADMIN_PASSWORD'], :name=>"Boy", :role => "ring_bearer", :admin => true)
flower_girl = User.find_or_create_by_email(:email => "fg@localhost.com", :password => ENV['ADMIN_PASSWORD'], :password_confirmation => ENV['ADMIN_PASSWORD'], :name=>"Girl", :role => "flower_girl", :admin => true)

WeddingInfo.delete_all()
wedding_info = WeddingInfo.find_or_create_by_id(:id => 1, :start_time => DateTime.now, :end_time => DateTime.now,:invite_text => "Join us on our wonderful adventure",:header => "We're Getting Married!", :ceremony => "A cool place<br/>123 st<br/>",:reception=>"<b>Great place</b>",:accomidation => "Awesome place<br/>",:car_directions=>"Go left",:flight_directions => "ORD FTW")