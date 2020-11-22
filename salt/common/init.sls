# Common packages to install on all servers
python3-pip:
  pkg.installed

jdoe:
  user.present:
    - fullname: Jane Doe
    - home: /home/jdoe

/home/jdoe/venv/:
  virtualenv.managed:
    - system_site_packages: False
    - requirements: salt://common/files/requirements.txt
    - python: python3
    - user: jdoe
    - require:
      - jdoe
