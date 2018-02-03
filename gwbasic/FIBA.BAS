10 PRINT "Enter N to calculate fibonacci"
20 INPUT N
30 PRINT "You entered: ", N
40 F0 = 0
50 F1 = 1
60 FOR I = 0 TO N
70 IF I = 0 THEN F = F0 ELSE IF I = 1 THEN F = F1 ELSE F = PREV1 + PREV2
80 PRINT "Fib of ", I, "IS", F
90 REM Shift values
100 PREV2 = PREV1
110 PREV1 = F
120 NEXT I
