{% if var('use_synthetic_data') == true -%}

select * from {{ ref('explanationofbenefit_supportinginfo_seed') }}

{%- else -%}

select * from {{ source('source_input', 'explanationofbenefit_supportinginfo') }}

{%- endif %}
