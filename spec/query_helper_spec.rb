require 'rspec'
require './support/query_helper'
include QueryHelper

describe 'data helper' do
  it 'can join values' do
    a1 = [['this', 'is'], ['the', 'end']]
    a2 = [['this', 'not'], ['the', 'friend']]
    expect(join_values(a1, a2, 0)).to eq [['this', 'is', 'not'], ['the', 'end', 'friend']]
  end

end