# require_relative 'adding'
# require_relative 'listing'

module Selecting
  # include Adding
  # include Listing

  def selecting_an_author(authors)
    if authors.empty?
      puts 'There is no author added we have to add an Author'
      add_new_author
    else
      puts 'Do you want to select an author from the list (1) or add a new author (2)'
      option = gets.chomp.to_i
      if option == 1
        list_authors(authors)
      else
        add_new_author
      end
    end
  end

  def selecting_a_genre(genres)
    if genres.empty?
      puts 'There is no genre added we have to add a genre'
      add_new_genre
    else
      puts 'Do you want to select a genre from the list (1) or add a new genre (2)'
      option = gets.chomp.to_i
      if option == 1
        list_genres(genres)
      else
        add_new_genre
      end
    end
  end

  def selecting_a_source(sources)
    if sources.empty?
      puts 'There is no source added we have to add a source'
      add_new_source
    else
      puts 'Do you want to select a source from the list (1) or add a new source (2)'
      option = gets.chomp.to_i
      if option == 1
        list_sources(sources)
      else
        add_new_source
      end
    end
  end

  def selecting_a_label(labels)
    if labels.empty?
      puts 'There is no labels added we have to add a label'
      add_new_label
    else
      puts 'Do you want to select a label from the list (1) or add a new label (2)'
      option = gets.chomp.to_i
      if option == 1
        list_labels(labels)
      else
        add_new_label
      end
    end
  end
end
