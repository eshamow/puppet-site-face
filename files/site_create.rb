require 'puppet/face'
require 'puppet/face/site/site_datastore.rb'

Puppet::Face.define(:site, '0.0.1') do
  action :create do
    summary "Initialize Puppet site"
    arguments "<data>"
    description <<-'EOT'
      Initialize a new Puppet site
    EOT
    returns <<-'EOT'
      Nothing
    EOT

    when_invoked do |args|
      if args.has_key?(:name) then
        site_name = args[:name]
      else
        site_name = 'SITE_01'
      end

      if args.has_key?(:mode) then
        if [ 'standalone', 'balanced' ].include? args[:mode] then
          site_mode = args[:mode]
        else
          fail "Mode must be one of 'standalone' or 'balanced'"
        end
      else
        site_mode = 'standalone'
      end

      SiteDatastore::create_site( site_name, site_mode )

    end

  end
end
