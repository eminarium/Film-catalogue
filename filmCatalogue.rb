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

# Вывод инфо про фильма 
# print sherlock.to_s   		# Вывод в несколько строк, полная инфа
# puts avengersFinal.oneline	# Вывод инфа фильма в одну строку

# Список куда будем накоплять фильмы
filmList = []

# Объявляем несколько фильмов
avengersFinal = Film.new("Avengers Final", 2019, 9.9)
sherlock = Film.new("Sherlock Holmes", 2016, 8.5)
rampage = Film.new("Rampage", 2017, 7.9)

# Собираем их в ранее объявленный список.
filmList<<avengersFinal
filmList<<sherlock
filmList<<rampage

# Сортируем по названию.
# Используем сортировку с модификацией массива, 
# т.е. с восклицательным знаком
filmList.sort_by!{ |film| film.title }
filmList.each { |film| puts film.oneline }
puts ""
filmList.sort_by!{ |film| film.yearOfIssue }
filmList.each { |film| puts film.oneline }
puts ""
filmList.sort_by!{ |film| film.rating }
filmList.each { |film| puts film.oneline }

