require 'rails_helper'

RSpec.describe List, :type => :model do
  it { should validate_presence_of :title }
end
