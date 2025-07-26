FROM postgres:16

# Устанавливаем необходимые пакеты для проверки состояния
RUN apt-get update && apt-get install -y curl

# Добавляем healthcheck: проверка подключения к PostgreSQL
HEALTHCHECK --interval=10s --timeout=5s --start-period=10s --retries=5 \
  CMD pg_isready -U $POSTGRES_USER || exit 1
