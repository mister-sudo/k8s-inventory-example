# Набор ролей
### В папке terraform пример развертывания виртуалок для proxmox. Иметь ввиду, чтобы установить зависимости для proxmox провайдера, нужен забугорный впн.
### Действия ниже запускаются из корня проекта
### Установка pip3
```
sudo apt install python3-pip
```
### Установка ansible
```
pip3 install ansible==2.14.6
```
### Установить зависимости
```
ansible-galaxy install -r requirements.yml --force
```
### Прописать ключ ssh. Публичный ключ поместить в ./deploy/prod/files/ssh_auth_keys/ и прописать его в ./deploy/prod/group_vars/* . Доступ к виртуалкам будет по этому ключу. Также ролью инит раскатываем базовые настройки нод, а роль k8s-cluster непосредственно сам кластер. Настройки файрволла и сетевой безопасности не реализованы
### Иметь ввиду что если создаете виртуалки вручную то должен быть пользователь super-admin
### Запустить playbook, указав пути к inventory
```
ansible-playbook -u super-admin -i deploy/prod/inventory playbooks/init.yml
```
```
ansible-playbook -u super-admin -i deploy/prod/inventory playbooks/k8s-cluster.yml
```
### Данная установка кластера k8s в данный момент не поддерживает автоудаление нод из кластера при удалении из inventory. Автоскейлинг на повышение количества нод работает