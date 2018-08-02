; ModuleID = 'C-Programming-Examples/ex_1-5.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%3d %61f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %fahr = alloca i32, align 4
  store i32 0, i32* %1
  store i32 300, i32* %fahr, align 4
  br label %2

; <label>:2                                       ; preds = %12, %0
  %3 = load i32* %fahr, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %15

; <label>:5                                       ; preds = %2
  %6 = load i32* %fahr, align 4
  %7 = load i32* %fahr, align 4
  %8 = sub nsw i32 %7, 32
  %9 = sitofp i32 %8 to double
  %10 = fmul double 0x3FE1C71C71C71C72, %9
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 %6, double %10)
  br label %12

; <label>:12                                      ; preds = %5
  %13 = load i32* %fahr, align 4
  %14 = sub nsw i32 %13, 20
  store i32 %14, i32* %fahr, align 4
  br label %2

; <label>:15                                      ; preds = %2
  %16 = load i32* %1
  ret i32 %16
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
