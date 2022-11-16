module ListLabels
  def list_all_labels(labels)
    puts 'There are no labels yet.' if labels.empty?
    labels.each_with_index do |label, index|
      puts "#{index + 1}) #{label.title} #{label.color}"
    end
  end
end
