class Task < ApplicationRecord
  scope :root, -> { where(parent: nil) }
  scope :pending, -> { where(completed_at: nil) }

  belongs_to :parent, class_name: 'Task', optional: true, inverse_of: :tasks
  has_many :tasks, foreign_key: :parent_id, inverse_of: :parent

  validates :title, :priority, presence: true

  before_create :set_points_tag

  private

  def set_points_tag
    tags << 'sp-2' if (tags & %w[sp-1 sp-2 sp-3]).empty?
  end
end
