# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # stop tracking inventory levels in the application
  config.track_inventory_levels = false
  # logo for store
  # config.logo = "triquest/logo.png"
  # config.admin_interface_logo = "triquest/logo.png"
  # config.products_per_page = 20
  # config.admin_products_per_page = 20
  # begin
    # config.default_country_id = Spree::Country.find_by_name('United States').id
  # rescue
    # such a good work around =D
  # end
  # config.shipping_instructions = true
  # config.alternative_shipping_phone = true
  # config.show_descendents = false
  # config.always_include_confirm_step = true
  # config.company = true # Request company field for billing and shipping addr
end

Spree.user_class = "Spree::User"

# attachment_config = {

#   s3_credentials: {
#     access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
#     secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
#     bucket:            ENV['FOG_DIRECTORY']
#   },

#   storage:        :s3,
#   s3_headers:     { "Cache-Control" => "max-age=31557600" },
#   s3_protocol:    "https",
#   bucket:         ENV['FOG_DIRECTORY'],
#   url:            ":s3_domain_url",

#   styles: {
#       mini:     "48x48>",  # thumbs under image
#       small:    "220x220>", # images on category view
#       product:  "470x470>", # full product image
#       large:    "600x600>" # light box image
#   },
#   path:           "/store/:class/:id/:style/:basename.:extension",
#   default_url:    "/store/:class/:id/:style/:basename.:extension",
#   default_style:  "product"
# }
# attachment_config.each do |key, value|
#   Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
# end
# Spree::Image.attachment_definitions[:attachment][:convert_options] = {:all=>"-strip -auto-orient"}

