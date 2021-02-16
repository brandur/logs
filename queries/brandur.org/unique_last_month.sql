SELECT
    date_trunc('day', date) AS day,
    count(distinct(request_ip)) AS unique_visitors

FROM brandur_logs.brandur_org
WHERE status = 200
  AND date > now() - interval '30' day

  -- filter out static files
  AND uri NOT LIKE '%.%'

  -- filter out as many robots as we can get (this list copied from goaccess)
  AND user_agent NOT LIKE '%AdsBot-Google%'
  AND user_agent NOT LIKE '%Adsbot%'
  AND user_agent NOT LIKE '%AhrefsBot%'
  AND user_agent NOT LIKE '%AndroidDownloadManager%'
  AND user_agent NOT LIKE '%AppEngine-Google%'
  AND user_agent NOT LIKE '%AppleBot%'
  AND user_agent NOT LIKE '%BLEXBot%'
  AND user_agent NOT LIKE '%CFNetwork%'
  AND user_agent NOT LIKE '%Discordbot%'
  AND user_agent NOT LIKE '%DotBot%'
  AND user_agent NOT LIKE '%DowntimeDetector%'
  AND user_agent NOT LIKE '%DuckDuckGo-Favicons-Bot%'
  AND user_agent NOT LIKE '%Embedly%'
  AND user_agent NOT LIKE '%GoScraper%'
  AND user_agent NOT LIKE '%Googlebot%'
  AND user_agent NOT LIKE '%Googlebot-Image%'
  AND user_agent NOT LIKE '%HTTP Banner Detection%'
  AND user_agent NOT LIKE '%Hakai%'
  AND user_agent NOT LIKE '%IstellaBot%'
  AND user_agent NOT LIKE '%Jakarta Commons-HttpClient%'
  AND user_agent NOT LIKE '%Java%'
  AND user_agent NOT LIKE '%LinkedIn%'
  AND user_agent NOT LIKE '%MJ12bot%'
  AND user_agent NOT LIKE '%Mediapartners-Google%'
  AND user_agent NOT LIKE '%Microsoft-WebDAV%'
  AND user_agent NOT LIKE '%NetSystemsResearch%'
  AND user_agent NOT LIKE '%Netcraft Web Server Survey%'
  AND user_agent NOT LIKE '%NetcraftSurveyAgent%'
  AND user_agent NOT LIKE '%Nextcloud Server Crawler%'
  AND user_agent NOT LIKE '%Nimbostratus-Bot%'
  AND user_agent NOT LIKE '%PHP%'
  AND user_agent NOT LIKE '%PagesInventory%'
  AND user_agent NOT LIKE '%Pandalytics%'
  AND user_agent NOT LIKE '%PetalBot%'
  AND user_agent NOT LIKE '%PiplBot%'
  AND user_agent NOT LIKE '%PycURL%'
  AND user_agent NOT LIKE '%Python%'
  AND user_agent NOT LIKE '%Ruby%'
  AND user_agent NOT LIKE '%SemrushBot%'
  AND user_agent NOT LIKE '%Sogou%'
  AND user_agent NOT LIKE '%Twitter%'
  AND user_agent NOT LIKE '%WhatsApp%'
  AND user_agent NOT LIKE '%WinHttp.WinHttpRequest.5%'
  AND user_agent NOT LIKE '%YandexBot%'
  AND user_agent NOT LIKE '%ZmEu%'
  AND user_agent NOT LIKE '%ZoominfoBot%'
  AND user_agent NOT LIKE '%bingbot%'
  AND user_agent NOT LIKE '%facebookexternalhit%'
  AND user_agent NOT LIKE '%fastbot%'
  AND user_agent NOT LIKE '%heritrix%'
  AND user_agent NOT LIKE '%masscan%'
  AND user_agent NOT LIKE '%netEstate%'
  AND user_agent NOT LIKE '%python%'
  AND user_agent NOT LIKE '%rogerbot%'
  AND user_agent NOT LIKE '%ruby%'
  AND user_agent NOT LIKE '%yacybot%'

GROUP BY 1
ORDER BY 1;
