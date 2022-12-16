#Simple makefile for libusb application

CC=gcc
OBJ=USB31_TX_COMPLIANCE.o

USB31_TX_COMPLIANCE: $(OBJ)
	$(CC) $(OBJ) -lusb-1.0 -o USB31_TX_COMPLIANCE

USB31_TX_COMPLIANCE.o: USB31_TX_COMPLIANCE.c
	$(CC) -c USB31_TX_COMPLIANCE.c

clean :
	-rm *.o $(objects) *.exe USB31_TX_COMPLIANCE
