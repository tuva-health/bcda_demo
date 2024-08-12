{% if var('use_synthetic_data') == true -%}

select * from {{ ref('coverage_extension_seed') }}

{%- else -%}

select * from {{ source('source_input', 'coverage_extension') }}

{%- endif %}

