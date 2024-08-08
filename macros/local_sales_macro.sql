{% macro local_sales_macro(prefixs) %}

    select * 
    from genial-caster-427521-p2.dbt_intro.crf_{{ prefixs }}_sales_fr_data

{% endmacro %}