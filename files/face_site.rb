require 'puppet'
require 'puppet/face'

Puppet::Face.define(:site, '0.0.1') do
  summary   "Manage a Puppet Site Configuration"
  copyright "Eric Shamow/Puppet Labs", 2011
  license   "Apache 2 license"

  option "--name NAME" do
    summary "Operate on site <name>.  Default is SITE_01"
    description <<-'EOT'
      Operate on site <name>.  Default is SITE_01
    EOT
  end

  option "--mode MODE" do
    summary "Set environment operating mode"
    description <<-'EOT'
      Set environment operating mode to standalone or balanced.  Balanced will expect an Apache load balancer.  Default is standalone.
    EOT
  end
  def config(options)
    @class = options[:class]
    @group = options[:group]
  end
end
