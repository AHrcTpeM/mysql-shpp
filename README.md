# База даних сервісу таксі (Адресна підсистема)

Навчальний проєкт для проєктування та розгортання реляційної бази даних у СУБД MySQL.

### Таблиці:

- **`city`** — довідник міст (`id`, `name`).
- **`street_type`** — довідник типів топонімів (`id`, `name`: _вулиця, проспект, бульвар тощо_).
- **`street`** — вулиці з прив'язкою до міста (`city_id`) та типу (`street_type_id`).
- **`house`** — будинки з географічними координатами (`latitude`, `longitude`), поштовим індексом (`postal_code`) та прив'язкою до вулиці (`street_id`).
- **`passenger`** — пасажири / клієнти сервісу (`id`, `phone_number`, `first_name`, `last_name`, `email`, `rating`).

---

## 📁 Структура SQL-скриптів

У директорії `sql/` знаходяться DDL- та DML-скрипти:

- `sql/01_create_table_city.sql` — створення таблиці міст (з унікальним обмеженням на назву).
- `sql/02_create_table_street_type.sql` — створення таблиці типів вулиць (з унікальним обмеженням на назву).
- `sql/03_create_table_street.sql` — створення таблиці вулиць (із зовнішніми ключами, унікальним обмеженням та індексом на назву).
- `sql/04_create_table_house.sql` — створення таблиці будинків (із зовнішнім ключем та складеним індексом за вулицею і номером).
- `sql/05_create_table_passenger.sql` — створення таблиці пасажирів (з унікальними обмеженнями на `phone_number` та `email`).
- `sql/rollback/drop_tables.sql` — відкат схеми (видалення таблиць у коректному порядку).
- `sql/seed/sample_data.sql` — тестові демонстраційні дані.

---

## 🚀 Запуск та підключення

### Запуск оточення:

```bash
docker-compose up -d
```

### Підключення до бази даних:

- **Host:** `localhost` (порт `3306`)
- **База даних:** `my_database`
- **Користувач:** `dev_user`
- **Пароль:** `devpassword`
- **phpMyAdmin (Web UI):** [http://localhost:8080](http://localhost:8080)

### Застосування тестових даних:

```bash
docker-compose exec -T mysql mysql -u dev_user -pdevpassword my_database < sql/seed/sample_data.sql
```
