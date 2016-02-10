# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



services_list = [
  { "Title" => 'Service 1', 'Description' => 'Some details on Service 1', 'Image' => 'assets/service_1.jpeg' },
  { "Title" => 'Service 2', 'Description' => 'Some details on Service 2', 'Image' => 'assets/service_2.png' },
  { "Title" => 'Service 3', 'Description' => 'Some details on Service 3', 'Image' => 'assets/service_3.png' },
  { "Title" => 'Service 4', 'Description' => 'Some details on Service 4', 'Image' => 'assets/service_4.jpg' },
  { "Title" => 'Service 5', 'Description' => 'Some details on Service 5', 'Image' => 'assets/service_5.jpeg' },
  { "Title" => 'Service 6', 'Description' => 'Some details on Service 6', 'Image' => 'assets/service_6.jpg'}
]





services_list.each do |service|
  new_service = Service.new( title: service['Title'], description: service['Description'], service_img_link: service['Image'] )
  if new_service.save
	  puts new_service
	 end
end