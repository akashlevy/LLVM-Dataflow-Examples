; ModuleID = 'C-Programming-Examples/ex_1-10.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\5Ct\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"\5Cb\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 0, i32* %1
  br label %2

; <label>:2                                       ; preds = %31, %0
  %3 = call i32 @getchar()
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* %c, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %32

; <label>:7                                       ; preds = %2
  %8 = load i8* %c, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %7
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0))
  br label %31

; <label>:13                                      ; preds = %7
  %14 = load i8* %c, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %13
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0))
  br label %30

; <label>:19                                      ; preds = %13
  %20 = load i8* %c, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 92
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %19
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0))
  br label %29

; <label>:25                                      ; preds = %19
  %26 = load i8* %c, align 1
  %27 = sext i8 %26 to i32
  %28 = call i32 @putchar(i32 %27)
  br label %29

; <label>:29                                      ; preds = %25, %23
  br label %30

; <label>:30                                      ; preds = %29, %17
  br label %31

; <label>:31                                      ; preds = %30, %11
  br label %2

; <label>:32                                      ; preds = %2
  %33 = load i32* %1
  ret i32 %33
}

declare i32 @getchar() #1

declare i32 @printf(i8*, ...) #1

declare i32 @putchar(i32) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
