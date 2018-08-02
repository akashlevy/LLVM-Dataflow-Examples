; ModuleID = 'C-Programming-Examples/ex_5-1.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@bufp = global i32 0, align 4
@buf = common global [100 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [30 x i8] c"ungetch: too many characters\0A\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"Retval: %c\0A\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @getch() #0 {
  %1 = load i32* @bufp, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %10

; <label>:3                                       ; preds = %0
  %4 = load i32* @bufp, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* @bufp, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [100 x i8]* @buf, i32 0, i64 %6
  %8 = load i8* %7, align 1
  %9 = sext i8 %8 to i32
  br label %12

; <label>:10                                      ; preds = %0
  %11 = call i32 @getchar()
  br label %12

; <label>:12                                      ; preds = %10, %3
  %13 = phi i32 [ %9, %3 ], [ %11, %10 ]
  ret i32 %13
}

declare i32 @getchar() #1

; Function Attrs: nounwind uwtable
define void @ungetch(i32 %c) #0 {
  %1 = alloca i32, align 4
  store i32 %c, i32* %1, align 4
  %2 = load i32* @bufp, align 4
  %3 = icmp sge i32 %2, 100
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str, i32 0, i32 0))
  br label %13

; <label>:6                                       ; preds = %0
  %7 = load i32* %1, align 4
  %8 = trunc i32 %7 to i8
  %9 = load i32* @bufp, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @bufp, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [100 x i8]* @buf, i32 0, i64 %11
  store i8 %8, i8* %12, align 1
  br label %13

; <label>:13                                      ; preds = %6, %4
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @getint(i32* %pn) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %c = alloca i32, align 4
  %sign = alloca i32, align 4
  %signed_num = alloca i32, align 4
  store i32* %pn, i32** %2, align 8
  br label %3

; <label>:3                                       ; preds = %13, %0
  %4 = call i32 @getch()
  store i32 %4, i32* %c, align 4
  %5 = sext i32 %4 to i64
  %6 = call i16** @__ctype_b_loc() #3
  %7 = load i16** %6, align 8
  %8 = getelementptr inbounds i16* %7, i64 %5
  %9 = load i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 8192
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %3
  br label %3

; <label>:14                                      ; preds = %3
  %15 = load i32* %c, align 4
  %16 = sext i32 %15 to i64
  %17 = call i16** @__ctype_b_loc() #3
  %18 = load i16** %17, align 8
  %19 = getelementptr inbounds i16* %18, i64 %16
  %20 = load i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 2048
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

; <label>:24                                      ; preds = %14
  %25 = load i32* %c, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %35

; <label>:27                                      ; preds = %24
  %28 = load i32* %c, align 4
  %29 = icmp ne i32 %28, 43
  br i1 %29, label %30, label %35

; <label>:30                                      ; preds = %27
  %31 = load i32* %c, align 4
  %32 = icmp ne i32 %31, 45
  br i1 %32, label %33, label %35

; <label>:33                                      ; preds = %30
  %34 = load i32* %c, align 4
  call void @ungetch(i32 %34)
  store i32 0, i32* %1
  br label %101

; <label>:35                                      ; preds = %30, %27, %24, %14
  %36 = load i32* %c, align 4
  %37 = icmp eq i32 %36, 45
  %38 = select i1 %37, i32 -1, i32 1
  store i32 %38, i32* %sign, align 4
  %39 = load i32* %c, align 4
  %40 = icmp eq i32 %39, 43
  br i1 %40, label %44, label %41

; <label>:41                                      ; preds = %35
  %42 = load i32* %c, align 4
  %43 = icmp eq i32 %42, 45
  br label %44

; <label>:44                                      ; preds = %41, %35
  %45 = phi i1 [ true, %35 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %signed_num, align 4
  br i1 %45, label %47, label %49

; <label>:47                                      ; preds = %44
  %48 = call i32 @getch()
  store i32 %48, i32* %c, align 4
  br label %49

; <label>:49                                      ; preds = %47, %44
  %50 = load i32* %c, align 4
  %51 = sext i32 %50 to i64
  %52 = call i16** @__ctype_b_loc() #3
  %53 = load i16** %52, align 8
  %54 = getelementptr inbounds i16* %53, i64 %51
  %55 = load i16* %54, align 2
  %56 = zext i16 %55 to i32
  %57 = and i32 %56, 2048
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

; <label>:59                                      ; preds = %49
  %60 = load i32* %c, align 4
  call void @ungetch(i32 %60)
  %61 = load i32* %signed_num, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

; <label>:63                                      ; preds = %59
  %64 = load i32* %sign, align 4
  %65 = icmp eq i32 %64, -1
  %66 = select i1 %65, i32 45, i32 43
  call void @ungetch(i32 %66)
  br label %67

; <label>:67                                      ; preds = %63, %59
  store i32 0, i32* %1
  br label %101

; <label>:68                                      ; preds = %49
  %69 = load i32** %2, align 8
  store i32 0, i32* %69, align 4
  br label %70

; <label>:70                                      ; preds = %88, %68
  %71 = load i32* %c, align 4
  %72 = sext i32 %71 to i64
  %73 = call i16** @__ctype_b_loc() #3
  %74 = load i16** %73, align 8
  %75 = getelementptr inbounds i16* %74, i64 %72
  %76 = load i16* %75, align 2
  %77 = zext i16 %76 to i32
  %78 = and i32 %77, 2048
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

; <label>:80                                      ; preds = %70
  %81 = load i32** %2, align 8
  %82 = load i32* %81, align 4
  %83 = mul nsw i32 10, %82
  %84 = load i32* %c, align 4
  %85 = sub nsw i32 %84, 48
  %86 = add nsw i32 %83, %85
  %87 = load i32** %2, align 8
  store i32 %86, i32* %87, align 4
  br label %88

; <label>:88                                      ; preds = %80
  %89 = call i32 @getch()
  store i32 %89, i32* %c, align 4
  br label %70

; <label>:90                                      ; preds = %70
  %91 = load i32* %sign, align 4
  %92 = load i32** %2, align 8
  %93 = load i32* %92, align 4
  %94 = mul nsw i32 %93, %91
  store i32 %94, i32* %92, align 4
  %95 = load i32* %c, align 4
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %99

; <label>:97                                      ; preds = %90
  %98 = load i32* %c, align 4
  call void @ungetch(i32 %98)
  br label %99

; <label>:99                                      ; preds = %97, %90
  %100 = load i32* %c, align 4
  store i32 %100, i32* %1
  br label %101

; <label>:101                                     ; preds = %99, %67, %33
  %102 = load i32* %1
  ret i32 %102
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %n = alloca [5 x i32], align 16
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %retval, align 4
  %2 = getelementptr inbounds [5 x i32]* %n, i32 0, i32 0
  %3 = call i32 @getint(i32* %2)
  store i32 %3, i32* %retval, align 4
  %4 = load i32* %retval, align 4
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0), i32 %4)
  store i32 0, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %15, %0
  %7 = load i32* %i, align 4
  %8 = icmp slt i32 %7, 5
  br i1 %8, label %9, label %18

; <label>:9                                       ; preds = %6
  %10 = load i32* %i, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5 x i32]* %n, i32 0, i64 %11
  %13 = load i32* %12, align 4
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), i32 %13)
  br label %15

; <label>:15                                      ; preds = %9
  %16 = load i32* %i, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %i, align 4
  br label %6

; <label>:18                                      ; preds = %6
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  ret i32 1
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
