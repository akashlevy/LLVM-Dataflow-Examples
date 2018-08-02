; ModuleID = 'C-Programming-Examples/struct.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.symbol_hash = type { i8*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"This is a long string of data\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"hash name %s\0A\00", align 1
@.str2 = private unnamed_addr constant [24 x i8] c"This is a short string.\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"hash add %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %symbol_hash = alloca [512 x %struct.symbol_hash], align 16
  store i32 0, i32* %1
  %2 = getelementptr inbounds [512 x %struct.symbol_hash]* %symbol_hash, i32 0, i64 0
  %3 = getelementptr inbounds %struct.symbol_hash* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8]* @.str, i32 0, i32 0), i8** %3, align 8
  %4 = getelementptr inbounds [512 x %struct.symbol_hash]* %symbol_hash, i32 0, i64 0
  %5 = getelementptr inbounds %struct.symbol_hash* %4, i32 0, i32 0
  %6 = load i8** %5, align 8
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str1, i32 0, i32 0), i8* %6)
  %8 = getelementptr inbounds [512 x %struct.symbol_hash]* %symbol_hash, i32 0, i64 0
  %9 = getelementptr inbounds %struct.symbol_hash* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8]* @.str2, i32 0, i32 0), i8** %9, align 8
  %10 = getelementptr inbounds [512 x %struct.symbol_hash]* %symbol_hash, i32 0, i64 0
  %11 = getelementptr inbounds %struct.symbol_hash* %10, i32 0, i32 0
  %12 = load i8** %11, align 8
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str1, i32 0, i32 0), i8* %12)
  %14 = getelementptr inbounds [512 x %struct.symbol_hash]* %symbol_hash, i32 0, i64 0
  %15 = getelementptr inbounds %struct.symbol_hash* %14, i32 0, i32 1
  store i32 4, i32* %15, align 4
  %16 = getelementptr inbounds [512 x %struct.symbol_hash]* %symbol_hash, i32 0, i64 0
  %17 = getelementptr inbounds %struct.symbol_hash* %16, i32 0, i32 1
  %18 = load i32* %17, align 4
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i32 %18)
  ret i32 1
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
