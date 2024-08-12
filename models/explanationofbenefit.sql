{% if var('use_synthetic_data') == true -%}

select * from {{ ref('explanationofbenefit_seed') }}

{%- else -%}

select * from {{ source('source_input', 'explanationofbenefit') }}

{%- endif %}
