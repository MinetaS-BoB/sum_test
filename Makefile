all : sum_test

sum_test : main.o sum.o
	g++ main.cpp sum.cpp -o sum

sum.o : sum.cpp sum.h
	g++ sum.cpp -c -o sum.o

main.o : main.cpp sum.h
	g++ main.cpp -c -o main.o

clean :
	rm -f *.o