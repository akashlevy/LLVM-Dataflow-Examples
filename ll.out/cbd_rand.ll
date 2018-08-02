; ModuleID = 'C-Programming-Examples/cbd_rand.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"\0A%s\0A%s\00", align 1
@.str1 = private unnamed_addr constant [37 x i8] c"Some randomly distributed integers. \00", align 1
@.str2 = private unnamed_addr constant [20 x i8] c"How many to print? \00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str4 = private unnamed_addr constant [19 x i8] c"How many columns? \00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %col = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str2, i32 0, i32 0))
  %3 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %n)
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str4, i32 0, i32 0))
  %5 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32* %col)
  store i32 0, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %21, %0
  %7 = load i32* %i, align 4
  %8 = load i32* %n, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %24

; <label>:10                                      ; preds = %6
  %11 = load i32* %i, align 4
  %12 = load i32* %col, align 4
  %13 = srem i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %10
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0))
  br label %17

; <label>:17                                      ; preds = %15, %10
  %18 = call i32 @rand() #3
  %19 = srem i32 %18, 10
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32 %19)
  br label %21

; <label>:21                                      ; preds = %17
  %22 = load i32* %i, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4
  br label %6

; <label>:24                                      ; preds = %6
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0))
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: nounwind
declare i32 @rand() #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
