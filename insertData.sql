-- to create the table 
-- CREATE TABLE IF NOT EXISTS public.work(
-- 	id SERIAL PRIMARY KEY,
-- 	name VARCHAR(100),
-- 	age INT
-- );

--insert the data into the table
INSERT INTO public.work (id, name, age)
VALUES (29,'Anchal',21),
        (57,'Cookie',22),
		(36,'Riftan',25),
		(35,'Maximillian',19);
-- SELECT * FROM public.work;

-- every time data adds new row and do not overwrite it 
SELECT * FROM public.work;