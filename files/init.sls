/root/yogi/vim_7.4.052-1ubuntu3_amd64.deb:
  file.managed:
    - source: salt://files/vim_7.4.052-1ubuntu3_amd64.deb

  cmd.run:
    - name: 'sudo dpkg -i /root/yogi/vim_7.4.052-1ubuntu3_amd64.deb'
