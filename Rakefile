# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'
Rails.application.load_tasks

if Rails.env.development? || Rails.env.test?
  task default: ['bundler:audit', 'rubocop']
  task :server do
    `bundle exec rails s -b 0.0.0.0`
  end
end
