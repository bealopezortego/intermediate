# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should be_listening }
end

describe command ('curl http://localhost') do
its(:stdout) {should match (/Welcome Home/)}
end
