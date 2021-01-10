SELECT count(*) AS count_all
FROM brandur_logs.brandur_org
WHERE status = 200
  AND uri NOT LIKE '%.%';
