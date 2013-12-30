require 'spec_helper'

describe Contact do
  describe 'validations' do
    let(:blank) { [nil, ''] }

    it { should have_valid(:email).when('name@company.com') }
    it { should_not have_valid(:email).when(*blank) }

    it { should have_valid(:subject).when('A Nigerian Prince Died') }
    it { should_not have_valid(:subject).when(*blank) }

    it { should have_valid(:description).when('Send me your SSN for money!') }
    it { should_not have_valid(:description).when(*blank) }

    it { should have_valid(:first_name).when('Foo') }
    it { should_not have_valid(:first_name).when(*blank) }

    it { should have_valid(:last_name).when('Bar') }
    it { should_not have_valid(:last_name).when(*blank) }
  end

end
