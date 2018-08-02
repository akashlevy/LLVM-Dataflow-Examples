; ModuleID = 'C-Programming-Examples/ex_2-5.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@test = global [3 x i8] c"ax\00", align 1
@data = global [7 x i8] c"123bcx\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @any(i8* %test, i8* %data) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %test, i8** %2, align 8
  store i8* %data, i8** %3, align 8
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %42, %0
  %5 = load i32* %i, align 4
  %6 = sext i32 %5 to i64
  %7 = load i8** %3, align 8
  %8 = getelementptr inbounds i8* %7, i64 %6
  %9 = load i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %45

; <label>:12                                      ; preds = %4
  store i32 0, i32* %j, align 4
  br label %13

; <label>:13                                      ; preds = %40, %12
  %14 = load i32* %j, align 4
  %15 = sext i32 %14 to i64
  %16 = load i8** %2, align 8
  %17 = getelementptr inbounds i8* %16, i64 %15
  %18 = load i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

; <label>:21                                      ; preds = %13
  %22 = load i32* %j, align 4
  %23 = sext i32 %22 to i64
  %24 = load i8** %2, align 8
  %25 = getelementptr inbounds i8* %24, i64 %23
  %26 = load i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i32* %i, align 4
  %29 = sext i32 %28 to i64
  %30 = load i8** %3, align 8
  %31 = getelementptr inbounds i8* %30, i64 %29
  %32 = load i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %27, %33
  br i1 %34, label %35, label %37

; <label>:35                                      ; preds = %21
  %36 = load i32* %i, align 4
  store i32 %36, i32* %1
  br label %46

; <label>:37                                      ; preds = %21
  %38 = load i32* %j, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %j, align 4
  br label %40

; <label>:40                                      ; preds = %37
  br label %13

; <label>:41                                      ; preds = %13
  br label %42

; <label>:42                                      ; preds = %41
  %43 = load i32* %i, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %i, align 4
  br label %4

; <label>:45                                      ; preds = %4
  store i32 -1, i32* %1
  br label %46

; <label>:46                                      ; preds = %45, %35
  %47 = load i32* %1
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %ans = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 @any(i8* getelementptr inbounds ([3 x i8]* @test, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @data, i32 0, i32 0))
  store i32 %2, i32* %ans, align 4
  %3 = load i32* %ans, align 4
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %3)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
