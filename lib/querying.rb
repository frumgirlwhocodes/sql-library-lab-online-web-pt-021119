def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year FROM books WHERE books.series_id= 1 ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT Characters.name, Characters.motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT Characters.species, COUNT(species) FROM Characters GROUP BY species ORDER BY COUNT(Characters.species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, SubGenres.name FROM authors JOIN series ON Authors.id= Series.author_id JOIN SubGenres ON  SubGenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
"SELECT Series.title
  FROM Characters
  INNER JOIN series
  ON characters.series_id = series.id
  GROUP BY Series.title, species
  HAVING characters.species = 'human'
  ORDER BY COUNT(species) DESC
  LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(name)
FROM character_books
INNER JOIN characters
ON characters.id = character_books.character_id
GROUP BY characters.name
ORDER BY COUNT(name) DESC;"
end
