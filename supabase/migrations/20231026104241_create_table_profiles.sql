CREATE TABLE
  IF NOT EXISTS public.profiles (
    id UUID REFERENCES auth.users ON DELETE CASCADE NOT NULL,
    name VARCHAR(255) NULL,
    email VARCHAR(255) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT profiles_id_pkey PRIMARY KEY (id)
  );


-- ADD a row to profiles table every time a user signs up.
-- By using trigger. ref: https://supabase.com/docs/guides/auth/managing-user-data#advanced-techniques
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER
LANGUAGE PLPGSQL
security definer set search_path = public
AS $$
BEGIN
  INSERT
    INTO public.profiles (id, email) VALUES (new.id, new.email);
  RETURN new;
END;
$$;

DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE PROCEDURE public.handle_new_user();

-- RLS related
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow SELECT ONLY own profile"
  on public.profiles FOR
  SELECT
    USING (auth.uid() = id);

CREATE POLICY "Allow UPDATE ONLY own profile" on public.profiles FOR
  UPDATE USING (auth.uid() = id);