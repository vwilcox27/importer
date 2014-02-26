class Product < ActiveRecord::Base
  attr_accessible :value, :company, :dropdown
  
  validates_presence_of :value, :company, :dropdown
  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end
end