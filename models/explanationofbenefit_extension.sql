{% if var('use_synthetic_data') == true -%}

select * from {{ ref('explanationofbenefit_extension_seed') }}

{%- else -%}

select * from {{ source('source_input', 'explanationofbenefit_extension') }}

{%- endif %}
