; ModuleID = 'C-Programming-Examples/for.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%.0f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %nc = alloca double, align 8
  store i32 0, i32* %1
  store double 0.000000e+00, double* %nc, align 8
  br label %2

; <label>:2                                       ; preds = %6, %0
  %3 = call i32 @getchar()
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %2
  br label %6

; <label>:6                                       ; preds = %5
  %7 = load double* %nc, align 8
  %8 = fadd double %7, 1.000000e+00
  store double %8, double* %nc, align 8
  br label %2

; <label>:9                                       ; preds = %2
  %10 = load double* %nc, align 8
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), double %10)
  %12 = load i32* %1
  ret i32 %12
}

declare i32 @getchar() #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
