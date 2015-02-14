desc "Adds basic seo for each of the static pages"
task add_categories: :environment do
  # PUBLIC_PAGES.each do |page|
  #   if MetaTag
  #     MetaTag.create(tag_type: 'title', name: 'title', content: "Title for #{page[:name]}. Should be less the 55 characters : Site Name", page_lookup: page[:lookup])
  #     MetaTag.create(tag_type: 'meta', name: 'description', content: "Description for #{page[:name]}. Should be less the 150-160 characters. Should help inform the user Anything written here should also be written on the page. Not for Keyword Mashing.", page_lookup: page[:lookup])
  #   end
  # end
end
