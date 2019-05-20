return unless node['platform_family'] == 'windows'

include_recipe 'windows_baseline::default'

%w(
  powershell
  git
  chef_workstation
).each do |recipe|
  include_recipe "development::#{recipe}"
end