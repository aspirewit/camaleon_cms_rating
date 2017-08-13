$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "camaleon_cms_rating/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "camaleon_cms_rating"
  s.version     = CamaleonCmsRating::VERSION
  s.authors     = ["Richard Li"]
  s.email       = ["aspirewit@gmail.com"]
  s.homepage    = "https://github.com/aspirewit/camaleon_cms_rating"
  s.summary     = "A star rating plugin for the Camaleon CMS."
  s.description = "A star rating plugin for the Camaleon CMS."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.1.0"

  s.add_development_dependency "sqlite3"
end
