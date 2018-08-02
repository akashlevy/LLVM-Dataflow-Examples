; ModuleID = 'C-Programming-Examples/ex_1-14.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"%d\09|\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"\0A\09 \00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nwhite = alloca i32, align 4
  %nother = alloca i32, align 4
  %maxnum = alloca i32, align 4
  %ndigit = alloca [127 x i32], align 16
  store i32 0, i32* %1
  %2 = bitcast [127 x i32]* %ndigit to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 508, i32 16, i1 false)
  store i32 0, i32* %maxnum, align 4
  store i32 0, i32* %nother, align 4
  store i32 0, i32* %nwhite, align 4
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %10, %0
  %4 = load i32* %i, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %13

; <label>:6                                       ; preds = %3
  %7 = load i32* %i, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [127 x i32]* %ndigit, i32 0, i64 %8
  store i32 0, i32* %9, align 4
  br label %10

; <label>:10                                      ; preds = %6
  %11 = load i32* %i, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %i, align 4
  br label %3

; <label>:13                                      ; preds = %3
  br label %14

; <label>:14                                      ; preds = %27, %13
  %15 = call i32 @getchar()
  store i32 %15, i32* %c, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %28

; <label>:17                                      ; preds = %14
  %18 = load i32* %c, align 4
  %19 = icmp sgt i32 %18, 127
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %17
  br label %27

; <label>:21                                      ; preds = %17
  %22 = load i32* %c, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [127 x i32]* %ndigit, i32 0, i64 %23
  %25 = load i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

; <label>:27                                      ; preds = %21, %20
  br label %14

; <label>:28                                      ; preds = %14
  store i32 0, i32* %i, align 4
  br label %29

; <label>:29                                      ; preds = %45, %28
  %30 = load i32* %i, align 4
  %31 = icmp sle i32 %30, 127
  br i1 %31, label %32, label %48

; <label>:32                                      ; preds = %29
  %33 = load i32* %i, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [127 x i32]* %ndigit, i32 0, i64 %34
  %36 = load i32* %35, align 4
  %37 = load i32* %maxnum, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %44

; <label>:39                                      ; preds = %32
  %40 = load i32* %i, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [127 x i32]* %ndigit, i32 0, i64 %41
  %43 = load i32* %42, align 4
  store i32 %43, i32* %maxnum, align 4
  br label %44

; <label>:44                                      ; preds = %39, %32
  br label %45

; <label>:45                                      ; preds = %44
  %46 = load i32* %i, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %i, align 4
  br label %29

; <label>:48                                      ; preds = %29
  store i32 0, i32* %i, align 4
  br label %49

; <label>:49                                      ; preds = %87, %48
  %50 = load i32* %i, align 4
  %51 = load i32* %maxnum, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %90

; <label>:53                                      ; preds = %49
  %54 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0))
  %55 = load i32* %maxnum, align 4
  %56 = load i32* %i, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 %57)
  store i32 0, i32* %j, align 4
  br label %59

; <label>:59                                      ; preds = %83, %53
  %60 = load i32* %j, align 4
  %61 = icmp sle i32 %60, 127
  br i1 %61, label %62, label %86

; <label>:62                                      ; preds = %59
  %63 = load i32* %j, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [127 x i32]* %ndigit, i32 0, i64 %64
  %66 = load i32* %65, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %82

; <label>:68                                      ; preds = %62
  %69 = load i32* %j, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [127 x i32]* %ndigit, i32 0, i64 %70
  %72 = load i32* %71, align 4
  %73 = load i32* %maxnum, align 4
  %74 = load i32* %i, align 4
  %75 = sub nsw i32 %73, %74
  %76 = icmp sge i32 %72, %75
  br i1 %76, label %77, label %79

; <label>:77                                      ; preds = %68
  %78 = call i32 @putchar(i32 42)
  br label %81

; <label>:79                                      ; preds = %68
  %80 = call i32 @putchar(i32 32)
  br label %81

; <label>:81                                      ; preds = %79, %77
  br label %82

; <label>:82                                      ; preds = %81, %62
  br label %83

; <label>:83                                      ; preds = %82
  %84 = load i32* %j, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %j, align 4
  br label %59

; <label>:86                                      ; preds = %59
  br label %87

; <label>:87                                      ; preds = %86
  %88 = load i32* %i, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %i, align 4
  br label %49

; <label>:90                                      ; preds = %49
  %91 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %92

; <label>:92                                      ; preds = %106, %90
  %93 = load i32* %i, align 4
  %94 = icmp sle i32 %93, 127
  br i1 %94, label %95, label %109

; <label>:95                                      ; preds = %92
  %96 = load i32* %i, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [127 x i32]* %ndigit, i32 0, i64 %97
  %99 = load i32* %98, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %105

; <label>:101                                     ; preds = %95
  %102 = load i32* %i, align 4
  %103 = sdiv i32 %102, 100
  %104 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32 %103)
  br label %105

; <label>:105                                     ; preds = %101, %95
  br label %106

; <label>:106                                     ; preds = %105
  %107 = load i32* %i, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %i, align 4
  br label %92

; <label>:109                                     ; preds = %92
  %110 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %111

; <label>:111                                     ; preds = %129, %109
  %112 = load i32* %i, align 4
  %113 = icmp sle i32 %112, 127
  br i1 %113, label %114, label %132

; <label>:114                                     ; preds = %111
  %115 = load i32* %i, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [127 x i32]* %ndigit, i32 0, i64 %116
  %118 = load i32* %117, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %128

; <label>:120                                     ; preds = %114
  %121 = load i32* %i, align 4
  %122 = load i32* %i, align 4
  %123 = sdiv i32 %122, 100
  %124 = mul nsw i32 100, %123
  %125 = sub nsw i32 %121, %124
  %126 = sdiv i32 %125, 10
  %127 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32 %126)
  br label %128

; <label>:128                                     ; preds = %120, %114
  br label %129

; <label>:129                                     ; preds = %128
  %130 = load i32* %i, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %i, align 4
  br label %111

; <label>:132                                     ; preds = %111
  %133 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %134

; <label>:134                                     ; preds = %151, %132
  %135 = load i32* %i, align 4
  %136 = icmp sle i32 %135, 127
  br i1 %136, label %137, label %154

; <label>:137                                     ; preds = %134
  %138 = load i32* %i, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [127 x i32]* %ndigit, i32 0, i64 %139
  %141 = load i32* %140, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %150

; <label>:143                                     ; preds = %137
  %144 = load i32* %i, align 4
  %145 = load i32* %i, align 4
  %146 = sdiv i32 %145, 10
  %147 = mul nsw i32 10, %146
  %148 = sub nsw i32 %144, %147
  %149 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i32 %148)
  br label %150

; <label>:150                                     ; preds = %143, %137
  br label %151

; <label>:151                                     ; preds = %150
  %152 = load i32* %i, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %i, align 4
  br label %134

; <label>:154                                     ; preds = %134
  %155 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0))
  %156 = load i32* %1
  ret i32 %156
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @getchar() #2

declare i32 @printf(i8*, ...) #2

declare i32 @putchar(i32) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
