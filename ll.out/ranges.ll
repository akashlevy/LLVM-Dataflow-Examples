; ModuleID = 'C-Programming-Examples/ranges.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"\0A\0AThis Computer Supports the following\0A\00", align 1
@.str1 = private unnamed_addr constant [27 x i8] c"Datatype specifications:\0A\0A\00", align 1
@.str2 = private unnamed_addr constant [17 x i8] c"Size of Int: %d\0A\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"INT_MIN: %d\0A\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"INT_MAX: %d\0A\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"Size of Char: %d\0A\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"CHAR_BIT: %d\0A\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"CHAR_MAX: %d\0A\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"CHAR_MIN: %d\0A\00", align 1
@.str10 = private unnamed_addr constant [20 x i8] c"Size of Double: %d\0A\00", align 1
@.str11 = private unnamed_addr constant [18 x i8] c"Size of Long: %d\0A\00", align 1
@.str12 = private unnamed_addr constant [15 x i8] c"LONG_MIN: %ld\0A\00", align 1
@.str13 = private unnamed_addr constant [15 x i8] c"LONG_MAX: %ld\0A\00", align 1
@.str14 = private unnamed_addr constant [19 x i8] c"Size of Short: %d\0A\00", align 1
@.str15 = private unnamed_addr constant [14 x i8] c"SHRT_MIN: %d\0A\00", align 1
@.str16 = private unnamed_addr constant [14 x i8] c"SHRT_MAX: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str, i32 0, i32 0))
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str1, i32 0, i32 0))
  store i32 4, i32* %i, align 4
  %4 = load i32* %i, align 4
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str2, i32 0, i32 0), i32 %4)
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i32 -2147483648)
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0), i32 2147483647)
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  %9 = load i32* %i, align 4
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str6, i32 0, i32 0), i32 %9)
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str7, i32 0, i32 0), i32 8)
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str8, i32 0, i32 0), i32 127)
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0), i32 -128)
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0))
  store i32 8, i32* %i, align 4
  %15 = load i32* %i, align 4
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str10, i32 0, i32 0), i32 %15)
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0))
  store i32 8, i32* %i, align 4
  %18 = load i32* %i, align 4
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str11, i32 0, i32 0), i32 %18)
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str12, i32 0, i32 0), i64 -9223372036854775808)
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str13, i32 0, i32 0), i64 9223372036854775807)
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0))
  store i32 2, i32* %i, align 4
  %23 = load i32* %i, align 4
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str14, i32 0, i32 0), i32 %23)
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str15, i32 0, i32 0), i32 -32768)
  %26 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str16, i32 0, i32 0), i32 32767)
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0))
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
