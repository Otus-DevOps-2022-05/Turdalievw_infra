# Turdalievw_infra
Turdalievw Infra repository
bastion public ip 51.250.77.237 , someinternalhost ip 10.128.0.35
Доп задание:
Подключение одной строкой ssh -i ~/.ssh/appuser -J appuser@51.250.77.237 appuser@10.128.0.35
Конфиг подключения:
Host bastion
      Hostname 51.250.77.237
      User appuser
      Port 22
      IdentityFile ~/.ssh/appuser

Host someinternalhost
     User appuser
     ProxyCommand ssh bastion -W 10.128.0.35:22
