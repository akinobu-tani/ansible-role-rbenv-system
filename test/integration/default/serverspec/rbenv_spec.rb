require 'serverspec'

set :backend, :exec

describe command('$SHELL -lc "rbenv --version"') do
  its(:exit_status) { should eq 0 }
end

describe command('$SHELL -lc "rbenv commands"') do
  its(:stdout) { should contain 'install' }
end

describe file('/etc/sudoers.d/rbenv') do
  it { should exist }
end

describe file('/etc/profile.d/rbenv.sh') do
  it { should exist }
end

describe file('/etc/gemrc') do
  it { should exist }
end
