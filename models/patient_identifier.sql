{% if var('use_synthetic_data') == true -%}

select * from {{ ref('patient_identifier_seed') }}

{%- else -%}

select * from {{ source('source_input', 'patient_identifier') }}

{%- endif %}
