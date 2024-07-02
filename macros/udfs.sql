{% macro create_udfs(input) %}
{% if ',' not in input %}
  CAST( {{ input }} AS INT64 )
{% else %}
  CAST(REPLACE({{ input }}, ',', '') AS INT64)
{% endif %}
{% endmacro %}