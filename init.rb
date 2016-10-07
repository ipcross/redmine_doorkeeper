# -*- encoding : utf-8 -*-
require 'redmine'

# Patches to the Redmine core.
Rails.configuration.to_prepare do
  require_dependency 'project'
  require_dependency 'user'
  require_dependency 'hooks/views_layouts_hook'
end

Redmine::Plugin.register :redmine_doorkeeper do
  name 'Redmine Doorkeeper plugin'
  author 'Alifanov Dmitry'
  description 'Oauth2 Provider for Redmine'
  version '0.0.1'
  url 'https://github.com/ipcross/redmine_doorkeeper'
  author_url 'https://github.com/ipcross'

  menu :admin_menu, :oauth_applications, { :controller => 'doorkeeper/applications', :action => 'index' }, :caption => :oauth_applications
end
