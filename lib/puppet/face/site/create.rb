require 'puppet/face'

Puppet::Face.define(:site, '0.0.1') do
  action :create do
    summary "Initialize Puppet site"
    description <<-'EOT'
      Initialize a new Puppet site
    EOT
    returns <<-'EOT'
      Nothing
    EOT

    when_invoked do
      File.open('/tmp/newsite', 'w') do |f|
        f.puts "Testing new puppet face"
      end
    end
  end
end
