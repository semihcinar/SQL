--STRING_SPLIT

SELECT	VALUE
FROM	string_split('John,Sarah,Jack' , ',')

SELECT	VALUE
FROM	string_split('John/Sarah/Jack' , '/')


SELECT	VALUE
FROM	string_split('John//Sarah//Jack' , '/')

SELECT	*
FROM	string_split('John//Sarah//Jack' , '/')