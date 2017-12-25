all: server client
server: server.o
	g++ -o server server.o

server.o : server.c
	g++ -c server.c

client: client.o
	g++ -o client client.o

client.o : client.c
	g++ -c client.c

clean:
	rm *.o
	rm server
	rm client
