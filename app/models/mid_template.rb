class MidTemplate < ActiveRecord::Base
  self.table_name = "templatemids"  
  self.primary_key = :templateid
  
  validates_presence_of :name
end