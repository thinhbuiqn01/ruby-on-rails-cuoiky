class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  after_initialize :default_values
  private
  def default_values
    self.status ||= 1
  end
end
