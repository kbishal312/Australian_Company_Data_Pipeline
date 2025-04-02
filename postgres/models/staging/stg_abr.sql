WITH raw_data AS (
    SELECT
        abn,
        LOWER(company_name) AS company_name,
        status,
        state,
        postcode,
        entity_type,
        registration_date
    FROM {{ source('raw', 'abr_companies') }}
)
SELECT * FROM raw_data;
