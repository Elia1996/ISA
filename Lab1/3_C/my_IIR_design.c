#include<stdio.h>
#include<stdlib.h>
#define DEBUG 1

#if DEBUG
#define __print(d_int,fp)(fprintf(fp,",%d",d_int))
#define __newline(fp)(fprintf(fp,"\n"))
#else
#define __print(d_int,fp)()
#define __newline(fp)()
#endif

#define N 2 /// order of the filter 
// un int è 32 bit percui per avere 12 bit in uscita dai
// moltiplicatori NB dev'essere 20
#define NB 12  /// number of bits

const int b0 = 423; /// coefficient b0
const int b[N]={846, 423}; /// b array
const int a[N]={-757, 401}; /// a array

/// Perform fixed point filtering assuming direct form II
///\param x is the new input sample
///\return the new output sample
int myfilter(int DIN, FILE *fp)
{
  static int sw[N]; /// w shift register
  static int first_run = 0; /// for cleaning the shift register
  int i; /// index
  int var; /// supporto
  int w; /// intermediate value (w)
  int y; /// output sample
  int fb, ff; /// feed-back and feed-forward results
  __print(DIN, fp);
  /// clean the buffer
  if (first_run == 0)
  {
    first_run = 1;
    for (i=0; i<N; i++)
      sw[i] = 0;
  }

  /// compute feed-back and feed-forward
  fb = 0;
  ff = 0;
  for (i=0; i<N; i++)
  {
	// tronco NB, prendo quelli più significativi
    fb -= (sw[i]*a[i]) >> (NB-1);
    ff += (sw[i]*b[i]) >> (NB-1);
  }
  /// compute intermediate value (w) and output sample
  w = DIN + fb;
  __print(w,fp);
  for(i=0; i<N; i++){
	     __print(sw[i],fp);
		var = (sw[i]*a[i]) >> (NB-1);
		 __print(var,fp);
		var = (sw[i]*b[i]) >> (NB-1);
		 __print(var,fp);
  }
  __print(fb,fp);
  __print(ff,fp);
  y = (w*b0) >> (NB-1);
  y += ff;

  /// update the shift register
  for (i=N-1; i>0; i--)
    sw[i] = sw[i-1];
  sw[0] = w;
  __print(y,fp);
  __newline(fp);
  return y;
}

int main (int argc, char **argv)
{
  FILE *fp_in;
  FILE *fp_out;
  FILE *fp_report;

  int x;
  int y,i;

  /// check the command line
  if (argc != 3)
  {
    printf("Use: %s <input_file> <output_file>\n", argv[0]);
    exit(1);
  }

  /// open files
  fp_in = fopen(argv[1], "r");
  if (fp_in == NULL)
  {
    printf("Error: cannot open %s\n");
    exit(2);
  }
  #if DEBUG
	fp_out = fopen(argv[2], "w");
	fp_report = fopen("../4_Design_and_Sim/sim_out/results_c.csv","w");
	fprintf(fp_report,"B (FF):, %d",b0);
	for(i=0; i<N; i++){
		   fprintf(fp_report,", %d\n",b[i]);
	}
	fprintf(fp_report,"A (FB):,%d",a[0]);
	for(i=1; i<N; i++){
		   fprintf(fp_report,", %d\n",a[i]);
	}
	fprintf(fp_report, "DIN,v");
	for(i=1; i<N+1; i++){
			fprintf(fp_report,",v%d,v%d*a,v%d*b",i,i,i);
	}
	fprintf(fp_report, ",fb,ff,DOUT\n");
  #endif
  /// get samples and apply filter
  fscanf(fp_in, "%d", &x);
  do{
    y = myfilter(x, fp_report);
    fprintf(fp_out,"%d\n", y);
    fscanf(fp_in, "%d", &x);
  } while (!feof(fp_in));

  fclose(fp_in);
  fclose(fp_out);
	printf("%d",sizeof(int));
  return 0;

}

