class VideoCall < ApplicationRecord
  def to_param
    uuid
  end

  validates_presence_of :name, :uuid, :session_id, :application_id
end
