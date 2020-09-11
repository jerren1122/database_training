module DataHelper
  require 'yaml'
  def get_data_from_yml_file(key)
    YAML.load(File.read("./yaml_storage/queries.yaml"))[key]
  end
end
