class Item < ApplicationRecord
  belongs_to :user

  scope :having_dob_between, ->(start_date, end_date) { where(dob: start_date..end_date) }

  Food = 1
  Utilities = 2
  Technique = 3
  Miscellaneous = 4


  CATEGORY = {
    Food => 'Food',
    Utilities => 'Utilities',
    Technique => 'Technique',
    Miscellaneous => 'Miscellaneous'
  }

  def status_name
    CATEGORY[status].to_s
  end
end
