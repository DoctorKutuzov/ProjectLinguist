# Прототип проекта, предназначенного для работы лингвистов с аудиоматериалами

- [общее описание](desc.md)
- HLD доступна в [PlantUML](HLDc4.puml) и в сгенерированной по ней [визуализации](HLDc4.svg)
- в системе предусмотрены 8 самописных сервисов (1 фронт, 6 бэков и 1 нейросеть)
- в качестве СУБД используется [PostgreSQL](database/install.sh)
- в качестве очереди [RabbitMQ](message-bus/install.sh)
- система подразумевает взаимодействие с Yandex SpeechKit
- все сервисы, за исключением database, message-bus и storage имеют файлы для Deployment, Service и Ingess
- [ConfigMap](config.yaml) предусмотрен для основных переменных окружения сервисов
- [Secret](registry.yaml) для Docker Registry
- [CronJob](cleaner.yaml) ежесуточно зачищает завершённые и упавшые поды
- во всех Deployment предусмотрены ограничения на потребляемые ресурсы
- для [message-bus](message-bus/networkpolicy.yaml), [database](database/networkpolicy.yaml) и [storage](storage/networkpolicy.yaml) прописаны NetworkPolicy
- есть скрипты для установки [helm](get_helm.sh) и добавления [bitnamy](add_bitnamy.sh)