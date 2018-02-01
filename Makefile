#MakeFile to build simple TCP client server program
# For CSC Computer Networking

CC= g++

FLAGS = -L -lsocket -lnsl


all:	TCPEchoServer TCPEchoClient

DieWithError.o: DieWithError.cpp	
		$(CC) -c DieWithError.cpp

HandleTCPClient.o: HandleTCPClient.cpp 
		$(CC) -c HandleTCPClient.cpp

TCPEchoServer.o: TCPEchoServer.cpp 
		$(CC) -c TCPEchoServer.cpp

TCPEchoClient.o: TCPEchoClient.cpp 
		$(CC) -c TCPEchoClient.cpp

TCPEchoServer: TCPEchoServer.o HandleTCPClient.o DieWithError.o
		$(CC) TCPEchoServer.o HandleTCPClient.o DieWithError.o -o TCPEchoServer $(FLAGS)

TCPEchoClient: TCPEchoClient.o DieWithError.o
		$(CC) TCPEchoClient.o DieWithError.o -o TCPEchoClient $(FLAGS)


clean:
		rm -f *.o TCPEchoServer TCPEchoClient
