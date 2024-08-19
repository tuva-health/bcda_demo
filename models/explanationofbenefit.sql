{% if var('use_synthetic_data') == true -%}

select
    id
    , benefitbalance_0_category_coding_0_code
    , benefitbalance_0_category_coding_0_display
    , benefitbalance_0_category_coding_0_system
    , billableperiod_end
    , billableperiod_extension_0_url
    , billableperiod_extension_0_valuecoding_code
    , billableperiod_extension_0_valuecoding_display
    , billableperiod_extension_0_valuecoding_system
    , billableperiod_start
    , contained_0_active
    , contained_0_id
    , contained_0_identifier_0_type_coding_0_code
    , contained_0_identifier_0_type_coding_0_system
    , contained_0_identifier_0_value
    , contained_0_identifier_1_system
    , contained_0_identifier_1_type_coding_0_code
    , contained_0_identifier_1_type_coding_0_system
    , contained_0_identifier_1_value
    , contained_0_meta_profile_0
    , contained_0_name
    , contained_0_resourcetype
    , created
    , facility_extension_0_url
    , facility_extension_0_valuecoding_code
    , facility_extension_0_valuecoding_display
    , facility_extension_0_valuecoding_system
    , identifier_0_system
    , identifier_0_type_coding_0_code
    , identifier_0_type_coding_0_display
    , identifier_0_type_coding_0_system
    , identifier_0_value
    , identifier_1_system
    , identifier_1_type_coding_0_code
    , identifier_1_type_coding_0_display
    , identifier_1_type_coding_0_system
    , identifier_1_value
    , insurance_0_coverage_reference
    , insurance_0_focal
    , insurer_identifier_value
    , item_0_locationaddress_state
    , item_0_productorservice_coding_0_code
    , item_0_productorservice_coding_0_display
    , item_0_productorservice_coding_0_system
    , item_0_quantity_value
    , item_0_revenue_coding_0_code
    , item_0_revenue_coding_0_display
    , item_0_revenue_coding_0_system
    , item_0_sequence
    , meta_lastupdated
    , meta_profile_0
    , outcome
    , patient_reference
    , payment_amount_currency
    , payment_amount_value
    , provider_reference
    , resourcetype
    , status
    , subtype_coding_0_code
    , subtype_coding_0_system
    , subtype_text
    , total_0_amount_currency
    , total_0_amount_value
    , total_0_category_coding_0_code
    , total_0_category_coding_0_display
    , total_0_category_coding_0_system
    , total_0_category_coding_1_code
    , total_0_category_coding_1_display
    , total_0_category_coding_1_system
    , type_coding_0_code
    , type_coding_0_display
    , type_coding_0_system
    , type_coding_1_code
    , type_coding_1_system
    , type_coding_2_code
    , type_coding_2_display
    , type_coding_2_system
    , use
    , item_0_productorservice_extension_0_url
    , item_0_productorservice_extension_0_valuecoding_code
    , item_0_productorservice_extension_0_valuecoding_display
    , item_0_productorservice_extension_0_valuecoding_system
    , disposition
    , item_0_category_coding_0_code
    , item_0_category_coding_0_display
    , item_0_category_coding_0_system
    , item_0_locationcodeableconcept_coding_0_code
    , item_0_locationcodeableconcept_coding_0_display
    , item_0_locationcodeableconcept_coding_0_system
    , item_0_locationcodeableconcept_extension_0_url
    , item_0_locationcodeableconcept_extension_0_valuecoding_code
    , item_0_locationcodeableconcept_extension_0_valuecoding_display
    , item_0_locationcodeableconcept_extension_0_valuecoding_system
    , item_0_servicedperiod_end
    , item_0_servicedperiod_start
    , provider_identifier_system
    , provider_identifier_value
    , item_0_diagnosissequence_0
    , facility_identifier_type_coding_0_code
    , facility_identifier_type_coding_0_system
    , facility_identifier_value
    , identifier_2_system
    , identifier_2_type_coding_0_code
    , identifier_2_type_coding_0_display
    , identifier_2_type_coding_0_system
    , identifier_2_value
    , insurance_0_coverage_extension_0_url
    , insurance_0_coverage_extension_0_valueidentifier_system
    , insurance_0_coverage_extension_0_valueidentifier_value
    , insurance_0_coverage_extension_1_url
    , insurance_0_coverage_extension_1_valueidentifier_system
    , insurance_0_coverage_extension_1_valueidentifier_value
    , item_0_careteamsequence_0
    , item_0_serviceddate
    , coalesce(payment_date,billableperiod_start) as payment_date
    , total_1_amount_currency
    , total_1_amount_value
    , total_1_category_coding_0_code
    , total_1_category_coding_0_display
    , total_1_category_coding_0_system
    , type_coding_1_display
    , case
        when lower(type_coding_0_display) = 'inpatient claim' then '0101'
            else item_0_revenue_extension_0_url
    end as item_0_revenue_extension_0_url
    , item_0_revenue_extension_0_valuecoding_code
    , item_0_revenue_extension_0_valuecoding_system
    , filename
    , processed_datetime
from {{ ref('explanationofbenefit_seed') }}

{%- else -%}

select * from {{ source('source_input', 'explanationofbenefit') }}

{%- endif %}
