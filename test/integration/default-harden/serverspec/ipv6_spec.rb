require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file('/etc/sysctl.conf') do
  it { should be_file }
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should contain "net.ipv6.conf.all.accept_redirects=0" }
  it { should contain "net.ipv6.conf.default.router_solicitations=0" }
  it { should contain "net.ipv6.conf.all.accept_ra=0" }
end

describe command("sysctl -a") do
  its(:stdout) { should match /^net\.ipv6\.conf\.all\.accept_redirects = 0$/ }
  its(:stdout) { should match /^net\.ipv6\.conf\.default\.router_solicitations = 0$/ }
  its(:stdout) { should match /^net\.ipv6\.conf\.all\.accept_ra = 0$/ }
end

