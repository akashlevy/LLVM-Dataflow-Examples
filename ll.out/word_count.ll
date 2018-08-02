; ModuleID = 'C-Programming-Examples/word_count.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %c = alloca i32, align 4
  %nl = alloca i32, align 4
  %nw = alloca i32, align 4
  %nc = alloca i32, align 4
  %state = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %state, align 4
  store i32 0, i32* %nc, align 4
  store i32 0, i32* %nw, align 4
  store i32 0, i32* %nl, align 4
  br label %2

; <label>:2                                       ; preds = %30, %0
  %3 = call i32 @getchar()
  store i32 %3, i32* %c, align 4
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %5, label %31

; <label>:5                                       ; preds = %2
  %6 = load i32* %nc, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %nc, align 4
  %8 = load i32* %c, align 4
  %9 = icmp eq i32 %8, 10
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %5
  %11 = load i32* %nl, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %nl, align 4
  br label %13

; <label>:13                                      ; preds = %10, %5
  %14 = load i32* %c, align 4
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %22, label %16

; <label>:16                                      ; preds = %13
  %17 = load i32* %c, align 4
  %18 = icmp eq i32 %17, 10
  br i1 %18, label %22, label %19

; <label>:19                                      ; preds = %16
  %20 = load i32* %c, align 4
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %19, %16, %13
  store i32 0, i32* %state, align 4
  br label %30

; <label>:23                                      ; preds = %19
  %24 = load i32* %state, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

; <label>:26                                      ; preds = %23
  store i32 1, i32* %state, align 4
  %27 = load i32* %nw, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %nw, align 4
  br label %29

; <label>:29                                      ; preds = %26, %23
  br label %30

; <label>:30                                      ; preds = %29, %22
  br label %2

; <label>:31                                      ; preds = %2
  %32 = load i32* %nl, align 4
  %33 = load i32* %nw, align 4
  %34 = load i32* %nc, align 4
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 %32, i32 %33, i32 %34)
  %36 = load i32* %1
  ret i32 %36
}

declare i32 @getchar() #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
