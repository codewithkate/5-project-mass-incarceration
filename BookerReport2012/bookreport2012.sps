/*********************************************************************************************************/
/*                                                                                                                                 */
/* This SPSS program will extract the United States Sentencing Commission's Booker      */
/* Report 2012 congressional report file and create a SPSS dataset.                                 */
/*                                                                                                                                 */
/* Prior to running the program you must update the DAT file location in the                       */
/* FILE HANDLE DATA / NAME line to correspond to the location of the file on your           */
/* computer.                                                                                                                 */
/*                                                                                                                                 */
/* You must also update the file output location in the SAVE OUTFILE statement at the     */
/* end of the program to correspond to the folder you want the output file to be located.       */
/*                                                                                                                                 */
/*********************************************************************************************************/

/* The following line should contain the complete path and name of your raw data file */
/* The last line of this file contains the path to your output '.sav' file */

FILE HANDLE DATA / NAME=".\bookreport2012.dat" LRECL=82 .

DATA LIST FILE=DATA/
   ACCAP 1                  AGE 2-3                  AGGDUM 4              
   BOOKER2 5                CAREER 6                 CAROFFAP 7            
   CIRCDIST 8-9             IMPACTOL 10              IMPCTCHC 11           
   MITDUM 12                MONCIRC 13-14            MONSEX 15             
   NEWCIT 16                NEWCNVTN 17              NEWEDUC 18            
   NEWRACE 19               OFFTYPE2 20-21           PERIOD 22             
   PRIMARY 23-24            QUARTER 25               SA 26                 
   SAFEVALVE 27             SENTIMP 28               TOTCHPTS 29-30        
   WEAPON 31                XCRHISSR 32              GLMIN 33-35           
   FY 36-39                 USSCIDN 40-46            SENSPLT0 47-64        
   LOSS_2B 65-76            GDL 77-82 (A) .       


FORMATS
  SENSPLT0 (F19.16) /      LOSS_2B (F13.2) / .
   
VARIABLE LABELS
   ACCAP 'Was armed career status applied?'
   AGE 'Age at sentencing'
   CAROFFAP 'Career offender status applied?'
   CIRCDIST 'District code by circuit'
   MONCIRC 'Judicial sentencing district'
   MONSEX 'Gender'
   NEWCIT 'Defendants citizenship status'
   NEWCNVTN 'Plea or trial indicator'
   NEWEDUC 'Aggregation of EDUCATN'
   NEWRACE 'Aggregation of MONRACE'
   OFFTYPE2 'Aggregation of OFFTYPE (annrep)'
.

SAVE OUTFILE='.\bookreport2012.sav'.
