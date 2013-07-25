class Model::Page::Home < SitePrism::Page
  set_url "#{Helpers::Config['site_root']}"

  section :search, Model::Section::Search, "#site-search"
end