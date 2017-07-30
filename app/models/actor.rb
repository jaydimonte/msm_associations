# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  name       :string
#  dob        :string
#  bio        :text
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Actor < ApplicationRecord
    
    
    validates :name, presence: true, uniqueness: { scope: :dob}

    has_many(:movies, :class_name => "Movies", :foreign_key => "movie_id")
    has_many(:characters, :class_name => "Movies", :foreign_key => "actor_id")
    

end
