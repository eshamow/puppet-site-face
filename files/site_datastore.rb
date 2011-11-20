module SiteDatastore
  def self.create_site( name, mode )
    File.open('/etc/puppetlabs/puppet/site.yaml', 'w') do |f|
      siteyaml = [ {"name" => "#{name}" }, {"mode" => "#{mode}" } ]
      f.puts siteyaml.to_yaml
    end
  end
end
