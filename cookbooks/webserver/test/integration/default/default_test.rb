# # encoding: utf-8

# Inspec test for recipe webserver::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('apache2') do
  it { should be_installed }
end

describe port(80) do
  it { should be_listening }
end

describe port(443) do
  it { should be_listening }
end