require 'require_all'

class Peep < ActiveRecord::Base
  
    belongs_to :user,
               class_name: 'User',
               foreign_key: "user_id"
  end
  