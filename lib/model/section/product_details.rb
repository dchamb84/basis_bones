class Model::Section::ProductDetails < SitePrism::Section
  element :designer, ".product-designer"
  element :title, ".product-title"
  element :price, ".price-container"
end