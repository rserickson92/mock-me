# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 
User.create [
	{name: "Ryan", password: 'derp'}, 
	{name: "Stuart", password: 'derpa'}, 
	{name: "Ashley", password: 'derpaderp'}]
Post.create [
	{
		body: "I've landed an interview at Google (no, really) and am seriously in need of algorithms practice.", 
		user: User.find_by_name("Ryan")
	}, 
	{
		body: "I have my first phone screen ever coming up and I don't know what to expect...", 
		user: User.find_by_name("Stuart")
	}, 
	{
		body: "I'm going onsite with Palantir next week. HELP.", 
		user: User.find_by_name("Ashley")
	}
] 