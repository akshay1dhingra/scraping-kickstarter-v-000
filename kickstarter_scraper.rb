# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')

  kickstarter = Nokogiri::HTML(html)
  binding.pry
end



# projects: kickstarter.css("li.project.grid_4")
# title: projects.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text
# location: project.css(".location-name").text
# funded: project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
