title 'Installation validation'

control 'windows-Firefox' do
  title 'Ensure \'Mozilla Firefox\' is \'Installed\''
  desc 'It is a part of the Golden AMI provisioning'
  impact 1.0
  describe registry_key('HKEY_LOCAL_MACHINE\\SOFTWARE\\Mozilla\\Mozilla Firefox') do
    it { should exist }
  end
end
