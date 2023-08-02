set :application, 'deeporion1'
set :repo_url, 'https://github.com/akshaykumar-tech/new_practice_repo.git'
set :deploy_to, '/home/dev/Documents/projects/viky'
set :user, 'ubuntu'
set :ssh_options, {
  keys: %w(/home/dev/Downloads/ak2.pem),
  forward_agent: true,
  auth_methods: %w(publickey)
}

server '3.111.218.100', user: fetch(:user), roles: %w{app db web}
