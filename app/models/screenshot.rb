class Screenshot < ActiveRecord::Base
  belongs_to :pinid
  has_attached_file :screenshot, :styles => { medium: "500x375>", thumb: "80x60>"}

  attr_accessible :pin_id, :screenshot_content_type, :screenshot_file_name, :screenshot_file_size, :screenshot_updated_at
end
