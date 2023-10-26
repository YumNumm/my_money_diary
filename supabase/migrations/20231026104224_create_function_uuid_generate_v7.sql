CREATE OR REPLACE FUNCTION uuid_generate_v7() RETURNS UUID AS
$$
BEGIN
    return encode(set_bit(set_bit(overlay(
        uuid_send(gen_random_uuid())
        placing substring(int8send(floor(extract(epoch from clock_timestamp()) * 1000)::bigint) from 3)
        from 1 for 6
    ), 52, 1), 53, 1), 'hex')::uuid;
END
$$ LANGUAGE plpgsql;
-- Ref: https://gist.github.com/kjmph/5bd772b2c2df145aa645b837da7eca74
-- Copyright 2023 Kyle Hubert <kjmph@users.noreply.github.com> (https://github.com/kjmph)
