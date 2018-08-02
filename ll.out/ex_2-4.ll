; ModuleID = 'C-Programming-Examples/ex_2-4.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@key = global [4 x i8] c"abc\00", align 1
@test = global [7 x i8] c"abc123\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @squeeze(i8* %test, i8* %key) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %t = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  store i8* %test, i8** %1, align 8
  store i8* %key, i8** %2, align 8
  store i32 0, i32* %k, align 4
  br label %3

; <label>:3                                       ; preds = %51, %0
  %4 = load i32* %k, align 4
  %5 = sext i32 %4 to i64
  %6 = load i8** %1, align 8
  %7 = getelementptr inbounds i8* %6, i64 %5
  %8 = load i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %54

; <label>:11                                      ; preds = %3
  store i32 1, i32* %x, align 4
  store i32 0, i32* %t, align 4
  br label %12

; <label>:12                                      ; preds = %36, %11
  %13 = load i32* %t, align 4
  %14 = sext i32 %13 to i64
  %15 = load i8** %2, align 8
  %16 = getelementptr inbounds i8* %15, i64 %14
  %17 = load i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

; <label>:20                                      ; preds = %12
  %21 = load i32* %k, align 4
  %22 = sext i32 %21 to i64
  %23 = load i8** %1, align 8
  %24 = getelementptr inbounds i8* %23, i64 %22
  %25 = load i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i32* %t, align 4
  %28 = sext i32 %27 to i64
  %29 = load i8** %2, align 8
  %30 = getelementptr inbounds i8* %29, i64 %28
  %31 = load i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %26, %32
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %20
  store i32 0, i32* %x, align 4
  br label %35

; <label>:35                                      ; preds = %34, %20
  br label %36

; <label>:36                                      ; preds = %35
  %37 = load i32* %t, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %t, align 4
  br label %12

; <label>:39                                      ; preds = %12
  %40 = load i32* %x, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %50

; <label>:42                                      ; preds = %39
  %43 = load i32* %k, align 4
  %44 = sext i32 %43 to i64
  %45 = load i8** %1, align 8
  %46 = getelementptr inbounds i8* %45, i64 %44
  %47 = load i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = call i32 @putchar(i32 %48)
  br label %50

; <label>:50                                      ; preds = %42, %39
  br label %51

; <label>:51                                      ; preds = %50
  %52 = load i32* %k, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %k, align 4
  br label %3

; <label>:54                                      ; preds = %3
  %55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0))
  %56 = load i32* %x, align 4
  ret i32 %56
}

declare i32 @putchar(i32) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 @squeeze(i8* getelementptr inbounds ([7 x i8]* @test, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @key, i32 0, i32 0))
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
