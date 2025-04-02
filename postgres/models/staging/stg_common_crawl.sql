WITH raw_data AS (
    SELECT
        id,
        website_url,
        LOWER(company_name) AS company_name,
        industry,
        extracted_at
    FROM {{ source('raw', 'common_crawl_companies') }}
)
SELECT * FROM raw_data;
