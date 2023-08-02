# Capfile
set :default_stage, "production"

# Load DSL and set up stages
require "capistrano/setup"

# Include default deployment tasks
require "capistrano/deploy"

# Load the SCM plugin appropriate to your project (e.g., for Git)
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git


# Load the default tasks for a Rails app
require "capistrano/rails"

# Load custom tasks if you have any
# require "capistrano/custom_tasks"

# Load the Multistage plugin for different deployment stages (e.g., staging, production)
# require "capistrano/ext/multistage"

# Set the stages that you want to deploy to
set :stages, %w(staging production)

# Set the default stage to staging
set :default_stage, "staging"

# Load the specific stage configuration file based on the stage set above
# This file should be located in the config/deploy directory with the same name as the stage (e.g., staging.rb)
# The configuration in the specific stage file will override the settings defined in this Capfile
# The specific stage file is where you should define your server, repository, deploy path, user, and SSH options.
# The example configuration you provided earlier would go into these specific stage files.

# For example, for the 'staging' stage, you would have a 'staging.rb' file with the following content:
# ```
# # config/deploy/staging.rb
set :application, 'viky'
set :repo_url, 'https://github.com/akshaykumar-tech/new_practice_repo.git'

set :deploy_to, '/home/dev/Documents/projects/viky'
set :user, 'ubuntu'
set :ssh_options, {
  keys: %w(/home/dev/Downloads/ak2.pem),
  forward_agent: true,
  auth_methods: %w(publickey)
}
server '3.111.218.100', user: fetch(:user), roles: %w{app db web}
# ```

# To deploy to the 'production' stage, you would have a 'production.rb' file with similar content.

# If you have any custom tasks defined in the 'capistrano/custom_tasks.rb' file, uncomment the line below:
# require "capistrano/custom_tasks"
