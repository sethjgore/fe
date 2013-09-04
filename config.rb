
# ROUTER IMPLEMENTATION VIA MIDDLEMAN RACKWARE
page "/",               :layout => :layout
page "/projects.html",  :layout => :project

#SET DIRECTORIES OF IMG / JS / CSS
set :css_dir, 'css'

set :js_dir, 'js'

set :images_dir, 'img'

activate :livereload
activate :cache_buster
activate :image_optim
activate :gzip
activate :minify_html

#WHEN LAND PROJECT/* DODO? && BLOG PREFERENCES
activate :blog do |blog|

  blog.prefix = "projects"
  blog.permalink = ":title"
  blog.layout = "projectsingle"
  blog.default_extension = ".md"
  blog.paginate = true

end

# TURNS ON RELATIVE ASSETS. DO NOT CHANGE
activate :relative_assets

# TURNS ON VANITY URLS. DO NOT CHANGE. 
activate :directory_indexes

# TURNS ON RELATIVE LINKING. DO NOT CHANGE.
set :relative_links, true

# IN BROWSER EDITING PREFERENCES. DO NOT CHANGE. 
# DOES NOT WORK AT THE MOMENT.
# WAIT UNTIL COMPASS ACCEPTS SASS BLEEDING EDGE
sass_options = {:debug_info => true}
sass_options = {:sourcemap => true}

set :markdown_engine, :redcarpet


#WHEN BUILDING SITE, DODO? 
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :cache_buster

  # Use relative URLs
  activate :relative_assets

  activate :directory_indexes
  activate :gzip
end