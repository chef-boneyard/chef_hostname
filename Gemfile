source "https://rubygems.org"

group :rake do
  gem "rake"
  gem "tomlrb"
  gem "github_changelog_generator"
end

group :lint do
  gem "foodcritic", ">= 6.0"
  gem "chefstyle", "= 0.3.0"
end

group :unit do
  gem "berkshelf", ">= 4.3"
  gem "chefspec", ">= 4.5"
end

group :kitchen_common do
  gem "test-kitchen", ">= 1.6"
end

group :kitchen_vagrant do
  gem "kitchen-vagrant", ">= 0.19"
end

group :kitchen_docker do
  gem "kitchen-docker", ">= 2.3"
end

group :kitchen_cloud do
  gem "kitchen-digitalocean"
  gem "kitchen-ec2"
  gem "kitchen-azurerm"
end

group :development do
  gem "winrm-fs", "~> 0.3"
  gem "stove"
end
