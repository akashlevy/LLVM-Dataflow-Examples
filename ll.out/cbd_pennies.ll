; ModuleID = 'C-Programming-Examples/cbd_pennies.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Calculates value of change.\0A\00", align 1
@.str1 = private unnamed_addr constant [15 x i8] c"Half Dollars: \00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"Quarters: \00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"Nickels: \00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"Pennies: \00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"Half Dollars: %d\0A\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"Quarters: %d\0A\00", align 1
@.str8 = private unnamed_addr constant [13 x i8] c"Nickels: %d\0A\00", align 1
@.str9 = private unnamed_addr constant [13 x i8] c"Pennies: %d\0A\00", align 1
@.str10 = private unnamed_addr constant [43 x i8] c"The value of your %d coins is %d pennies.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %h = alloca i32, align 4
  %q = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i32, align 4
  %coins = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0))
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0))
  %4 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), i32* %h)
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0))
  %6 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), i32* %q)
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0))
  %8 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), i32* %n)
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str5, i32 0, i32 0))
  %10 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), i32* %p)
  %11 = load i32* %h, align 4
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str6, i32 0, i32 0), i32 %11)
  %13 = load i32* %q, align 4
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str7, i32 0, i32 0), i32 %13)
  %15 = load i32* %n, align 4
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str8, i32 0, i32 0), i32 %15)
  %17 = load i32* %p, align 4
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str9, i32 0, i32 0), i32 %17)
  %19 = load i32* %h, align 4
  %20 = load i32* %q, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32* %n, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32* %p, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %coins, align 4
  %26 = load i32* %p, align 4
  %27 = load i32* %h, align 4
  %28 = mul nsw i32 %27, 50
  %29 = add nsw i32 %26, %28
  %30 = load i32* %q, align 4
  %31 = mul nsw i32 %30, 25
  %32 = add nsw i32 %29, %31
  %33 = load i32* %n, align 4
  %34 = mul nsw i32 %33, 5
  %35 = add nsw i32 %32, %34
  store i32 %35, i32* %p, align 4
  %36 = load i32* %coins, align 4
  %37 = load i32* %p, align 4
  %38 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str10, i32 0, i32 0), i32 %36, i32 %37)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
