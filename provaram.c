#include <stdio.h>

int main(){
	FILE *fitxer;
	fitxer = fopen("/tmp/ramdisk/file.txt","w");
	
	for(int i = 0; i < 100000000; i++){
		fprintf(fitxer,":)\n");
	}
	
	fclose(fitxer);
}
