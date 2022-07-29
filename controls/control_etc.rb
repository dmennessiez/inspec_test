title 'Installation validation'

control 'windows-Firefox' do
  title 'Ensure \'Mozilla Firefox\' is \'Installed\''
  desc 'It is a part of the Golden AMI provisioning'
  impact 0.0
  tag 'firefox'
  tag 'tag': 'tag_1'
  ref 'Ref', url: 'https://github.com/dmennessiez/inspec_test/'
  ref 'Syntax', url: 'https://docs.chef.io/inspec/dsl_inspec/'
  describe registry_key('HKEY_LOCAL_MACHINE\\SOFTWARE\\Mozilla\\Mozilla Firefox') do
    it { should exist }
  end
end

title 'Installation validation'

control 'windows-error' do
  title 'Check to be in error'
  desc 'It is a part of the Golden AMI provisioning'
  impact 0.0
  tag 'Error'
  tag 'tag': 'tag_1'
  ref 'Ref', url: 'https://github.com/dmennessiez/inspec_test/'
  ref 'Syntax', url: 'https://docs.chef.io/inspec/dsl_inspec/'
  describe registry_key('HKEY_LOCAL_MACHINE\\SOFTWARE\\error\\') do
    it { should exist }
  end
end
