# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: segarcia <segarcia@student.42wolfsburg.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/02 10:46:48 by segarcia          #+#    #+#              #
#    Updated: 2023/10/02 12:04:39 by segarcia         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

prune: 
	docker system prune -a

build:
	docker-compose -f ./docker-compose.yml build
	docker pull metabase/metabase:latest

up: build
	docker-compose -f ./docker-compose.yml up

down: 
	docker-compose -f ./docker-compose.yml down

debian: 
	docker build -t my-debian ./debian/
	docker run --env-file ./debian/.env -it --network docker-playground_mynetwork my-debian

# docker run -e DOPPLER_TOKEN="" -it --network docker-playground_mynetwork my-debian

.PHONY: prune build up down debian