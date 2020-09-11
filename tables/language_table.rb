class LanguageTable
  attr_reader(:table)

  def initialize(db_conn)
    @table = db_conn[:language_table]
  end

  def return_all_languages
    table.map(:languages)
  end
end