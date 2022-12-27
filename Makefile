NAME = inception
USER=$(whoami)

all : $(NAME)

$(NAME) : 
	sudo sh -c 'echo "127.0.1.1\thbouhsis.42.fr"  >> /etc/hosts'
	sudo mkdir -p "/home/hbouhsis/data/wp_db"
	sudo mkdir -p "/home/hbouhsis/data/wp_files"
	docker compose -f ./srcs/docker-compose.yaml up --build -d

down :
	docker compose -f ./srcs/docker-compose.yaml down
	
restart :
	docker compose -f ./srcs/docker-compose.yaml restart


prune :
	docker compose -f ./srcs/docker-compose.yaml down --rmi all --volumes

re : fclean all
	

clean : down prune


fclean : clean
	sudo rm -rf /home/hbouhsis/data/wp_db
	sudo rm -rf /home/hbouhsis/data/wp_files
