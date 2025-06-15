# Task 1
## Проанализируйте диаграмму и описание системы PropDevelopment
### Публичные данные
* данные про объекты недвижимости на сайте-витрине
* данные для виртуальных туров на сайте-витрине
### Внутренние данные
* данные для аналитической отчетности
* данные о работе систем, инструкции, обучающиее материалы
### Конфиденциальные данные
* данные о клиентах
* данные о сделках с клиентами
* данные о собственниках
* данные о сотрудниках
* регистрационные данные об объектах недвижимости
* данные финансовых операций и бухгалтерского учета
### Секретные данные
* данные для аутентификации (клиентов, собственников, сотрудников)
* платежные данные клиентов
* настройки внутренней инфраструктуры и политик безопасности

[Mindmap безопасности данных](task1/mindmap.drawio)

![Mindmap безопасности данных](task1/mindmap.jpg)
# Task 2
см. [здесь](task2/IB.md)
# Task 3
## Диаграмма контекста в модели С4
[Диаграмма контекста в модели С4](task3/PropDevelopment_С4_model_context.drawio)

![Диаграмма контекста в модели С4](task3/PropDevelopment_С4_model_context.jpg)

## Диаграмма контейнеров PropDevelopment

[Диаграмма контейнеров PropDevelopment](task3/PropDevelopment_С4_model_container.drawio)

![Диаграмма контейнеров PropDevelopment](task3/PropDevelopment_С4_model_container.jpg)

## Cписок требований, которым должны удовлетворить внешние интеграции
см. [здесь](task3/requirements.md)

# Task 4
## Роли и их полномочия при работе с Kubernetes
см. [здесь](task4/roles.md)

## Cкрипт для создания пользователей
см. [здесь](task4/users.sh)

```shell
bash ./task4/users.sh
```
результат
```shell
kubectl config get-users
```
![kubectl config get-users](task4/users.jpg)
## Cкрипт для создания ролей
манифест для создания ролей см. [здесь](task4/roles.yaml)

```shell
bash ./task4/roles.sh
```
результат
```shell
kubectl describe roles
```
![kubectl describe roles](task4/roles.jpg)
```shell
kubectl describe clusterroles secrets-reader
```
![describe clusterroles secrets-reader](task4/clusterroles.jpg)
## Cкрипт для связи ролей с пользователями
манифест для связи ролей с пользователями см. [здесь](task4/rolebinding.yaml)
```shell
bash ./task4/rolebinding.sh
```
результат
```shell
kubectl describe rolebinding
```
![kubectl describe rolebinding](task4/rolebinding.jpg)
```shell
kubectl describe clusterrolebinding read-secrets
```
![kubectl describe clusterrolebinding read-secrets](task4/clusterrolebinding.jpg)

# Task 5