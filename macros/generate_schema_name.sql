{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}

        {{ default_schema }}

    {%- else -%}

        {{ [custom_schema_name, var('student_num')] | join('') }}

    {%- endif -%}

{%- endmacro %}