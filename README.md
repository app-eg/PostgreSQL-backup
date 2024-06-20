## PostgreSQL: Backup Shell
 
> 🐘 `PostgreSQL(Backup)`  Creating a PostgreSQL backup script for use in cron jobs involves writing a shell script that uses pg_dump to backup the database and then configuring a cron job to run this script at specified intervals  


![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Bash](https://img.shields.io/badge/GNU%20Bash-4EAA25?style=for-the-badge&logo=GNU%20Bash&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![postgres](https://img.shields.io/badge/PostgreSQL-316192?logo=postgresql&logoColor=white&style=for-the-badge)


![dev-setup Shell|100|50](logo.webp) 
---

##### ✔️ Configuration Database Variable

``` bash

DB_NAME="postgres"
DB_USER="postgres"
DB_HOST="localhost"
DB_PORT="5432"
DB_PASS="password"
BACKUP_DIR="/var/www/html/backup"
```

---

##### ✔️ How it Work

``` bash

chmod +x backup.sh
./backup.sh

```


##### ✔️ CRON JOBS in LINUX

``` bash

crontab -e

0 0 * * *  /fullPath/backup.sh   > /dev/null 2>&1 

```

##### ✔️  restore a PostgreSQL database

``` bash
- # login and create Database  
  sudo -u postgres psql

    CREATE DATABASE Dbname;
   \l
   \q
- # restore Database  
gunzip -c BackupSql.gz | psql -h localhost -p 5432 -U User -d Dbname 


```



#### 🎉 Contributing
- ⚙ Send us a PR, github issue, or email at app_eg@mail.com

