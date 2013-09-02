case node['haproxy']['supervisor']
when 'monit'
  include_recipe 'monit'
  monitrc 'monit_haproxy' do
    template_cookbook 'haproxy'
  end
end