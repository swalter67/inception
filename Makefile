NAME = inception

SRCS := ./srcs/docker-compose.yml

FLAGS := -d --build

$NAME :
		sudo mkdir -p /home/swalter/data/wp
		sudo mkdir -p /home/swalter/data/db
		docker-compose -f $(SRCS) up $(FLAG)


all : $(NAME)

fclean :
	docker-compose -f $(SRCS) down
	@ docker system prune -a --force
 	@ docker volume rm srcs_db
 	@ docker volume rm srcs_wp

re: fclean all

