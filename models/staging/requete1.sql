SELECT *,
    {% set order_amount=5 %} 
    {%- if order_amount < 10 -%}
	    Shipping costs: 5€
    {%- elif order_amount < 25 -%}
        Shipping costs: €3
    {%- elif order_amount < 50 -%}
        Shipping costs: €1
    {%- else -%}
    Shipping costs: €0
    {%- endif -%}
    
FROM {{ source_table }}
WHERE created_at >= '{{ start_date }}' AND created_at <= '{{ end_date }}'