; ModuleID = 'C-Programming-Examples/cbd_lawn.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [69 x i8] c"Calculate area of rectangular lawn.\0AUnits should be input in yards.\0A\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"Width: \00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"Height: \00", align 1
@.str4 = private unnamed_addr constant [23 x i8] c"Area Square Yards: %d\0A\00", align 1
@.str5 = private unnamed_addr constant [22 x i8] c"Area Square Feet: %d\0A\00", align 1
@.str6 = private unnamed_addr constant [24 x i8] c"Area Square Inches: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %cv_factor = alloca i32, align 4
  store i32 0, i32* %1
  store i32 1296, i32* %cv_factor, align 4
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str, i32 0, i32 0))
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str1, i32 0, i32 0))
  %4 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), i32* %width)
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0))
  %6 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), i32* %height)
  %7 = load i32* %width, align 4
  %8 = load i32* %height, align 4
  %9 = mul nsw i32 %7, %8
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str4, i32 0, i32 0), i32 %9)
  %11 = load i32* %width, align 4
  %12 = load i32* %height, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32* %cv_factor, align 4
  %15 = mul nsw i32 %13, %14
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str5, i32 0, i32 0), i32 %15)
  %17 = load i32* %width, align 4
  %18 = load i32* %height, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32* %cv_factor, align 4
  %21 = mul nsw i32 %19, %20
  %22 = mul nsw i32 %21, 12
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str6, i32 0, i32 0), i32 %22)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
