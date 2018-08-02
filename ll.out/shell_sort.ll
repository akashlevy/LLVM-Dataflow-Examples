; ModuleID = 'C-Programming-Examples/shell_sort.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@main.data = private unnamed_addr constant [10 x i32] [i32 9, i32 12, i32 54, i32 90, i32 0, i32 100, i32 65, i32 32, i32 54, i32 81], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @shellsort(i32* %v, i32 %n) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %gap = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32* %v, i32** %1, align 8
  store i32 %n, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = sdiv i32 %3, 2
  store i32 %4, i32* %gap, align 4
  br label %5

; <label>:5                                       ; preds = %70, %0
  %6 = load i32* %gap, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %73

; <label>:8                                       ; preds = %5
  %9 = load i32* %gap, align 4
  store i32 %9, i32* %i, align 4
  br label %10

; <label>:10                                      ; preds = %66, %8
  %11 = load i32* %i, align 4
  %12 = load i32* %2, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %69

; <label>:14                                      ; preds = %10
  %15 = load i32* %i, align 4
  %16 = load i32* %gap, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %j, align 4
  br label %18

; <label>:18                                      ; preds = %61, %14
  %19 = load i32* %j, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %35

; <label>:21                                      ; preds = %18
  %22 = load i32* %j, align 4
  %23 = sext i32 %22 to i64
  %24 = load i32** %1, align 8
  %25 = getelementptr inbounds i32* %24, i64 %23
  %26 = load i32* %25, align 4
  %27 = load i32* %j, align 4
  %28 = load i32* %gap, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = load i32** %1, align 8
  %32 = getelementptr inbounds i32* %31, i64 %30
  %33 = load i32* %32, align 4
  %34 = icmp sgt i32 %26, %33
  br label %35

; <label>:35                                      ; preds = %21, %18
  %36 = phi i1 [ false, %18 ], [ %34, %21 ]
  br i1 %36, label %37, label %65

; <label>:37                                      ; preds = %35
  %38 = load i32* %j, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32** %1, align 8
  %41 = getelementptr inbounds i32* %40, i64 %39
  %42 = load i32* %41, align 4
  store i32 %42, i32* %temp, align 4
  %43 = load i32* %j, align 4
  %44 = load i32* %gap, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = load i32** %1, align 8
  %48 = getelementptr inbounds i32* %47, i64 %46
  %49 = load i32* %48, align 4
  %50 = load i32* %j, align 4
  %51 = sext i32 %50 to i64
  %52 = load i32** %1, align 8
  %53 = getelementptr inbounds i32* %52, i64 %51
  store i32 %49, i32* %53, align 4
  %54 = load i32* %temp, align 4
  %55 = load i32* %j, align 4
  %56 = load i32* %gap, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = load i32** %1, align 8
  %60 = getelementptr inbounds i32* %59, i64 %58
  store i32 %54, i32* %60, align 4
  br label %61

; <label>:61                                      ; preds = %37
  %62 = load i32* %gap, align 4
  %63 = load i32* %j, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %j, align 4
  br label %18

; <label>:65                                      ; preds = %35
  br label %66

; <label>:66                                      ; preds = %65
  %67 = load i32* %i, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %i, align 4
  br label %10

; <label>:69                                      ; preds = %10
  br label %70

; <label>:70                                      ; preds = %69
  %71 = load i32* %gap, align 4
  %72 = sdiv i32 %71, 2
  store i32 %72, i32* %gap, align 4
  br label %5

; <label>:73                                      ; preds = %5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %data = alloca [10 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %1
  %2 = bitcast [10 x i32]* %data to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([10 x i32]* @main.data to i8*), i64 40, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %12, %0
  %4 = load i32* %i, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %15

; <label>:6                                       ; preds = %3
  %7 = load i32* %i, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [10 x i32]* %data, i32 0, i64 %8
  %10 = load i32* %9, align 4
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %10)
  br label %12

; <label>:12                                      ; preds = %6
  %13 = load i32* %i, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %i, align 4
  br label %3

; <label>:15                                      ; preds = %3
  %16 = getelementptr inbounds [10 x i32]* %data, i32 0, i32 0
  call void @shellsort(i32* %16, i32 10)
  store i32 0, i32* %i, align 4
  br label %17

; <label>:17                                      ; preds = %26, %15
  %18 = load i32* %i, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %29

; <label>:20                                      ; preds = %17
  %21 = load i32* %i, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x i32]* %data, i32 0, i64 %22
  %24 = load i32* %23, align 4
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %24)
  br label %26

; <label>:26                                      ; preds = %20
  %27 = load i32* %i, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4
  br label %17

; <label>:29                                      ; preds = %17
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
