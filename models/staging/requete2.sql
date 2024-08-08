SELECT
    employee_id,
    {{ first_name }} ||''||{{ last_name }} AS full_name,
    {{ [first_name | trim, last_name] | join(' ')}}
    {{ employee_name | trim }},
    {{ department | capitalize | default('Unknown')}},
    hire_date

from employee_data


SELECT
    employee_id,
    {{ first_name | trim }} AS cleaned_employee_name, 
    last_name
    {{ [first_name | trim, last_name] | join(' ')}} AS full_name,
    {{ employee_name | trim }},
    {{ department | capitalize | default('Unknown')}} AS Department,
    hire_date

from employee_data