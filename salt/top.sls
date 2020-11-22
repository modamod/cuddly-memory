{% if grains['id'].startswith('minion') }
stage:
  '*':
    - common
{% elif grains['id'].startswith('master')}
prod:
  '*':
    - common
{% else %}
base:
  '*':
    - common
{% endif %}
