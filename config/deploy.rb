require 'deprec'

set :user, "deploy"  
set :application, "yc2008"
set :domain, "yc2008.ashleafmedia.com"
set :repository,  "svn+ssh://yc2008.ashleafmedia.com/var/www/apps/yc2008/repos/trunk"
set :scm_username, "deploy"
# set :gems_for_project, %w(dr_nic_magic_models swiftiply) # list of gems to be installed

# Update these if you're not running everything on one host.
role :app, domain
role :web, domain
role :db,  domain, :primary => false
role :scm, domain # used by deprec if you want to install subversion

# If you aren't deploying to /opt/apps/#{application} on the target
# servers (which is the deprec default), you can specify the actual location
# via the :deploy_to variable:
# set :deploy_to, "/var/www/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion

namespace :deploy do
  task :restart, :roles => :app, :except => { :no_release => true } do
    top.deprec.mongrel.restart
  end
end