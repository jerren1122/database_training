require 'rspec'
require './support/data_helper'
include DataHelper

describe 'data helper' do
  it 'can pull data from the queries.yaml' do
    expect(get_data_from_yml_file('simple_query')).to eq 'select languages, users from language_table'
  end
end
