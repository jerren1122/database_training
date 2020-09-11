require 'sequel'
require 'sqlite3'
require './tables/language_age.rb'
require './tables/language_table.rb'
require './support/query_helper'
require './support/data_helper'

class Execution
  include QueryHelper
  include DataHelper
  attr_reader(:db_conn, :lt, :la, :ltc, :lta)

  def initialize
    @db_conn = Sequel.sqlite('./sample_database')
    @ltc = LanguageTable.new(@db_conn)
    @lta = LanguageAge.new(@db_conn)
    @lt = LanguageTable.new(@db_conn).table
    @la = LanguageAge.new(@db_conn).table
  end

  def join_tables
    a1 = lt.map([:languages, :users])
    a2 = la.map([:languages, :year_founded])
    join_values(a1, a2, 0)
  end

  def execute_query(conn, key)
    output = []
    input = conn.execute(get_data_from_yml_file(key))
    input.each{|value| output << value }
    output
  end
end

ex = Execution.new
# puts ex.execute_query(ex.db_conn, "simple_query")
# puts ex.execute_query(ex.db_conn, "join_query")
# puts ex.lta.return_all_languages
# puts ex.join_tables
