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

	//printf("File %s Was sucessfully opened.\n", argv[1]);
	
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
	

	int line_counter = 0;
	if (ftell(ftemp) == 0)
		fprintf(ftemp, "Lote,Ano,Mes,Dia,Hora,Minuto,Segundo,Local,Faixa,Entrefaixa,Registro,Tipo de Registro,Placa,Especie,Classe,Comprimento,Velocidade,Ocupacao,Velocidade Media;\n");
	while((ch = fgetc(fsring1)) != EOF)
	{
		fputc(ch, ftemp);
		line_counter++;
		
		//printf("%d\n", line_counter);
		
		if (line_counter == 2)
			fprintf(ftemp, ",");
		else if (line_counter == 6)
			fprintf(ftemp, ",");
		else if (line_counter == 8)
			fprintf(ftemp, ",");
		else if (line_counter == 10)
			fprintf(ftemp, ",");
		else if (line_counter == 12)
			fprintf(ftemp, ",");
		else if (line_counter == 14)
			fprintf(ftemp, ",");
		else if (line_counter == 16)
			fprintf(ftemp, ",");
		else if (line_counter == 20)
			fprintf(ftemp, ",");
		else if (line_counter == 21)
			fprintf(ftemp, ",");
		else if (line_counter == 22)
			fprintf(ftemp, ",");
		else if (line_counter == 29)
			fprintf(ftemp, ",");
		else if (line_counter == 30)
			fprintf(ftemp, ",");
		else if (line_counter == 37)
			fprintf(ftemp, ",");
		else if (line_counter == 38)
			fprintf(ftemp, ",");
		else if (line_counter == 39)
			fprintf(ftemp, ",");
		else if (line_counter == 42)
			fprintf(ftemp, ",");
		else if (line_counter == 45)
			fprintf(ftemp, ",");
		else if (line_counter == 50)
			fprintf(ftemp, ",");
		else if (line_counter == 53)
			fprintf(ftemp, "\n");
		else if (line_counter == 54)
			line_counter = 0;
		

		if (ch == 45)
			line_counter--;
	}	

	//printf("File %s was appended to %s.\n", argv[i], argv[1]);

	fclose(fsring1);
	}
	//printf("File %s was appended sucessfully.\n", argv[1]);
	fclose(ftemp);
	return 0;

}
