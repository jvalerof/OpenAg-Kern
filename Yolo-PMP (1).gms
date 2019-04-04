
**  PMP YOLO MODEL - ALL CROPS GROWN- TWO RESOURCE CONSTRAINTS.

SETS  I  PRODUCTION PROCESSES /ALFALFA, WHEAT, CORN,TOMATO /
       J  RESOURCE CONSTRAINTS /LAND, WATER /
****************************************************************************

PARAMETERS  MR(I)  MARGINAL REVENUE ( $ PER ACRE)
      /ALFALFA    241.0
       WHEAT      245.0
       CORN       255.0
       TOMATO     1325.0 /

PARAMETERS  CL(I)  AVERAGE COST ( $ PER ACRE)
      /ALFALFA    120.0
       WHEAT       85.0
       CORN       120.0
       TOMATO     500.0 /

 PARAMETER R(J)  RESOURCE CONSTRAINTS
        /LAND       600.0
         WATER     1800.0 /

 TABLE A(J,I)  UNIT RESOURCE REQUIREMENTS PER HECTARE PRODUCTION
                      ALFALFA    WHEAT     CORN        TOMATO
  LAND                1.0        1.0       1.0          1.0
  WATER               4.5        2.5       3.5          3.25

   PARAMETERS  XB(I)  OBSERVED ACTIVITY LEVEL
      /ALFALFA    180.0
       WHEAT       90.0
       CORN       150.0
       TOMATO     180.0 /

*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
* LINEAR PROGRAM
********************************************************************
 VARIABLES  LX(I)  ACRES  PLANTED
            LINPROF   LP PROFIT

 POSITIVE VARIABLE LX;

 EQUATIONS RESOURCE(J)   CONSTRAINED RESOURCES
           CALIB(I)      CALIBRATION CONSTRAINTS
           LPROFIT         LP OBJECTIVE FUNCTION;

 RESOURCE(J)..    SUM(I, A(J,I)*LX(I))   =L= R(J);

 CALIB(I)$XB(I)..          LX(I )           =L= XB(I) *1.001 ;

 LPROFIT.. SUM((I),  (MR(I) -CL(I))*LX(I)) =E= LINPROF;

 MODEL CALIBRATE / ALL /;

  SOLVE CALIBRATE   USING LP MAXIMIZING LINPROF;

  DISPLAY LX.L, LX.M, RESOURCE.M, CALIB.M ;

*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*

     PARAMETER
            LAM(I)     PMP DUAL VALUE
            ALPH(I)    INTERCEPT COST
            GAM(I)     COST SLOPE ;

      LAM(I)   =  0 ;
      LAM(I)$LX.L(I)    = CALIB.M(I) ;
      ALPH(I)           =  CL(I) - LAM(I) ;
      GAM(I)$LX.L(I)    =  (2*LAM(I)) / LX.L(I) ;

DISPLAY ALPH, GAM, LAM;

*########################################################
*  POLICY CHANGES
*    MR("WHEAT") = MR("WHEAT")* 1.05 ;


*########################################################
*   PMP PROGRAM
********************************************************************
 VARIABLES  NX(I)  ACRES  PLANTED
            NLPROF   NLP PROFIT


 POSITIVE VARIABLE NX;
 EQUATIONS NRESOURCE(J)   CONSTRAINED RESOURCES
           NLPROFIT         NLP OBJECTIVE FUNCTION;

 NRESOURCE(J)..    SUM(I, A(J,I)*NX(I))   =L= R(J);

 NLPROFIT.. SUM( I, (MR(I) -(ALPH(I) + 0.5 *GAM(I)*NX(I)) ) * NX(I) )
                 =E= NLPROF;

 MODEL YOLO2  / NRESOURCE, NLPROFIT /;

  NX.L(I) = XB(I) * 0.9 ;

  SOLVE YOLO2   USING NLP MAXIMIZING NLPROF;


 PARAMETER   PERDIF(I)  % DIFFERENCE FROM BASE ALLOCATION ;

     PERDIF(I)$LX.L(I)  = ((NX.L(I) - LX.L(I)) *100)/ LX.L(I) ;

  DISPLAY   RESOURCE.M, NRESOURCE.M, LINPROF.L, NLPROF.L,
            ALPH, GAM, PERDIF,LX.L, NX.L ;


***** policy example
* CHANGE PRICE OF TOMATO

*         MR("TOMATO")=MR("TOMATO")*0.75;

            R("WATER")=   R("WATER")*0.60;

              SOLVE YOLO2   USING NLP MAXIMIZING NLPROF;

         PARAMETER   PERDIF2(I)  % DIFFERENCE FROM BASE ALLOCATION ;

     PERDIF2(I)$LX.L(I)  = ((NX.L(I) - LX.L(I)) *100)/ LX.L(I) ;

         DISPLAY PERDIF2;






