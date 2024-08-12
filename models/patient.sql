{% if var('use_synthetic_data') == true -%}

select * from {{ ref('patient_seed') }}

{%- else -%}

select * from {{ source('source_input', 'patient') }}

{%- endif %}
