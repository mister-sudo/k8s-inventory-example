# Набор ролей
### Установка pip3
```
$ sudo apt install python3-pip
```
### Установка ansible
```
$ pip3 install ansible==2.14.6
```
### Установить зависимости
```
$ ansible-galaxy install -r requirements.yml --force
```
### Прописать ключ ssh
### Запустить playbook, указав пути к inventory
```
$ ansible-playbook -u super-admin -i deploy/prod/inventory playbooks/init.yml
```
```
$ ansible-playbook -u super-admin -i deploy/prod/inventory playbooks/k8s-cluster.yml
```