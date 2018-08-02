; ModuleID = 'C-Programming-Examples/cbd_time.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Input Number of seconds: \00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"%d seconds is equivalent to %d minutes and %d seconds.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %input_value = alloca i32, align 4
  %minutes = alloca i32, align 4
  %seconds = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str, i32 0, i32 0))
  %3 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %input_value)
  %4 = load i32* %input_value, align 4
  %5 = sdiv i32 %4, 60
  store i32 %5, i32* %minutes, align 4
  %6 = load i32* %input_value, align 4
  %7 = srem i32 %6, 60
  store i32 %7, i32* %seconds, align 4
  %8 = load i32* %input_value, align 4
  %9 = load i32* %minutes, align 4
  %10 = load i32* %seconds, align 4
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([56 x i8]* @.str2, i32 0, i32 0), i32 %8, i32 %9, i32 %10)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
