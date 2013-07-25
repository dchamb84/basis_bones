Given /^I navigate to (?:an|a|the) (.*) page$/ do |page_name|
  @mrp = Model::MrPorter.new
  case page_name
  	when "mr porter home"
  	@mrp.home.load
  end
end

Given(/^I search for "(.*?)" on the mr porter home page$/) do |search_term|
  @mrp.home.search.box.set search_term
  @mrp.home.search.button.click
end

Then(/^the search results are displayed on the search page$/) do
  @mrp.search_results.product_list.should be_visible 
  @mrp.search_results.product_list.images.size.should be > 0
end

Then(/^the search results are displayed on the search page contain the contain "(.*?)"$/) do |search_term|
  @mrp.search_results.product_list.product_details.each do |thing|
  	(thing.designer.text || thing.title.text).should include search_term
  end
end
