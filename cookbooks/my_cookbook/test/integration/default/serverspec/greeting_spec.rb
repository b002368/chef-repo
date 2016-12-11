require 'serverspec'

#Required by server spec

set :backend, :exec

describe file('/tmp/greeting.txt') do
its(:content) {should match 'Ohai, Chefs!' }
end

