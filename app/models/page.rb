class Page < ActiveRecord::Base
  has_many :sides

  (1..2).each do |i|
    attr_accessor :"side#{i}_name"
    define_method :"side#{i}_name=" do |name|
      sides.push Side.create!(name: name) unless name.blank?
    end
  end

  def title
    sides.map(&:name).join(' VS ')
  end
end
