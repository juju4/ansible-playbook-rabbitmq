require 'serverspec'

# Required by serverspec
set :backend, :exec

## Use Junit formatter output, supported by jenkins but how to pass environment through kitchen?
## http://www.agilosoftware.com/blog/configuring-test-kitchen-output-jenkins/
## https://github.com/test-kitchen/busser-serverspec/issues/9
if ENV.has_key?('SERVERSPEC_JUNIT')
  require 'yarjuf'
  RSpec.configure do |c|
      c.formatter = 'JUnit'
  end
end
#require 'yarjuf'
#RSpec.configure do |c|
#  c.formatter = 'JUnit'
#end

describe package('rabbitmq-server') do
  it { should be_installed }
end

describe service('rabbitmq-server') do
  it { should be_enabled }
  it { should be_running }
end

describe file('/etc/rabbitmq/rabbitmq.config') do
  it { should be_readable }
end

#describe process("rabbitmq-server") do
#  its(:user) { should eq "rabbitmq" }
#end

describe process("beam.smp") do
  its(:user) { should eq "rabbitmq" }
end

describe port(5671) do
  it { should be_listening.with('tcp') }
end
