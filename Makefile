APP=sndgrep
OBJS=main.o
CC=gcc
CFLAGS=-Wall -g3 -O0 $(EXTRA_CFLAGS)
CLIBS=-lfftw3 -lm -lasound

%.o: %.c
	$(CC) -c $^ $(CFLAGS)

$(APP): $(OBJS)
	$(CC) -o $@ $^ $(CLIBS)

test: $(APP)
	./$(APP) --dtmf --generate -t 1 -d 1 test.dat	
	./$(APP) --dtmf --search   -t 1 -d 1 test.dat	
	
clean:
	$(RM) $(APP) $(OBJS)
