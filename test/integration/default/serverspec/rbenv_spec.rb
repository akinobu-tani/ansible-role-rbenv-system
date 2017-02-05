require 'serverspec'

set :backend, :exec

describe command('$SHELL -lc "rbenv --version"') do
  its(:exit_status) { should eq 0 }
end

describe command('$SHELL -lc "rbenv commands"') do
  its(:stdout) { should contain 'install' }
end

describe command('$SHELL -lc "ruby --version"') do
  its(:stdout) { should contain 'ruby 2.4.0' }
end

describe command('$SHELL -lc "gem list"') do
  its(:stdout) { should contain 'bundler' }
end

