# Common packages to install on all servers
python3-pip:
  pkg.installed

jdoe:
  user.present:
    - fullname: Jane Doe
    - shell: /bin/bash
    - home: /home/jdoe
    - empty_password: True
    - uid: 4000
    - gid: 4000
    - groups:
      - sudo

/home/jdoe/venv/:
  virtualenv.managed:
    - system_site_packages: False
    - requirements: salt://common/files/requirements.txt
    - python: python3
    - user: jdoe
