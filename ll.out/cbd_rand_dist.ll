; ModuleID = 'C-Programming-Examples/cbd_rand_dist.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"Number of Random Integers to Generate: \00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"%d->%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %count = alloca i32, align 4
  %tally = alloca [10 x i32], align 16
  store i32 0, i32* %1
  %2 = bitcast [10 x i32]* %tally to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 40, i32 16, i1 false)
  %3 = bitcast i8* %2 to [10 x i32]*
  %4 = getelementptr [10 x i32]* %3, i32 0, i32 0
  store i32 48, i32* %4
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str, i32 0, i32 0))
  %6 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %count)
  br label %7

; <label>:7                                       ; preds = %10, %0
  %8 = load i32* %count, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %19

; <label>:10                                      ; preds = %7
  %11 = call i32 @rand() #1
  %12 = srem i32 %11, 10
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [10 x i32]* %tally, i32 0, i64 %13
  %15 = load i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load i32* %count, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %count, align 4
  br label %7

; <label>:19                                      ; preds = %7
  br label %20

; <label>:20                                      ; preds = %23, %19
  %21 = load i32* %count, align 4
  %22 = icmp slt i32 %21, 10
  br i1 %22, label %23, label %32

; <label>:23                                      ; preds = %20
  %24 = load i32* %count, align 4
  %25 = load i32* %count, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [10 x i32]* %tally, i32 0, i64 %26
  %28 = load i32* %27, align 4
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 %24, i32 %28)
  %30 = load i32* %count, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %count, align 4
  br label %20

; <label>:32                                      ; preds = %20
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @printf(i8*, ...) #2

declare i32 @__isoc99_scanf(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @rand() #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
