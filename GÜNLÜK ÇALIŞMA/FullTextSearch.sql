select * from Tweet_import
where text LIKE '%fenerbahce%'

select DISTINCT id_str, * from Tweet_import
where  CONTAINS (text, '"fenerbah�e" OR "be�ikta�" AND "galatasaray"')


text LIKE '%fenerbahce%'



select text from Tweet_import
where id_str='1428290135133724675'