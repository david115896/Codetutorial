class Tuto < ApplicationRecord
    belongs_to :user

    has_many :comments
    has_many :language_tables
	has_many :languages, through: :language_tables

    has_many :tag_tables
    has_many :tags, through: :tag_tables

    has_many :elements, dependent: :destroy
    #accepts_nested_attributes_for :elements, allow_destroy: true #reject_if: proc {|att| att['name'].blank? }, reject_if: :all_blank
    accepts_nested_attributes_for :elements, :reject_if => :reject_tour, :allow_destroy => true

    extend FriendlyId
    friendly_id :title, use: :slugged

    def reject_tour(attributes)
        exists = attributes['text'].present?
        #empty = attributes.slice(:when, :where).values.all?(&:blank?)
        attributes.merge!({:_destroy => 1}) if !exists #and empty # destroy empty tour
        
        return (!exists)   # and empty) # reject empty attributes
    end
end
