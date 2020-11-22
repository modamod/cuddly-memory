{% if grains['id'].startswith('master')}
prod:
  '*':
    - common
{% else %}
dev:
  '*':
    - common
{% endif %}
