{% if var('use_synthetic_data') == true -%}

select * from {{ ref('explanationofbenefit_item_0_extension_seed') }}

{%- else -%}

select * from {{ source('source_input', 'explanationofbenefit_item_0_extension') }}

{%- endif %}
