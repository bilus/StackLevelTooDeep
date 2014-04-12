class AddLegacyTemplatemids < ActiveRecord::Migration
  def change
    ActiveRecord::Base.connection.execute("create table if not exists Templatemids (name varchar(30),TemplateID serial primary key, PluginFile text);")
  end
end
