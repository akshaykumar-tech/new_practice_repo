# config/deploy/production.rb
# config/deploy/production.rb
# Set the roles for deployment (app, db, web)

set :stage, :production
server '3.111.218.100', user: fetch(:user), roles: %w{app db web}


# config/deploy.rb
set :stages, %w(production)
ask :branch, 'master'


# Set the default stage to staging
set :default_stage, "production"
# Set your application name
set :application, 'deeporion1'

# Set the repository URL of your Rails application
set :repo_url, 'https://github.com/akshaykumar-tech/new_practice_repo.git'


# Set the deploy path on the server
set :deploy_to, '/home/dev/Documents/projects/viky'

# Set the user for SSH login on the server
set :user, 'ubuntu'

# Set the SSH private key (path to the .pem file)
set :ssh_options, {
  keys: ["/home/dev/Downloads/ak2.pem"],
  forward_agent: true,
  auth_methods: %w(publickey)
}

# Set the roles for deployment (app, db, web)
server '3.111.218.100', user: fetch(:user), roles: %w{app db web}

