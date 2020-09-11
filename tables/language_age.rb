class LanguageAge
  attr_reader(:table)

  def initialize(db_conn)
    @table = db_conn[:language_age]
  end

  def return_all_languages
    table.map(:languages)
  end

  def return_all_ages
    table.map(:year_founded)
  end
end