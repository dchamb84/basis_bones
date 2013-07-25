class Model::Section::ProductList < SitePrism::Section
  elements :images, ".tall-product-image a img"

  sections :product_details, Model::Section::ProductDetails, ".product-details"
end