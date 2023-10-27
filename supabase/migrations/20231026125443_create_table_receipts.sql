DROP TABLE IF EXISTS public.receipt CASCADE;
CREATE TABLE
  IF NOT EXISTS public.receipt (
    id UUID DEFAULT uuid_generate_v7() NOT NULL,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NULL,
    amount NUMERIC(10, 2) NOT NULL,
    purchased_at TIMESTAMPTZ NOT NULL,
    category_id UUID REFERENCES public.receipt_categories NULL,
    created_by UUID REFERENCES auth.users ON DELETE CASCADE NOT NULL,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP NOT NULL,

    CONSTRAINT receipt_id_pkey PRIMARY KEY (id)
  );

CREATE INDEX IF NOT EXISTS receipt_category_id_idx
  ON public.receipt (category_id);

CREATE INDEX IF NOT EXISTS receipt_created_by_idx
  ON public.receipt (created_by);

CREATE INDEX IF NOT EXISTS receipt_purchased_at_idx
  ON public.receipt (purchased_at);

-- RLS related
ALTER TABLE public.receipt ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow ALL ONLY own receipt"
  on public.receipt
  FOR ALL USING (auth.uid() = created_by);