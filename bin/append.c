/*
 * C Program to Append the Content of File at the end of Another
 */
#include <stdio.h>
#include <stdlib.h>


#define SH_GETFILENAME "\
#!/bin/bash \n\
ls -l \n \
"



int main(int argc, char** argv)
{
	FILE *fsring1, *fsring2, *ftemp;

	char ch, file1[20], file2[20], file3[20];
	
	
	ftemp = fopen(argv[1], "a");
	if (ftemp == NULL)
	{
		perror("Error Has ocurred");
		printf("Please check file %s", argv[1]);
		printf("Press any key to exit...\n");
		exit(EXIT_FAILURE);
	}

	printf("File Was sucessfully opened.\n");
	
	for (int i = 2; i < argc; i++)
	{
		
	
	fsring1 = fopen(argv[i], "r");
	if (fsring1 == NULL)
	{
		perror("Error Has ocurred");
		printf("Please check file %s", argv[1]);
		printf("Press any key to exit...\n");
		exit(EXIT_FAILURE);

	}

	//printf("File Was sucessfully opened.");
	

	while((ch = fgetc(fsring1)) != EOF)
		fputc(ch, ftemp);


	printf("File %s was appended to %s.\n", argv[i], argv[1]);

	fclose(fsring1);
	}
	fclose(ftemp);
	return 0;

}
