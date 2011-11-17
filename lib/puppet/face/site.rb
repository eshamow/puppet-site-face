require 'puppet'
require 'puppet/face'

Puppet::Face.define(:site, '0.0.1') do
  summary   "Manage a Puppet Site Configuration"
  copyright "Eric Shamow/Puppet Labs", 2011
  license   "Apache 2 license"

  def config(options)
    @class = options[:class]
    @group = options[:group]
  end
end
