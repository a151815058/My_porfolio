3.times do |topic|
	Topic.create!(
		title:"Topic #{topic}"
	)
end

puts "3 topic created"

10.times do |blog|
	Blog.create!(
		title: "My Blog Posts #{blog}",
		body: "Drew Ehlers, the global futurist for Zebra Technologies, believes this innovation will only increase over the coming years.When we launched the Intelligent Enterprise Index three years ago, many enterprises were trying to understand where and how IoT solutions could be best applied within their unique business environments,” he said.
We now see more urgency to improve operational visibility and facilitate the delivery of actionable intelligence all the way to the edge of the enterprise.
I believe that is why enterprises are now demonstrating a much greater commitment to executing their IoT plans and why we’ll likely see a surge in investments over the next few years.”
As such, this surge in IoT adoption is because businesses are finally coming to grips with how it works and how it can help them. Complicated elements of IoT such as the blockchain can fail to “click” with some people. After seeing it in practice and realizing its potential, however, businesses are more open to trying it out themselves.",topic_id: Topic.last.id
	)
end

puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
	)
end

puts "5 skills  created"

8.times do |porfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{porfolio_item}",
		subtitle: "Ruby on rails",
		body: "Unfortunately, there is a darker side to this development. Remember how IoT can be a double-edged sword? This increase in IoT adoption means that hackers will have more entry points into a business.",
		main_image: "https://via.placeholder.com/600X400.png?",
		thumb_image: "https://via.placeholder.com/350X200.png?"
	)
end

1.times do |porfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{porfolio_item}",
		subtitle: "Angular",
		body: "Unfortunately, there is a darker side to this development. Remember how IoT can be a double-edged sword? This increase in IoT adoption means that hackers will have more entry points into a business.",
		main_image: "https://via.placeholder.com/600X400.png?",
		thumb_image: "https://via.placeholder.com/350X200.png?"
	)
end

puts "9 porfolios created"