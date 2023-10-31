class Entry < ApplicationRecord
  def parsed_data
    JSON.parse data
  end
end
