require_relative 'local_storage'
require_relative 'show_options'

module ListLabels
  # rubocop:disable Lint/ShadowedArgument
  include ShowOptions
  def list_all_labels(labels)
    labels = load_storage('label')
    puts 'There are no labels yet.' if labels.empty?
    puts ' '

    labels.each_with_index do |label, index|
      puts "#{index + 1}) Title: #{label['Title']} Color: #{label['Color']}"
      puts ' '
    end
    menu_return
  end
  # rubocop:enable Lint/ShadowedArgument
end
