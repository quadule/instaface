require 'spec_helper'

describe Person do
  describe '.api' do
    subject { Person.api }
    it { should respond_to(:faces_detect) }
  end
end
