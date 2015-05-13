class Widget < ActiveRecord::Base
  WIDGET_OPTIONS = []

  belongs_to :block

  validate :widget_options

  def widget_options
    options.each do |opt|
      return false unless WIDGET_OPTIONS.include? opt[0]
    end
  end
end
