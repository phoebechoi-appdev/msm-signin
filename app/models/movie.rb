# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  
  #another association accesser: ----

  #belongs_to(:direcor, { :required => true, :class_name => "Director", :foreign_key => "director_id"})
  #has_many(:cast, { :through => characters, :source => :actor })

  #write validations 
  validates(:title, { :presence => true })
  validates(:title, { :uniqueness => { :scope => [:year, :director_id] }})
  


end
