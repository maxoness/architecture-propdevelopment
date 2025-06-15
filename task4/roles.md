| Роль  | Права роли | Группы пользователей |
| --- | --- | --- |
|pods-reader| Просмотр подов и их логов [pods, pods/log : get, list, watch]| Разработчики |
|deployments-operations| Настройка и просмотр объектов кластера, управление секретами [pods, pods/log, configmaps, services,  secrets,  deployments : get, list, watch, create, update, patch, delete] | DevOps инженеры |
|deployments-admin| Настройка и просмотр объектов кластера [pods, pods/log, configmaps, services, deployments : get, list, watch, create, update, patch, delete]| Инженеры по эксплуатации |
|secrets-reader | Просмотр секретов кластера [secrets : get, list, watch] | Специалист ИБ |