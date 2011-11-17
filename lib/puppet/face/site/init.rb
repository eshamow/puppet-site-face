Puppet::Face.define(:dashboard, '0.0.1') do
  action :init do
    summary "Initialize Puppet site"
    description <<-'EOT'
      Initialize a new Puppet site
    EOT
    returns <<-'EOT'
      Nothing
    EOT

    when_invoked do
      File.open('/tmp/newsite', 'w') do |f|
        f.puts "This will be added as a line with a trailing newline"
        f.write "This won't have a trailing newline"
      end
    end
  end
end
