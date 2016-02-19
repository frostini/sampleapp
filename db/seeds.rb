# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



services_list = [
  { "Title" => 'Service 1', 'Description' => 'Some details on Service One', 'Image' => 'assets/service_1.jpg' },
  { "Title" => 'Service 2', 'Description' => 'Some details on Service Two', 'Image' => 'assets/service_2.jpeg' },
  { "Title" => 'Service 3', 'Description' => 'Some details on Service Three', 'Image' => 'assets/service_3.JPG'},
  { "Title" => 'Service 4', 'Description' => 'Some details on Service Four', 'Image' => 'assets/service_4.jpg' },
  { "Title" => 'Service 5', 'Description' => 'Some details on Service Five', 'Image' => 'assets/service_5.jpeg'},
  { "Title" => 'Service 6', 'Description' => 'Some details on Service Six', 'Image' => 'assets/service_6.jpg'},
  { "Title" => 'Service 7', 'Description' => 'Some details on Service Seven', 'Image' => 'assets/service_7.jpg'},
  { "Title" => 'Service 8', 'Description' => 'Some details on Service Eight', 'Image' => 'assets/service_8.jpg'},
  { "Title" => 'Service 9', 'Description' => 'Some details on Service Nine', 'Image' => 'assets/service_9.jpg'},
  { "Title" => 'Service 10', 'Description' => 'Some details on Service Ten', 'Image' => 'assets/service_10.jpg'},
  { "Title" => 'Service 11', 'Description' => 'Some details on Service Eleven', 'Image' => 'assets/service_11.jpg'},
  { "Title" => 'Service 12', 'Description' => 'Some details on Service Twelve', 'Image' => 'assets/service_12.jpg'}
]





services_list.each do |service|
  new_service = Service.new( title: service['Title'], description: service['Description'], service_img_link: service['Image'] )
  if new_service.save
	  puts new_service
	 end
end