Projeto utilizando DOCKER na estrutura docker-compose.yml, para envio de e-mails:

Nginx 1.13
Python 3.6
Redis 3.2
Postgres 9.6

Comandos uteis:

# Verificar status dos serviços
docker-compose ps

# Subir todas aplicaçoes, serviços, redes e etc...
docker-compose up -d 

# Encerrar todas aplicaçoes, serviços, redes e etc...
docker-compose down

# Verificar logs online
docker-compose logs -f -t 

# Subir varias instancias de um serviço
# Onde: worker é o nome do serviço no arquivo docker-compose.yml
#        3 é a quantidade de instancias que desejo subir
docker-compose up -d --scale worker=3 

# Verificar logs online de todas as instancias de apenas um serviço
# Onde: worker é o nome do serviço no arquivo docker-compose.yml
docker-compose logs -f -t worker

# Executar uma consulta dentro do postgres
# Onde: db é o nome do serviço no arquivo docker-compose.yml
#       email_sender é o nome do banco de dados
docker-compose exec db psql -U postgres -d email_sender -c 'select * from emails'

# Salvar a imagem do docker para deploy 
# Onde: ./docker_postgres96.tar é o nome do arquivo com a imagem que será criado na raiz do projeto
#       postgres é o nome da imagem que será salva    
docker save -o ./docker_postgres96.tar postgres

# Restaurar imagem do docker para deploy 
# Onde: ./docker_postgres96.tar é o nome do arquivo com a imagem que será criado na raiz do projeto
docker load ./docker_postgres96.tar

