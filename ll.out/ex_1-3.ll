; ModuleID = 'C-Programming-Examples/ex_1-3.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Temp Coversion Table\0A\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"Fah -> Cent\0A\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"%3.0f %6.1f\0A\00", align 1

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
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str, i32 0, i32 0))
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0))
  br label %6

; <label>:6                                       ; preds = %11, %0
  %7 = load float* %fahr, align 4
  %8 = load i32* %upper, align 4
  %9 = sitofp i32 %8 to float
  %10 = fcmp ole float %7, %9
  br i1 %10, label %11, label %26

; <label>:11                                      ; preds = %6
  %12 = load float* %fahr, align 4
  %13 = fpext float %12 to double
  %14 = fsub double %13, 3.200000e+01
  %15 = fmul double 0x3FE1C71C71C71C72, %14
  %16 = fptrunc double %15 to float
  store float %16, float* %celsius, align 4
  %17 = load float* %fahr, align 4
  %18 = fpext float %17 to double
  %19 = load float* %celsius, align 4
  %20 = fpext float %19 to double
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0), double %18, double %20)
  %22 = load float* %fahr, align 4
  %23 = load i32* %step, align 4
  %24 = sitofp i32 %23 to float
  %25 = fadd float %22, %24
  store float %25, float* %fahr, align 4
  br label %6

; <label>:26                                      ; preds = %6
  %27 = load i32* %1
  ret i32 %27
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
