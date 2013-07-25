class Model::MrPorter
  def home
    Model::Page::Home.new
  end

  def search_results
  	Model::Page::SearchResults.new
  end
end