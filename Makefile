SRC = unity.c\
function.c\
test_geo.c\
main.c

INC = -Iunity\
-Itest

PROJECT_NAME = FUNCTION.out

$(PROJECT_NAME): $(SRC)
	gcc $(SRC) $(INC) -o $(PROJECT_NAME)

run:$(PROJECT_NAME)
	./${PROJECT_NAME}
doc:
	make -C documentation

clean:
	rm -rf $(PROJECT_NAME) documentation/html
