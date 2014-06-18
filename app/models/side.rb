class Side < ActiveRecord::Base
  belongs_to :page

  default_scope { order('created_at asc') }

  def to_s
    name
  end
end
