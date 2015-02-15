
task set_default: ["store_setup", "add_tax_categories", "add_tax_zones", "add_tax_rate", "add_shipping_categories", "add_shipping_methods", "add_taxonomies"]

desc "store setup"
task :store_setup :environment do
  store = Spree::Store.first
  store.update_attributes(name: ENV['STORE_NAME'], url: ENV['STORE_URL'], seo_title: ENV['DEFAULT_SEO_TITLE'], meta_description: ENV['DEFAULT_SEO_DESCRIPTION'], mail_from_address: ENV['DEFAULT_EMAIL_FROM'])
end

desc "Adds tax categories"
task add_tax_categories: :environment do
  Spree::TaxCategory.delete_all
  Spree::TaxCategory.create(name: 'Flowers', description: 'Flower Category', is_default: true, tax_code: nil)
  Spree::TaxCategory.create(name: 'Gifts', description: 'Gifts Category', is_default: false, tax_code: nil)
  Spree::TaxCategory.create(name: 'Editables', description: 'Editables Category', is_default: false, tax_code: nil)
end

desc "Sets Tax Zones"
task add_tax_zones: :environment do
  Spree::Zone.delete_all
  zone = Spree::Zone.new(name: ENV['STORE_STATE'], description: ENV['STORE_STATE'] + " Tax Zone", default_tax: true, zone_members_count: 1, kind: "state")
  # add state to this list
  zone.states << Spree::State.find_by_name(ENV['STORE_STATE'])
  zone.save
end

desc "Sets Tax Rate"
task add_tax_rate: :environment do
  Spree::TaxRate.delete_all
  Spree::TaxCategory.all.each do |category|
    rate = Spree::TaxRate.new(amount: 0.06, tax_category_id: category.id, included_in_price: false, name: category.name + " Tax Rate", show_rate_in_label: false)
    rate.zone = Spree::Zone.find_by_name(ENV['STORE_STATE'])
    rate.create_calculator(type: "Spree::Calculator::DefaultTax", calculable_type: "Spree::TaxRate")
    rate.save
  end
end

desc "Adds shipping categories"
task add_shipping_categories: :environment do
  Spree::ShippingCategory.delete_all
  Spree::ShippingCategory.create(name: 'Default')
end

desc "Sets Shipping Methods"
task add_shipping_methods: :environment do
  Spree::ShippingMethod.delete_all
  Spree::ShippingCategory.all.each do |category|
    default_shipping_method = ['Delivery', 'Pickup']
    default_shipping_method.each do |ship_method|
      shipping_method = Spree::ShippingMethod.new(name: ship_method, display_on: "Both", tracking_url: nil, admin_name: nil, tax_category_id: 0, code: nil)
      # how the cost of shipping is calculated.
      # Spree::Calculator::Shipping::FlatRate
      # Spree::Calculator::Shipping::FlatPercentItemTotal
      # Spree::Calculator::Shipping::FlexiRate
      # Spree::Calculator::Shipping::PerItem
      # Spree::Calculator::Shipping::PriceSack
      shipping_method.calculator_type = "Spree::Calculator::Shipping::FlatRate"
      shipping_method.shipping_categories << category
      shipping_method.zones << Spree::Zone.find_by_name(ENV['STORE_STATE'])
      shipping_method.save
      shipping_method.create_calculator(type: shipping_method.calculator_type, preferences: {amount: (ship_method == 'Pickup' ? 0 : 10), currency: "USD"})
    end
  end
end


desc "Sets Taxonomies (Categories)"
task add_taxonomies: :environment do
  # Taxonomies have many taxons
  Spree::Taxonomy.delete_all
  Spree::Taxon.delete_all
  main_taxonomy = ["Occasions", "Flower Type", "Price", "Product Type"]
  main_taxonomy.each_with_index do |main, index|
    taxonomy = Spree::Taxonomy.create(name: main, position: index)
    case main
    when "Occasions"
      occasions = ["Anniversary", "Best Sellers", "Birthday", "Congratulations", "Corporate Gifts", "Get Well", "Housewarming Gifts", "I'm Sorry", "Just Because", "Love & Romance", "New Baby", "Teacher Appreciation", "Thank You", "Thinking of You", "For Her", "For Him", "Spring Flowers"].sort
      occasions.each_with_index do |occasion, index|
        taxonomy.taxons.create(parent_id: taxonomy.taxons.first.id, name: occasion, permalink: "occasions/#{occasion.parameterize}", description: nil, meta_title: "Shop for #{occasion} Flowers Online : #{ENV['STORE_NAME']}")
      end
    when "Flower Type"
      flower_types = ["Roses", "Plants", "Spring Flower", "Modern"]
      flower_types.each_with_index do |flower, index|
        taxonomy.taxons.create(parent_id: taxonomy.taxons.first.id, name: flower, permalink: "flower-type/#{flower.parameterize}", description: nil, meta_title: "Shop for #{flower} Online : #{ENV['STORE_NAME']}")
      end
    when "Price"
      prices = ["$45 - $65", "$65 - $85", "$85 - $100", "$100+"]
      prices.each_with_index do |price, index|
        taxonomy.taxons.create(parent_id: taxonomy.taxons.first.id, name: price, permalink: "price/#{price.parameterize}", description: nil, meta_title: "Shop for flowers in the price range of #{price} : #{ENV['STORE_NAME']}")
      end
    when "Product Type"
      products = ["Flowers", "Balloons", "Gifts", "Chocolates", "Gift Baskets"]
      products.each_with_index do |product, index|
        taxonomy.taxons.create(parent_id: taxonomy.taxons.first.id, name: product, permalink: "product-type/#{product.parameterize}", description: nil, meta_title: "Shop for #{product} : #{ENV['STORE_NAME']}")
      end
    end
  end
end


