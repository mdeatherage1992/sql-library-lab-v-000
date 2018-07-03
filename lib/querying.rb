def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title,year FROM books WHERE series_id = 1 ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name,motto FROM characters ORDER BY LENGTH(motto) desc limit 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT SPECIES,COUNT(*) FROM characters GROUP BY species ORDER BY COUNT(species) desc limit 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name,subgenres.name FROM authors JOIN series ON series.author_id = authors.id JOIN subgenres ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series JOIN books ON books.series_id = series.id JOIN character_books ON character_books.character_id = books.id JOIN characters ON character_books.character_id = characters.id
   WHERE characters.species = 'human' GROUP BY series.title ORDER BY COUNT(*) desc limit 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(*) as book_count FROM character_books JOIN characters ON character_books.character_id = characters.id GROUP BY characters.name ORDER BY book_count desc;"
end





# def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
# "SELECT projects.title, SUM(pledges.amount) FROM projects JOIN pledges ON projects.id = pledges.project_id GROUP BY projects.title;"
# end
#
# def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
# "SELECT users.name, users.age, SUM(pledges.amount) FROM users JOIN pledges ON users.id = pledges.user_id GROUP BY users.name;"
# end
#
# def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
# "SELECT projects.title, (SUM(pledges.amount) - projects.funding_goal) AS amount_left FROM projects JOIN pledges ON projects.id = pledges.project_id GROUP BY projects.title HAVING amount_left >= 0"
# end
#
# def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
#   "SELECT users.name, SUM(pledges.amount) FROM users JOIN pledges ON users.id = pledges.user_id GROUP BY users.name ORDER BY SUM(pledges.amount);"
# end
#
# def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
# "SELECT projects.category, pledges.amount FROM projects JOIN pledges ON projects.id = pledges.project_id WHERE projects.category = 'music'"
# end
#
# def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
# "SELECT projects.category, SUM(pledges.amount) FROM projects JOIN pledges ON projects.id = pledges.project_id WHERE projects.category = 'books'"
# end
