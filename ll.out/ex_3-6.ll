; ModuleID = 'C-Programming-Examples/ex_3-6.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @print_array(i8* %s) #0 {
  %1 = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %s, i8** %1, align 8
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %17, %0
  %3 = load i32* %i, align 4
  %4 = sext i32 %3 to i64
  %5 = load i8** %1, align 8
  %6 = call i64 @strlen(i8* %5)
  %7 = sub i64 %6, 1
  %8 = icmp ule i64 %4, %7
  br i1 %8, label %9, label %20

; <label>:9                                       ; preds = %2
  %10 = load i32* %i, align 4
  %11 = sext i32 %10 to i64
  %12 = load i8** %1, align 8
  %13 = getelementptr inbounds i8* %12, i64 %11
  %14 = load i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = call i32 @putchar(i32 %15)
  br label %17

; <label>:17                                      ; preds = %9
  %18 = load i32* %i, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %i, align 4
  br label %2

; <label>:20                                      ; preds = %2
  ret void
}

declare i64 @strlen(i8*) #1

declare i32 @putchar(i32) #1

; Function Attrs: nounwind uwtable
define void @reverse(i8* %s) #0 {
  %1 = alloca i8*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s, i8** %1, align 8
  store i32 0, i32* %i, align 4
  %2 = load i8** %1, align 8
  %3 = call i64 @strlen(i8* %2)
  %4 = sub i64 %3, 1
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %j, align 4
  br label %6

; <label>:6                                       ; preds = %32, %0
  %7 = load i32* %i, align 4
  %8 = load i32* %j, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %37

; <label>:10                                      ; preds = %6
  %11 = load i32* %i, align 4
  %12 = sext i32 %11 to i64
  %13 = load i8** %1, align 8
  %14 = getelementptr inbounds i8* %13, i64 %12
  %15 = load i8* %14, align 1
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %c, align 4
  %17 = load i32* %j, align 4
  %18 = sext i32 %17 to i64
  %19 = load i8** %1, align 8
  %20 = getelementptr inbounds i8* %19, i64 %18
  %21 = load i8* %20, align 1
  %22 = load i32* %i, align 4
  %23 = sext i32 %22 to i64
  %24 = load i8** %1, align 8
  %25 = getelementptr inbounds i8* %24, i64 %23
  store i8 %21, i8* %25, align 1
  %26 = load i32* %c, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i32* %j, align 4
  %29 = sext i32 %28 to i64
  %30 = load i8** %1, align 8
  %31 = getelementptr inbounds i8* %30, i64 %29
  store i8 %27, i8* %31, align 1
  br label %32

; <label>:32                                      ; preds = %10
  %33 = load i32* %i, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %i, align 4
  %35 = load i32* %j, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %j, align 4
  br label %6

; <label>:37                                      ; preds = %6
  ret void
}

; Function Attrs: nounwind uwtable
define void @itoa(i32 %n, i8* %s) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %sign = alloca i32, align 4
  store i32 %n, i32* %1, align 4
  store i8* %s, i8** %2, align 8
  %3 = load i32* %1, align 4
  store i32 %3, i32* %sign, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load i32* %1, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %8

; <label>:8                                       ; preds = %5, %0
  store i32 0, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %19, %8
  %10 = load i32* %1, align 4
  %11 = srem i32 %10, 10
  %12 = add nsw i32 %11, 48
  %13 = trunc i32 %12 to i8
  %14 = load i32* %i, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %i, align 4
  %16 = sext i32 %14 to i64
  %17 = load i8** %2, align 8
  %18 = getelementptr inbounds i8* %17, i64 %16
  store i8 %13, i8* %18, align 1
  br label %19

; <label>:19                                      ; preds = %9
  %20 = load i32* %1, align 4
  %21 = sdiv i32 %20, 10
  store i32 %21, i32* %1, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %9, label %23

; <label>:23                                      ; preds = %19
  %24 = load i32* %sign, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

; <label>:26                                      ; preds = %23
  %27 = load i32* %i, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4
  %29 = sext i32 %27 to i64
  %30 = load i8** %2, align 8
  %31 = getelementptr inbounds i8* %30, i64 %29
  store i8 45, i8* %31, align 1
  br label %32

; <label>:32                                      ; preds = %26, %23
  %33 = load i32* %i, align 4
  %34 = sext i32 %33 to i64
  %35 = load i8** %2, align 8
  %36 = getelementptr inbounds i8* %35, i64 %34
  store i8 0, i8* %36, align 1
  %37 = load i8** %2, align 8
  call void @reverse(i8* %37)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %n = alloca i32, align 4
  %s = alloca [100 x i8], align 16
  store i32 0, i32* %1
  store i32 123422, i32* %n, align 4
  %2 = load i32* %n, align 4
  %3 = getelementptr inbounds [100 x i8]* %s, i32 0, i32 0
  call void @itoa(i32 %2, i8* %3)
  %4 = getelementptr inbounds [100 x i8]* %s, i32 0, i32 0
  call void @print_array(i8* %4)
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
