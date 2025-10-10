-- CREATE TABLE IF NOT EXISTS public.work(
-- 	id SERIAL PRIMARY KEY,
-- 	name VARCHAR(100),
-- 	age INT
-- );

-- INSERT INTO public.work(name, age)
-- VALUES ('Anchal',21),
--         ('Cookie',22);
-- SELECT * FROM public.work;
DELETE FROM public.work
WHERE id IN (
	SELECT id FROM public.work
	ORDER BY id
	OFFSET 2
);
SELECT * FROM public.work;