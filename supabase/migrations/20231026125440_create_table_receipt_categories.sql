CREATE TABLE
  IF NOT EXISTS public.receipt_categories (
    id UUID DEFAULT uuid_generate_v7() NOT NULL,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NULL,
    color VARCHAR(8) NULL, -- RGB
    created_by UUID REFERENCES auth.users ON DELETE CASCADE NOT NULL,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT receipt_categories_id_pkey PRIMARY KEY (id)
  );
CREATE INDEX IF NOT EXISTS receipt_categories_created_by_idx
  ON public.receipt_categories (created_by);

-- RLS related
ALTER TABLE public.receipt_categories ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow ALL ONLY own receipt_categories"
  on public.receipt_categories
  FOR ALL USING (auth.uid() = created_by);