class Category < ActiveRecord::Base

  has_many :items

  def to_param
    "#{id}-#{name.parameterize}"
  end

end
