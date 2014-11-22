module PostHelper
	def get_random_question
		page_range = 30
		page_num = rand(page_range)+1
		doc = Nokogiri::HTML(open("http://www.careercup.com/page?n=#{page_num}"))
		questions = doc.css("li.question .entry p")
		question_num = rand(questions.length)+1
		questions[question_num].text
	end
end
