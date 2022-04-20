CREATE INDEX index_1 ON tweet_tags(tag,id_tweets);

CREATE INDEX index_2 ON tweet_tags(id_tweets,tag);

CREATE INDEX index_3 ON tweets(id_tweets,lang);

CREATE INDEX index_4 ON tweets USING gin(to_tsvector('english',text));

CREATE INDEX index_5 ON tweets(lang);
