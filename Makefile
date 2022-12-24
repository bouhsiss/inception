all:	set_host, up

set_host:
	USER=$(whoami)
	echo "127.0.1.1\t$(USER).42.fr"  >> /etc/hosts

down:
	docker-compose -f /srcs/docker-compose.yaml down
	
restart:
	docker-compose -f /srcs/docker-compose.yaml restart

build:
	docker-compose -f /srcs/docker-compose.yaml build

up:
	docker-compose -f /srcs/docker-compose.yaml up -d

prune:
	docker-compose -f /srcs/docker-compose.yaml -v --remove-orphans --rmi all down

re: fclean all
	

clean: down prune


fclean: