{% if var('use_synthetic_data') == true -%}

select * from {{ ref('explanationofbenefit_benefitbalance_0_financial_seed') }}

{%- else -%}

select * from {{ source('source_input', 'explanationofbenefit_benefitbalance_0_financial') }}

{%- endif %}
