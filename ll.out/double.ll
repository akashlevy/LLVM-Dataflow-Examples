; ModuleID = 'C-Programming-Examples/double.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"First Arg: %f\0A\00", align 1
@.str1 = private unnamed_addr constant [16 x i8] c"Second Arg: %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  store i32 0, i32* %1
  store float 1.000000e+01, float* %x, align 4
  store float 5.000000e+00, float* %y, align 4
  %2 = load float* %x, align 4
  %3 = fpext float %2 to double
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), double %3)
  %5 = load float* %y, align 4
  %6 = fpext float %5 to double
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0), double %6)
  %8 = load float* %x, align 4
  %9 = load float* %y, align 4
  call void @doubleData(float %8, float %9)
  %10 = load float* %x, align 4
  %11 = fpext float %10 to double
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), double %11)
  %13 = load float* %y, align 4
  %14 = fpext float %13 to double
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0), double %14)
  call void @doubleDataByAddress(float* %x, float* %y)
  %16 = load float* %x, align 4
  %17 = fpext float %16 to double
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), double %17)
  %19 = load float* %y, align 4
  %20 = fpext float %19 to double
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0), double %20)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @doubleData(float %x, float %y) #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  store float %x, float* %1, align 4
  store float %y, float* %2, align 4
  %3 = load float* %1, align 4
  %4 = fpext float %3 to double
  %5 = fmul double %4, 2.000000e+00
  %6 = fptrunc double %5 to float
  store float %6, float* %1, align 4
  %7 = load float* %2, align 4
  %8 = fpext float %7 to double
  %9 = fmul double %8, 2.000000e+00
  %10 = fptrunc double %9 to float
  store float %10, float* %2, align 4
  %11 = load float* %1, align 4
  %12 = fpext float %11 to double
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), double %12)
  %14 = load float* %2, align 4
  %15 = fpext float %14 to double
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0), double %15)
  ret void
}

; Function Attrs: nounwind uwtable
define void @doubleDataByAddress(float* %x, float* %y) #0 {
  %1 = alloca float*, align 8
  %2 = alloca float*, align 8
  store float* %x, float** %1, align 8
  store float* %y, float** %2, align 8
  %3 = load float** %1, align 8
  %4 = load float* %3, align 4
  %5 = fpext float %4 to double
  %6 = fmul double %5, 2.000000e+00
  %7 = fptrunc double %6 to float
  store float %7, float* %3, align 4
  %8 = load float** %2, align 8
  %9 = load float* %8, align 4
  %10 = fpext float %9 to double
  %11 = fmul double %10, 2.000000e+00
  %12 = fptrunc double %11 to float
  store float %12, float* %8, align 4
  %13 = load float** %1, align 8
  %14 = load float* %13, align 4
  %15 = fpext float %14 to double
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), double %15)
  %17 = load float** %2, align 8
  %18 = load float* %17, align 4
  %19 = fpext float %18 to double
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0), double %19)
  ret void
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
