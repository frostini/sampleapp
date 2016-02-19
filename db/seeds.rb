# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



services_list = [
  { "Title" => 'Service 1', 'Description' => 'Some details on Service One', 'Image' => 'service_1.jpg' },
  { "Title" => 'Service 2', 'Description' => 'Some details on Service Two', 'Image' => 'service_2.jpg' },
  { "Title" => 'Service 3', 'Description' => 'Some details on Service Three', 'Image' => 'service_3.JPG'},
  { "Title" => 'Service 4', 'Description' => 'Some details on Service Four', 'Image' => 'service_4.jpg' },
  { "Title" => 'Service 5', 'Description' => 'Some details on Service Five', 'Image' => 'service_5.jpg'},
  { "Title" => 'Service 6', 'Description' => 'Some details on Service Six', 'Image' => 'service_6.jpg'},
  { "Title" => 'Service 7', 'Description' => 'Some details on Service Seven', 'Image' => 'service_7.jpg'},
  { "Title" => 'Service 8', 'Description' => 'Some details on Service Eight', 'Image' => 'service_8.jpg'},
  { "Title" => 'Service 9', 'Description' => 'Some details on Service Nine', 'Image' => 'service_9.jpg'},
  { "Title" => 'Service 10', 'Description' => 'Some details on Service Ten', 'Image' => 'service_10.jpg'},
  { "Title" => 'Service 11', 'Description' => 'Some details on Service Eleven', 'Image' => 'service_11.jpg'},
  { "Title" => 'Service 12', 'Description' => 'Some details on Service Twelve', 'Image' => 'service_12.jpg'}
]





services_list.each do |service|
  new_service = Service.new( title: service['Title'], description: service['Description'], service_img_link: service['Image'] )
  if new_service.save
	  puts new_service
	 end
end