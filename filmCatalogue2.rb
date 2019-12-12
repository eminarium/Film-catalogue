# Отдельный класс для представления фильма
class Film
	attr_accessor	:title, :yearOfIssue, :rating

	def initialize(title, yearOfIssue, rating)
		@title 			= title
		@yearOfIssue	= yearOfIssue
		@rating 		= rating
	end

	# Преобразование в строку, отображающую все данные фильма
	def to_s
		output =  "Title\t: " + @title + "\n"
		output += "Year\t: " + @yearOfIssue.to_s + "\n"
		output += "Rating\t: " + @rating.to_s + "\n"
		output
	end

	# Формирование вывода инфо про фильм в одну строку
	def oneline
		@title + " | " + @yearOfIssue.to_s + " | " + @rating.to_s
	end
end


class FilmCatalogue
	def initialize
		@list = []
	end

	def add_film film
		@list<<film
	end

	def list_films
		@list.each { |film| puts film.oneline }
	end

	def sort_by_title
		@list.sort_by!{ |film| film.title }
	end

	def sort_by_year
		@list.sort_by!{ |film| film.yearOfIssue }
	end

	def sort_by_rating
		@list.sort_by!{ |film| film.rating }
	end
end

# Объявляем экземпляр класса Каталог фильмов - FilmCatalogue
catalogue = FilmCatalogue.new

# Объявляем несколько фильмов и сразу загоняем в объект каталог
catalogue.add_film(Film.new("Avengers Final", 2019, 9.9))
catalogue.add_film(Film.new("Sherlock Holmes", 2016, 8.5))
catalogue.add_film(Film.new("Rampage", 2017, 7.9))

# Сортируем по разным полям и выводим список
catalogue.sort_by_title
catalogue.list_films
puts ""
catalogue.sort_by_year
catalogue.list_films
puts ""
catalogue.sort_by_rating
catalogue.list_films
