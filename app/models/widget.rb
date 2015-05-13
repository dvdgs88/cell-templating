class Widget < ActiveRecord::Base
  cattr_accessor :widget_options

  store_accessor :options, * widget_options

  belongs_to :block

  validate :widget_options_validation

  private

  def widget_options_validation
    options.each_key do |opt|
      puts 'validating ' + opt
      errors.add(:base, :invalid) unless widget_options.include? opt
    end
  end
end
