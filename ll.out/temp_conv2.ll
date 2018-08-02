; ModuleID = 'C-Programming-Examples/temp_conv2.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%3.0f %6.1f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %fahr = alloca float, align 4
  %celsius = alloca float, align 4
  %lower = alloca i32, align 4
  %upper = alloca i32, align 4
  %step = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %lower, align 4
  store i32 300, i32* %upper, align 4
  store i32 20, i32* %step, align 4
  %2 = load i32* %lower, align 4
  %3 = sitofp i32 %2 to float
  store float %3, float* %fahr, align 4
  br label %4

; <label>:4                                       ; preds = %9, %0
  %5 = load float* %fahr, align 4
  %6 = load i32* %upper, align 4
  %7 = sitofp i32 %6 to float
  %8 = fcmp ole float %5, %7
  br i1 %8, label %9, label %24

; <label>:9                                       ; preds = %4
  %10 = load float* %fahr, align 4
  %11 = fpext float %10 to double
  %12 = fsub double %11, 3.200000e+01
  %13 = fmul double 0x3FE1C71C71C71C72, %12
  %14 = fptrunc double %13 to float
  store float %14, float* %celsius, align 4
  %15 = load float* %fahr, align 4
  %16 = fpext float %15 to double
  %17 = load float* %celsius, align 4
  %18 = fpext float %17 to double
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str, i32 0, i32 0), double %16, double %18)
  %20 = load float* %fahr, align 4
  %21 = load i32* %step, align 4
  %22 = sitofp i32 %21 to float
  %23 = fadd float %20, %22
  store float %23, float* %fahr, align 4
  br label %4

; <label>:24                                      ; preds = %4
  %25 = load i32* %1
  ret i32 %25
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
