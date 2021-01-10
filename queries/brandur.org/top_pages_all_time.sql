SELECT uri, count(*) as hits
FROM brandur_logs.brandur_org
WHERE status = 200
  AND uri NOT LIKE '%.%'
GROUP BY uri
ORDER BY hits DESC
LIMIT 20;
