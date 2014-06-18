class Page < ActiveRecord::Base
  def title
    [side, other_side].join(' VS ')
  end
end
