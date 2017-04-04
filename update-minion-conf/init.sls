/etc/salt/minion:
  file.managed:
    - source: salt://update-minion-conf/minion

  cmd.run:
    - name: 'salt-call --local service.restart salt-minion'
