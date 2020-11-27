#include <stdio.h>

int main(){
	FILE *fitxer;
	fitxer = fopen("file.txt","w");
	
	for(int i = 0; i < 100000000; i++){
		fprintf(fitxer,":)\n");
	}
	
	fclose(fitxer);
}
