WITH common_crawl AS (
    SELECT * FROM {{ ref('stg_common_crawl') }}
),
abr AS (
    SELECT * FROM {{ ref('stg_abr') }}
)
SELECT
    cc.website_url,
    cc.company_name AS cc_name,
    abr.company_name AS abr_name,
    abr.abn,
    abr.state,
    abr.entity_type,
    cc.industry
FROM common_crawl cc
LEFT JOIN abr
ON cc.company_name = abr.company_name;
