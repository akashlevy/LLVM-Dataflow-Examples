; ModuleID = 'C-Programming-Examples/ex_4-1.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@main.s = private unnamed_addr constant [17 x i8] c"sdgtwerlsjkadsfs\00", align 16
@.str = private unnamed_addr constant [15 x i8] c"POS Found: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @strindex(i8* %s, i8 signext %t) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %i = alloca i32, align 4
  store i8* %s, i8** %2, align 8
  store i8 %t, i8* %3, align 1
  %4 = load i8** %2, align 8
  %5 = call i64 @strlen(i8* %4)
  %6 = sub i64 %5, 1
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %i, align 4
  br label %8

; <label>:8                                       ; preds = %24, %0
  %9 = load i32* %i, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %27

; <label>:11                                      ; preds = %8
  %12 = load i32* %i, align 4
  %13 = sext i32 %12 to i64
  %14 = load i8** %2, align 8
  %15 = getelementptr inbounds i8* %14, i64 %13
  %16 = load i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8* %3, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %23

; <label>:21                                      ; preds = %11
  %22 = load i32* %i, align 4
  store i32 %22, i32* %1
  br label %28

; <label>:23                                      ; preds = %11
  br label %24

; <label>:24                                      ; preds = %23
  %25 = load i32* %i, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %i, align 4
  br label %8

; <label>:27                                      ; preds = %8
  store i32 -1, i32* %1
  br label %28

; <label>:28                                      ; preds = %27, %21
  %29 = load i32* %1
  ret i32 %29
}

declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %s = alloca [17 x i8], align 16
  %t = alloca i8, align 1
  %pos = alloca i32, align 4
  store i32 0, i32* %1
  %2 = bitcast [17 x i8]* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([17 x i8]* @main.s, i32 0, i32 0), i64 17, i32 16, i1 false)
  store i8 115, i8* %t, align 1
  store i32 0, i32* %pos, align 4
  %3 = getelementptr inbounds [17 x i8]* %s, i32 0, i32 0
  %4 = load i8* %t, align 1
  %5 = call i32 @strindex(i8* %3, i8 signext %4)
  store i32 %5, i32* %pos, align 4
  %6 = load i32* %pos, align 4
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i32 %6)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
