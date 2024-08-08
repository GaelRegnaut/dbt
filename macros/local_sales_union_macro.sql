{% macro local_sales_union_macro(prefix_lst) %}

    {% for prefix in prefixs_lst %}

        select * 
        from genial-caster-427521-p2.dbt_intro.crf_{{ prefix }}_sales_fr_data

        {% if not prefixs_lst.last %}

            union all
        
        {% endif %}

    {% endfor %}


{% endmacro %}