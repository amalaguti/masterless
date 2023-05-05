nessus-agent:
  {%
      for version in [
          '10.3.1.20142'
      ]
  %}
  {% if version == '10.3.1.20142' %}
  '{{ version }}':
    full_name: 'Nessus Agent (x64)'
    installer: 'C:\files\NessusAgent-10.3.1-x64.msi'
    install_flags: '/qn /norestart'
    uninstaller: 'C:\files\NessusAgent-10.3.1-x64.msi'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False
  {% else %}
  '{{ version }}':
    full_name: 'Nessus Agent (x64)'
    installer: 'C:\files\NessusAgent-{{ version }}-x64.msi'
    install_flags: '/qn /norestart'
    uninstaller: 'C:\files\NessusAgent-{{ version }}-x64.msi'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False
  {% endif %}
  {% endfor %}

