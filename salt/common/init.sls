# Common packages to install on all servers
python3-pip:
  pkg.installed

jdoe:
  user.present:
    - fullname: Jane Doe
    - home: /home/jdoe

python3-virtualenv:
  pkg.installed

virtualenv:
  pip.installed:
    - require:
      - pkg: python3-pip

/home/jdoe/venv:
  virtualenv.managed:
    - venv_bin: "python3 -m virtualenv"
    - system_site_packages: False
    - requirements: salt://common/files/requirements.txt
    - python: python3
    - user: jdoe
    - require:
      - jdoe
