-- SELECT 
--     *,
-- 	(SELECT vote_id FROM votes where votes.vote_option_id option_id) AS vote_id,
-- 	(SELECT poll_name FROM polls WHERE polls.poll_id = options.option_belongsto) AS poll_name,
--     (SELECT poll_id FROM polls WHERE polls.poll_id = options.option_belongsto) AS poll_id,
--     (SELECT COUNT(*) FROM likes WHERE likes.like_poll_id = options.option_belongsto ) AS poll_likes_count,
--     (SELECT COUNT(*) FROM dislikes WHERE dislikes.dislike_poll_id = options.option_belongsto) AS poll_dislikes_count,
--     (SELECT COUNT(*) FROM comments WHERE comments.comment_poll_id = options.option_belongsto) AS poll_comment_count,
--     (SELECT COUNT(votes.vote_option_id) FROM votes AS vote_count,
--     (SELECT polls.poll_user_id FROM polls where polls.poll_id = options.option_belongsto ) AS poll_user_id FROM polls JOIN OPTIONS ON polls.poll_id = options.option_belongsto GROUP BY options.option_name