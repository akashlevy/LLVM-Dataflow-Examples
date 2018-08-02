; ModuleID = 'C-Programming-Examples/ex_1-17.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @readbuffer(i8* %buffer) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  store i8* %buffer, i8** %2, align 8
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %18, %0
  %4 = load i32* %i, align 4
  %5 = icmp slt i32 %4, 81
  br i1 %5, label %6, label %25

; <label>:6                                       ; preds = %3
  %7 = call i32 @getchar()
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %c, align 1
  %9 = load i8* %c, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %6
  store i32 -1, i32* %1
  br label %26

; <label>:13                                      ; preds = %6
  %14 = load i8* %c, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %13
  store i32 0, i32* %1
  br label %26

; <label>:18                                      ; preds = %13
  %19 = load i8* %c, align 1
  %20 = load i32* %i, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %i, align 4
  %22 = sext i32 %20 to i64
  %23 = load i8** %2, align 8
  %24 = getelementptr inbounds i8* %23, i64 %22
  store i8 %19, i8* %24, align 1
  br label %3

; <label>:25                                      ; preds = %3
  store i32 1, i32* %1
  br label %26

; <label>:26                                      ; preds = %25, %17, %12
  %27 = load i32* %1
  ret i32 %27
}

declare i32 @getchar() #1

; Function Attrs: nounwind uwtable
define i32 @printline(i8* %buffer) #0 {
  %1 = alloca i8*, align 8
  %endfound = alloca i32, align 4
  %c = alloca i8, align 1
  %i = alloca i8, align 1
  store i8* %buffer, i8** %1, align 8
  store i32 1, i32* %endfound, align 4
  store i8 0, i8* %i, align 1
  br label %2

; <label>:2                                       ; preds = %14, %0
  %3 = load i8* %i, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 81
  br i1 %5, label %6, label %17

; <label>:6                                       ; preds = %2
  %7 = load i8* %i, align 1
  %8 = sext i8 %7 to i64
  %9 = load i8** %1, align 8
  %10 = getelementptr inbounds i8* %9, i64 %8
  %11 = load i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = call i32 @putchar(i32 %12)
  br label %14

; <label>:14                                      ; preds = %6
  %15 = load i8* %i, align 1
  %16 = add i8 %15, 1
  store i8 %16, i8* %i, align 1
  br label %2

; <label>:17                                      ; preds = %2
  br label %18

; <label>:18                                      ; preds = %38, %17
  %19 = load i32* %endfound, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %39

; <label>:21                                      ; preds = %18
  %22 = call i32 @getchar()
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %c, align 1
  %24 = load i8* %c, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %21
  store i32 -1, i32* %endfound, align 4
  br label %38

; <label>:28                                      ; preds = %21
  %29 = load i8* %c, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %28
  store i32 0, i32* %endfound, align 4
  br label %37

; <label>:33                                      ; preds = %28
  %34 = load i8* %c, align 1
  %35 = sext i8 %34 to i32
  %36 = call i32 @putchar(i32 %35)
  br label %37

; <label>:37                                      ; preds = %33, %32
  br label %38

; <label>:38                                      ; preds = %37, %27
  br label %18

; <label>:39                                      ; preds = %18
  %40 = call i32 @putchar(i32 10)
  %41 = load i32* %endfound, align 4
  ret i32 %41
}

declare i32 @putchar(i32) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %buffer = alloca [81 x i8], align 16
  %status = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %status, align 4
  br label %2

; <label>:2                                       ; preds = %13, %0
  %3 = load i32* %status, align 4
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %5, label %14

; <label>:5                                       ; preds = %2
  %6 = getelementptr inbounds [81 x i8]* %buffer, i32 0, i32 0
  %7 = call i32 @readbuffer(i8* %6)
  store i32 %7, i32* %status, align 4
  %8 = load i32* %status, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds [81 x i8]* %buffer, i32 0, i32 0
  %12 = call i32 @printline(i8* %11)
  store i32 %12, i32* %status, align 4
  br label %13

; <label>:13                                      ; preds = %10, %5
  br label %2

; <label>:14                                      ; preds = %2
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
