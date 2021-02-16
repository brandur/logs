SELECT uri, count(distinct(request_ip)) as unique_visitors
FROM brandur_logs.brandur_org
WHERE status = 200
  -- filter out static files
  AND uri NOT LIKE '%.%'
GROUP BY uri
ORDER BY unique_visitors DESC
LIMIT 20;
