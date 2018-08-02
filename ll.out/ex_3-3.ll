; ModuleID = 'C-Programming-Examples/ex_3-3.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @get_tokens(i32* %dir, i8* %start, i8* %stop) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %status = alloca i32, align 4
  %c = alloca i8, align 1
  store i32* %dir, i32** %2, align 8
  store i8* %start, i8** %3, align 8
  store i8* %stop, i8** %4, align 8
  store i32 0, i32* %status, align 4
  store i8 0, i8* %c, align 1
  %5 = call i32 @getchar()
  %6 = trunc i32 %5 to i8
  store i8 %6, i8* %c, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %0
  %10 = load i32* %status, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %status, align 4
  br label %12

; <label>:12                                      ; preds = %9, %0
  %13 = load i8* %c, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 45
  br i1 %15, label %16, label %42

; <label>:16                                      ; preds = %12
  %17 = load i32** %2, align 8
  store i32 1, i32* %17, align 4
  %18 = call i32 @getchar()
  %19 = trunc i32 %18 to i8
  %20 = load i8** %3, align 8
  store i8 %19, i8* %20, align 1
  %21 = sext i8 %19 to i32
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %26

; <label>:23                                      ; preds = %16
  %24 = load i32* %status, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %status, align 4
  br label %26

; <label>:26                                      ; preds = %23, %16
  %27 = call i32 @getchar()
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %32

; <label>:29                                      ; preds = %26
  %30 = load i32* %status, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %status, align 4
  br label %32

; <label>:32                                      ; preds = %29, %26
  %33 = call i32 @getchar()
  %34 = trunc i32 %33 to i8
  %35 = load i8** %4, align 8
  store i8 %34, i8* %35, align 1
  %36 = sext i8 %34 to i32
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %32
  %39 = load i32* %status, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %status, align 4
  br label %41

; <label>:41                                      ; preds = %38, %32
  br label %61

; <label>:42                                      ; preds = %12
  %43 = load i32** %2, align 8
  store i32 0, i32* %43, align 4
  %44 = load i8* %c, align 1
  %45 = load i8** %3, align 8
  store i8 %44, i8* %45, align 1
  %46 = call i32 @getchar()
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %51

; <label>:48                                      ; preds = %42
  %49 = load i32* %status, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %status, align 4
  br label %51

; <label>:51                                      ; preds = %48, %42
  %52 = call i32 @getchar()
  %53 = trunc i32 %52 to i8
  %54 = load i8** %4, align 8
  store i8 %53, i8* %54, align 1
  %55 = sext i8 %53 to i32
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %60

; <label>:57                                      ; preds = %51
  %58 = load i32* %status, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %status, align 4
  br label %60

; <label>:60                                      ; preds = %57, %51
  br label %61

; <label>:61                                      ; preds = %60, %41
  %62 = load i32* %status, align 4
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %64, label %69

; <label>:64                                      ; preds = %61
  %65 = load i32** %2, align 8
  %66 = load i32* %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %69

; <label>:68                                      ; preds = %64
  store i32 1, i32* %1
  br label %78

; <label>:69                                      ; preds = %64, %61
  %70 = load i32* %status, align 4
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %77

; <label>:72                                      ; preds = %69
  %73 = load i32** %2, align 8
  %74 = load i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %72
  store i32 1, i32* %1
  br label %78

; <label>:77                                      ; preds = %72, %69
  store i32 -1, i32* %1
  br label %78

; <label>:78                                      ; preds = %77, %76, %68
  %79 = load i32* %1
  ret i32 %79
}

declare i32 @getchar() #1

; Function Attrs: nounwind uwtable
define void @print_tokens(i32* %dir, i8* %start, i8* %stop) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i32* %dir, i32** %1, align 8
  store i8* %start, i8** %2, align 8
  store i8* %stop, i8** %3, align 8
  %4 = load i32** %1, align 8
  %5 = load i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %29

; <label>:7                                       ; preds = %0
  br label %8

; <label>:8                                       ; preds = %17, %7
  %9 = load i8** %2, align 8
  %10 = load i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = load i8** %3, align 8
  %13 = load i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = add nsw i32 %14, 1
  %16 = icmp ne i32 %11, %15
  br i1 %16, label %17, label %28

; <label>:17                                      ; preds = %8
  %18 = load i8** %2, align 8
  %19 = load i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = call i32 @putchar(i32 %20)
  %22 = load i8** %2, align 8
  %23 = load i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = add nsw i32 %24, 1
  %26 = trunc i32 %25 to i8
  %27 = load i8** %2, align 8
  store i8 %26, i8* %27, align 1
  br label %8

; <label>:28                                      ; preds = %8
  br label %51

; <label>:29                                      ; preds = %0
  br label %30

; <label>:30                                      ; preds = %39, %29
  %31 = load i8** %2, align 8
  %32 = load i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8** %3, align 8
  %35 = load i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = sub nsw i32 %36, 1
  %38 = icmp ne i32 %33, %37
  br i1 %38, label %39, label %50

; <label>:39                                      ; preds = %30
  %40 = load i8** %2, align 8
  %41 = load i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = call i32 @putchar(i32 %42)
  %44 = load i8** %2, align 8
  %45 = load i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = sub nsw i32 %46, 1
  %48 = trunc i32 %47 to i8
  %49 = load i8** %2, align 8
  store i8 %48, i8* %49, align 1
  br label %30

; <label>:50                                      ; preds = %30
  br label %51

; <label>:51                                      ; preds = %50, %28
  ret void
}

declare i32 @putchar(i32) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %start = alloca i8, align 1
  %stop = alloca i8, align 1
  %dir = alloca i32, align 4
  store i32 0, i32* %1
  br label %2

; <label>:2                                       ; preds = %5, %0
  %3 = call i32 @get_tokens(i32* %dir, i8* %start, i8* %stop)
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %2
  call void @print_tokens(i32* %dir, i8* %start, i8* %stop)
  %6 = call i32 @putchar(i32 10)
  br label %2

; <label>:7                                       ; preds = %2
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
