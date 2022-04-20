CREATE INDEX de_ind1 ON tweets_jsonb USING gin((data->'entities'->'hashtags'));

CREATE INDEX de_ind2 ON tweets_jsonb USING gin((data->'extended_tweet'->'entities'->'hashtags'));

CREATE INDEX de_ind3 ON tweets_jsonb USING gin(to_tsvector('english', coalesce(data->'extended_tweet'->>'full_text'), data->>'text'));

CREATE INDEX de_ind4 ON tweets_jsonb USING gin((data->>'lang'));
