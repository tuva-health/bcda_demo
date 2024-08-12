{% if var('use_synthetic_data') == true -%}

select * from {{ ref('explanationofbenefit_procedure_seed') }}

{%- else -%}

select * from {{ source('source_input', 'explanationofbenefit_procedure') }}

{%- endif %}
