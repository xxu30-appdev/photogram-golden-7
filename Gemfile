source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "activeadmin"
gem "devise"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "puma", "~> 3.7"
gem "rails", "~> 5.1.4"
gem "sass-rails", "~> 5.0"
gem "sqlite3"
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "uglifier", ">= 1.3.0"

group :development, :test do
  gem "better_errors"
  gem "binding_of_caller"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "dev_toolbar", github: "firstdraft/dev_toolbar"
  gem "dotenv-rails"
  gem "grade_runner", github: "firstdraft/grade_runner"
  gem "pry-rails"
  gem "web_git", github: "firstdraft/web_git"
end

group :development do
  gem "annotate"
  gem "awesome_print"
  gem "binding_of_caller"
  gem "console_ip_whitelist", github: "firstdraft/console_ip_whitelist"
  gem "draft_generators", github: "firstdraft/draft_generators"
  gem "draft_log", github: "firstdraft/draft_log"
  gem "letter_opener"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "meta_request"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "spring"
  gem "wdm", platforms: [:mingw, :mswin, :x64_mingw]
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara"
  gem "factory_bot_rails"
  gem "rspec-rails"
  gem "webmock"
end
