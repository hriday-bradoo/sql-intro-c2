-- Who hit the most home runs in 2019, and what team did they play for?

SELECT players.first_name, players.last_name , teams.name, MAX(stats.home_runs)
FROM players 
INNER JOIN stats on players.id = stats.player_id
INNER JOIN teams on stats.team_id = teams.id
WHERE teams.year = 2019;

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


