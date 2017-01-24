require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file('/etc/sysctl.conf') do
  it { should be_file }
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should contain "net.ipv6.conf.all.disable_ipv6=1" }
  it { should contain "net.ipv6.conf.default.disable_ipv6=1" }
  it { should contain "net.ipv6.conf.lo.disable_ipv6=1" }
end

describe command("sysctl -a") do
  its(:stdout) { should match /^net\.ipv6\.conf\.all\.disable_ipv6 = 1$/ }
  its(:stdout) { should match /^net\.ipv6\.conf\.default\.disable_ipv6 = 1$/ }
  its(:stdout) { should match /^net\.ipv6\.conf\.lo\.disable_ipv6 = 1$/ }
end

describe file('/etc/modprobe.d/blacklist.conf'), :if => os[:family] == 'ubuntu' || os[:family] == 'debian' do
  it { should contain "blacklist ipv6" }
end

describe file('/etc/modprobe.conf'), :if => os[:family] == 'redhat' do
  it { should contain "install ipv6 /bin/true" }
end

