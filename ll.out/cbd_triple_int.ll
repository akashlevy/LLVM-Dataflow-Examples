; ModuleID = 'C-Programming-Examples/cbd_triple_int.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%3d%3d%3d\0A\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"\0ACount: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %cnt = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %cnt, align 4
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %36, %0
  %3 = load i32* %i, align 4
  %4 = icmp sle i32 %3, 7
  br i1 %4, label %5, label %39

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4
  br label %6

; <label>:6                                       ; preds = %32, %5
  %7 = load i32* %j, align 4
  %8 = icmp sle i32 %7, 7
  br i1 %8, label %9, label %35

; <label>:9                                       ; preds = %6
  store i32 0, i32* %k, align 4
  br label %10

; <label>:10                                      ; preds = %28, %9
  %11 = load i32* %k, align 4
  %12 = icmp sle i32 %11, 7
  br i1 %12, label %13, label %31

; <label>:13                                      ; preds = %10
  %14 = load i32* %i, align 4
  %15 = load i32* %j, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32* %k, align 4
  %18 = add nsw i32 %16, %17
  %19 = icmp eq i32 %18, 7
  br i1 %19, label %20, label %27

; <label>:20                                      ; preds = %13
  %21 = load i32* %cnt, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %cnt, align 4
  %23 = load i32* %i, align 4
  %24 = load i32* %j, align 4
  %25 = load i32* %k, align 4
  %26 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), i32 %23, i32 %24, i32 %25)
  br label %27

; <label>:27                                      ; preds = %20, %13
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load i32* %k, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %k, align 4
  br label %10

; <label>:31                                      ; preds = %10
  br label %32

; <label>:32                                      ; preds = %31
  %33 = load i32* %j, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %j, align 4
  br label %6

; <label>:35                                      ; preds = %6
  br label %36

; <label>:36                                      ; preds = %35
  %37 = load i32* %i, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %i, align 4
  br label %2

; <label>:39                                      ; preds = %2
  %40 = load i32* %cnt, align 4
  %41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0), i32 %40)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
