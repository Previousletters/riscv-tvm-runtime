; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i8*, %1, i32, %2, i64*, i64*, i64 }
%1 = type { i32, i32 }
%2 = type { i8, i8, i16 }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@.str = private constant [68 x i8] c"Assert fail: (num_args == 2), fused_reshape_1: num_args should be 2\00", align 1
@.str.1 = private constant [143 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_reshape_1: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [143 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_reshape_1: Expect arg[1] to be pointer\00", align 1
@.str.3 = private constant [85 x i8] c"Assert fail: (2 == tir.tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 2\00", align 1
@.str.4 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg0, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be float32\00", align 1
@.str.5 = private constant [124 x i8] c"Assert fail: (1 == int32(arg0.shape[0])), Argument arg0.shape[0] has an unsatisfied constraint: (1 == int32(arg0.shape[0]))\00", align 1
@.str.6 = private constant [124 x i8] c"Assert fail: (2 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (2 == int32(arg0.shape[1]))\00", align 1
@.str.7 = private constant [122 x i8] c"Assert fail: ((1 == int32(arg0.strides[1])) && (2 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.8 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8))\00", align 1
@.str.9 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg0, 0, 10)), Argument arg0.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg0, 0, 10))\00", align 1
@.str.10 = private constant [85 x i8] c"Assert fail: (2 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 2\00", align 1
@.str.11 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.12 = private constant [124 x i8] c"Assert fail: (1 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (1 == int32(arg1.shape[0]))\00", align 1
@.str.13 = private constant [124 x i8] c"Assert fail: (2 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (2 == int32(arg1.shape[1]))\00", align 1
@.str.14 = private constant [122 x i8] c"Assert fail: ((1 == int32(arg1.strides[1])) && (2 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.15 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8))\00", align 1
@.str.16 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg1, 0, 10))\00", align 1
@.str.17 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg1, 0, 9))\00", align 1
@.str.18 = private constant [81 x i8] c"Assert fail: (num_args == 4), fused_nn_dense_nn_bias_add_1: num_args should be 4\00", align 1
@.str.19 = private constant [156 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_dense_nn_bias_add_1: Expect arg[0] to be pointer\00", align 1
@.str.20 = private constant [156 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_dense_nn_bias_add_1: Expect arg[1] to be pointer\00", align 1
@.str.21 = private constant [156 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), fused_nn_dense_nn_bias_add_1: Expect arg[2] to be pointer\00", align 1
@.str.22 = private constant [156 x i8] c"Assert fail: ((((arg3.code == 3) || (arg3.code == 13)) || (arg3.code == 7)) || (arg3.code == 4)), fused_nn_dense_nn_bias_add_1: Expect arg[3] to be pointer\00", align 1
@.str.23 = private constant [124 x i8] c"Assert fail: (3 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (3 == int32(arg1.shape[0]))\00", align 1
@.str.24 = private constant [85 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 1\00", align 1
@.str.25 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.26 = private constant [124 x i8] c"Assert fail: (3 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint: (3 == int32(arg2.shape[0]))\00", align 1
@.str.27 = private constant [87 x i8] c"Assert fail: (1 == int32(arg2.strides[0])), arg2.strides: expected to be compact array\00", align 1
@.str.28 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg2, 0, 8)), Argument arg2.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg2, 0, 8))\00", align 1
@.str.29 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg2, 0, 10)), Argument arg2.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg2, 0, 10))\00", align 1
@.str.30 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg2, 0, 9)), Argument arg2.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg2, 0, 9))\00", align 1
@.str.31 = private constant [85 x i8] c"Assert fail: (2 == tir.tvm_struct_get(arg3, 0, 4)), arg3.ndim is expected to equal 2\00", align 1
@.str.32 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg3, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg3, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg3, 0, 7) == (uint16)1)), arg3.dtype is expected to be float32\00", align 1
@.str.33 = private constant [124 x i8] c"Assert fail: (1 == int32(arg3.shape[0])), Argument arg3.shape[0] has an unsatisfied constraint: (1 == int32(arg3.shape[0]))\00", align 1
@.str.34 = private constant [124 x i8] c"Assert fail: (3 == int32(arg3.shape[1])), Argument arg3.shape[1] has an unsatisfied constraint: (3 == int32(arg3.shape[1]))\00", align 1
@.str.35 = private constant [122 x i8] c"Assert fail: ((1 == int32(arg3.strides[1])) && (3 == int32(arg3.strides[0]))), arg3.strides: expected to be compact array\00", align 1
@.str.36 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg3, 0, 8)), Argument arg3.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg3, 0, 8))\00", align 1
@.str.37 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg3, 0, 10)), Argument arg3.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg3, 0, 10))\00", align 1
@.str.38 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg3, 0, 9)), Argument arg3.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg3, 0, 9))\00", align 1
@.str.39 = private constant [66 x i8] c"Assert fail: (num_args == 2), fused_reshape: num_args should be 2\00", align 1
@.str.40 = private constant [141 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_reshape: Expect arg[0] to be pointer\00", align 1
@.str.41 = private constant [141 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_reshape: Expect arg[1] to be pointer\00", align 1
@.str.42 = private constant [124 x i8] c"Assert fail: (3 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (3 == int32(arg0.shape[1]))\00", align 1
@.str.43 = private constant [122 x i8] c"Assert fail: ((1 == int32(arg0.strides[1])) && (3 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.44 = private constant [124 x i8] c"Assert fail: (3 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (3 == int32(arg1.shape[1]))\00", align 1
@.str.45 = private constant [122 x i8] c"Assert fail: ((1 == int32(arg1.strides[1])) && (3 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.46 = private constant [79 x i8] c"Assert fail: (num_args == 4), fused_nn_dense_nn_bias_add: num_args should be 4\00", align 1
@.str.47 = private constant [154 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_dense_nn_bias_add: Expect arg[0] to be pointer\00", align 1
@.str.48 = private constant [154 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_dense_nn_bias_add: Expect arg[1] to be pointer\00", align 1
@.str.49 = private constant [154 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), fused_nn_dense_nn_bias_add: Expect arg[2] to be pointer\00", align 1
@.str.50 = private constant [154 x i8] c"Assert fail: ((((arg3.code == 3) || (arg3.code == 13)) || (arg3.code == 7)) || (arg3.code == 4)), fused_nn_dense_nn_bias_add: Expect arg[3] to be pointer\00", align 1
@.str.51 = private constant [124 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint: (1 == int32(arg2.shape[0]))\00", align 1
@.str.52 = private constant [124 x i8] c"Assert fail: (1 == int32(arg3.shape[1])), Argument arg3.shape[1] has an unsatisfied constraint: (1 == int32(arg3.shape[1]))\00", align 1
@.str.53 = private constant [122 x i8] c"Assert fail: ((1 == int32(arg3.strides[1])) && (1 == int32(arg3.strides[0]))), arg3.strides: expected to be compact array\00", align 1
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

define dllexport i32 @fused_reshape_1(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %7(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %0**
  %9 = load %0*, %0** %8, align 8
  %10 = bitcast i8* %1 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !9
  %12 = getelementptr inbounds i8, i8* %0, i64 8
  %13 = bitcast i8* %12 to %0**
  %14 = load %0*, %0** %13, align 8
  %15 = getelementptr inbounds i8, i8* %1, i64 4
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !23
  %18 = getelementptr inbounds %0, %0* %9, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %19, i64 128) ]
  %20 = getelementptr inbounds %0, %0* %9, i64 0, i32 4
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds %0, %0* %9, i64 0, i32 5
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %0, %0* %14, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %27, i64 128) ]
  %28 = getelementptr inbounds %0, %0* %14, i64 0, i32 4
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds %0, %0* %14, i64 0, i32 5
  %31 = load i64*, i64** %30, align 8
  switch i32 %11, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %32 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %32(i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.1, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %17, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %33 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %33(i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.2, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %34 = getelementptr inbounds %0, %0* %9, i64 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %assert_end8, label %assert_fail5, !prof !5

assert_fail5:                                     ; preds = %assert_end4
  %37 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %37(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end4
  %38 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 2
  %39 = load i16, i16* %38, align 2
  %40 = icmp eq i16 %39, 1
  %41 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 1
  %42 = load i8, i8* %41, align 1
  %43 = icmp eq i8 %42, 32
  %44 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 0
  %45 = load i8, i8* %44, align 1
  %46 = icmp eq i8 %45, 2
  %47 = and i1 %43, %46
  %48 = and i1 %40, %47
  br i1 %48, label %assert_end10, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %49 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %49(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.4, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %50 = load i64, i64* %21, align 8, !tbaa !25
  %51 = trunc i64 %50 to i32
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %53 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %53(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %54 = getelementptr inbounds i64, i64* %21, i64 1
  %55 = load i64, i64* %54, align 8, !tbaa !39
  %56 = trunc i64 %55 to i32
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %58 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %58(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %.not = icmp eq i64* %23, null
  br i1 %.not, label %if_end, label %if_then, !prof !41

if_then:                                          ; preds = %assert_end14
  %59 = load i64, i64* %23, align 8, !tbaa !42
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %60, 2
  %62 = getelementptr inbounds i64, i64* %23, i64 1
  %63 = load i64, i64* %62, align 8, !tbaa !56
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 1
  %66 = and i1 %61, %65
  br i1 %66, label %if_end, label %assert_fail15, !prof !5

if_end:                                           ; preds = %if_then, %assert_end14
  %67 = getelementptr inbounds %0, %0* %9, i64 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %assert_end18, label %assert_fail17, !prof !5

assert_fail15:                                    ; preds = %if_then
  %70 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %70(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_fail17:                                    ; preds = %if_end
  %71 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %71(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %if_end
  %72 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %assert_end20, label %assert_fail19, !prof !5

assert_fail19:                                    ; preds = %assert_end18
  %75 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %75(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %76 = getelementptr inbounds %0, %0* %14, i64 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %assert_end24, label %assert_fail21, !prof !5

assert_fail21:                                    ; preds = %assert_end20
  %79 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %79(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end20
  %80 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 2
  %81 = load i16, i16* %80, align 2
  %82 = icmp eq i16 %81, 1
  %83 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 1
  %84 = load i8, i8* %83, align 1
  %85 = icmp eq i8 %84, 32
  %86 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 0
  %87 = load i8, i8* %86, align 1
  %88 = icmp eq i8 %87, 2
  %89 = and i1 %85, %88
  %90 = and i1 %82, %89
  br i1 %90, label %assert_end26, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %91 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %91(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %92 = load i64, i64* %29, align 8, !tbaa !58
  %93 = trunc i64 %92 to i32
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %95 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %95(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %96 = getelementptr inbounds i64, i64* %29, i64 1
  %97 = load i64, i64* %96, align 8, !tbaa !72
  %98 = trunc i64 %97 to i32
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %100 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %100(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %.not41 = icmp eq i64* %31, null
  br i1 %.not41, label %if_end32, label %if_then31, !prof !41

if_then31:                                        ; preds = %assert_end30
  %101 = load i64, i64* %31, align 8, !tbaa !74
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %102, 2
  %104 = getelementptr inbounds i64, i64* %31, i64 1
  %105 = load i64, i64* %104, align 8, !tbaa !88
  %106 = trunc i64 %105 to i32
  %107 = icmp eq i32 %106, 1
  %108 = and i1 %103, %107
  br i1 %108, label %if_end32, label %assert_fail33, !prof !5

if_end32:                                         ; preds = %if_then31, %assert_end30
  %109 = getelementptr inbounds %0, %0* %14, i64 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %assert_end36, label %assert_fail35, !prof !5

assert_fail33:                                    ; preds = %if_then31
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %112(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.14, i64 0, i64 0))
  ret i32 -1

assert_fail35:                                    ; preds = %if_end32
  %113 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %113(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %if_end32
  %114 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %assert_end38, label %assert_fail37, !prof !5

assert_fail37:                                    ; preds = %assert_end36
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end38:                                     ; preds = %assert_end36
  %118 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %25, %119
  br i1 %120, label %assert_end40, label %assert_fail39, !prof !5

assert_fail39:                                    ; preds = %assert_end38
  %121 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %121(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %assert_end38
  tail call fastcc void @fused_reshape_1_compute_(i8* %27, i8* %19)
  ret i32 0
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #0

; Function Attrs: nofree noinline norecurse nounwind willreturn
define private fastcc void @fused_reshape_1_compute_(i8* noalias nocapture align 128 %0, i8* noalias nocapture readonly align 128 %1) unnamed_addr #1 {
entry:
  %2 = bitcast i8* %1 to <2 x float>*
  %3 = load <2 x float>, <2 x float>* %2, align 128, !tbaa !90
  %4 = bitcast i8* %0 to <2 x float>*
  store <2 x float> %3, <2 x float>* %4, align 128, !tbaa !103
  ret void
}

define dllexport i32 @fused_nn_dense_nn_bias_add_1(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 4
  br i1 %6, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %7(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %0**
  %9 = load %0*, %0** %8, align 8
  %10 = bitcast i8* %1 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !116
  %12 = getelementptr inbounds i8, i8* %0, i64 8
  %13 = bitcast i8* %12 to %0**
  %14 = load %0*, %0** %13, align 8
  %15 = getelementptr inbounds i8, i8* %1, i64 4
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !130
  %18 = getelementptr inbounds i8, i8* %0, i64 16
  %19 = bitcast i8* %18 to %0**
  %20 = load %0*, %0** %19, align 8
  %21 = getelementptr inbounds i8, i8* %1, i64 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !132
  %24 = getelementptr inbounds i8, i8* %0, i64 24
  %25 = bitcast i8* %24 to %0**
  %26 = load %0*, %0** %25, align 8
  %27 = getelementptr inbounds i8, i8* %1, i64 12
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4, !tbaa !135
  %30 = getelementptr inbounds %0, %0* %9, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %31, i64 128) ]
  %32 = getelementptr inbounds %0, %0* %9, i64 0, i32 4
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds %0, %0* %9, i64 0, i32 5
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %0, %0* %14, i64 0, i32 0
  %39 = load i8*, i8** %38, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %39, i64 128) ]
  %40 = getelementptr inbounds %0, %0* %14, i64 0, i32 4
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds %0, %0* %14, i64 0, i32 5
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds %0, %0* %20, i64 0, i32 0
  %45 = load i8*, i8** %44, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %45, i64 128) ]
  %46 = getelementptr inbounds %0, %0* %20, i64 0, i32 4
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds %0, %0* %20, i64 0, i32 5
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds %0, %0* %26, i64 0, i32 0
  %51 = load i8*, i8** %50, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %51, i64 128) ]
  %52 = getelementptr inbounds %0, %0* %26, i64 0, i32 4
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds %0, %0* %26, i64 0, i32 5
  %55 = load i64*, i64** %54, align 8
  switch i32 %11, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %56 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %56(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.19, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %17, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %57 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %57(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.20, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  switch i32 %23, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ]

assert_fail5:                                     ; preds = %assert_end4
  %58 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %58(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.21, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  switch i32 %29, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ]

assert_fail7:                                     ; preds = %assert_end6
  %59 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %59(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.22, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  %60 = getelementptr inbounds %0, %0* %9, i64 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %assert_end12, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %63 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %63(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end8
  %64 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 2
  %65 = load i16, i16* %64, align 2
  %66 = icmp eq i16 %65, 1
  %67 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 1
  %68 = load i8, i8* %67, align 1
  %69 = icmp eq i8 %68, 32
  %70 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 0
  %71 = load i8, i8* %70, align 1
  %72 = icmp eq i8 %71, 2
  %73 = and i1 %69, %72
  %74 = and i1 %66, %73
  br i1 %74, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %75 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %75(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.4, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %76 = load i64, i64* %33, align 8, !tbaa !137
  %77 = trunc i64 %76 to i32
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %79 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %79(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %80 = getelementptr inbounds i64, i64* %33, i64 1
  %81 = load i64, i64* %80, align 8, !tbaa !151
  %82 = trunc i64 %81 to i32
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %84 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %84(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %.not = icmp eq i64* %35, null
  br i1 %.not, label %if_end, label %if_then, !prof !41

if_then:                                          ; preds = %assert_end18
  %85 = load i64, i64* %35, align 8, !tbaa !153
  %86 = trunc i64 %85 to i32
  %87 = icmp eq i32 %86, 2
  %88 = getelementptr inbounds i64, i64* %35, i64 1
  %89 = load i64, i64* %88, align 8, !tbaa !167
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 1
  %92 = and i1 %87, %91
  br i1 %92, label %if_end, label %assert_fail19, !prof !5

if_end:                                           ; preds = %if_then, %assert_end18
  %93 = getelementptr inbounds %0, %0* %9, i64 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %assert_end22, label %assert_fail21, !prof !5

assert_fail19:                                    ; preds = %if_then
  %96 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %96(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_fail21:                                    ; preds = %if_end
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %97(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %if_end
  %98 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %101 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %101(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end22
  %102 = getelementptr inbounds %0, %0* %14, i64 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %assert_end28, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %105 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %105(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end24
  %106 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 2
  %107 = load i16, i16* %106, align 2
  %108 = icmp eq i16 %107, 1
  %109 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 1
  %110 = load i8, i8* %109, align 1
  %111 = icmp eq i8 %110, 32
  %112 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 0
  %113 = load i8, i8* %112, align 1
  %114 = icmp eq i8 %113, 2
  %115 = and i1 %111, %114
  %116 = and i1 %108, %115
  br i1 %116, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %118 = load i64, i64* %41, align 8, !tbaa !169
  %119 = trunc i64 %118 to i32
  %120 = icmp eq i32 %119, 3
  br i1 %120, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %121 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %121(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.23, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %122 = getelementptr inbounds i64, i64* %41, i64 1
  %123 = load i64, i64* %122, align 8, !tbaa !183
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %126 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %126(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %.not83 = icmp eq i64* %43, null
  br i1 %.not83, label %if_end36, label %if_then35, !prof !41

if_then35:                                        ; preds = %assert_end34
  %127 = load i64, i64* %43, align 8, !tbaa !185
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i32 %128, 2
  %130 = getelementptr inbounds i64, i64* %43, i64 1
  %131 = load i64, i64* %130, align 8, !tbaa !199
  %132 = trunc i64 %131 to i32
  %133 = icmp eq i32 %132, 1
  %134 = and i1 %129, %133
  br i1 %134, label %if_end36, label %assert_fail37, !prof !5

if_end36:                                         ; preds = %if_then35, %assert_end34
  %135 = getelementptr inbounds %0, %0* %14, i64 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %assert_end40, label %assert_fail39, !prof !5

assert_fail37:                                    ; preds = %if_then35
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %138(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.14, i64 0, i64 0))
  ret i32 -1

assert_fail39:                                    ; preds = %if_end36
  %139 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %139(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %if_end36
  %140 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %assert_end42, label %assert_fail41, !prof !5

assert_fail41:                                    ; preds = %assert_end40
  %143 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %143(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %assert_end40
  %144 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %37, %145
  br i1 %146, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %147 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %147(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %148 = getelementptr inbounds %0, %0* %20, i64 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %assert_end48, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %151 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %151(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.24, i64 0, i64 0))
  ret i32 -1

assert_end48:                                     ; preds = %assert_end44
  %152 = getelementptr inbounds %0, %0* %20, i64 0, i32 3, i32 2
  %153 = load i16, i16* %152, align 2
  %154 = icmp eq i16 %153, 1
  %155 = getelementptr inbounds %0, %0* %20, i64 0, i32 3, i32 1
  %156 = load i8, i8* %155, align 1
  %157 = icmp eq i8 %156, 32
  %158 = getelementptr inbounds %0, %0* %20, i64 0, i32 3, i32 0
  %159 = load i8, i8* %158, align 1
  %160 = icmp eq i8 %159, 2
  %161 = and i1 %157, %160
  %162 = and i1 %154, %161
  br i1 %162, label %assert_end50, label %assert_fail49, !prof !5

assert_fail49:                                    ; preds = %assert_end48
  %163 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %163(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.25, i64 0, i64 0))
  ret i32 -1

assert_end50:                                     ; preds = %assert_end48
  %164 = load i64, i64* %47, align 8, !tbaa !201
  %165 = trunc i64 %164 to i32
  %166 = icmp eq i32 %165, 3
  br i1 %166, label %assert_end52, label %assert_fail51, !prof !5

assert_fail51:                                    ; preds = %assert_end50
  %167 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %167(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_end52:                                     ; preds = %assert_end50
  %.not84 = icmp eq i64* %49, null
  br i1 %.not84, label %if_end54, label %if_then53, !prof !41

if_then53:                                        ; preds = %assert_end52
  %168 = load i64, i64* %49, align 8, !tbaa !215
  %169 = trunc i64 %168 to i32
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %if_end54, label %assert_fail55, !prof !5

if_end54:                                         ; preds = %if_then53, %assert_end52
  %171 = getelementptr inbounds %0, %0* %20, i64 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %assert_end58, label %assert_fail57, !prof !5

assert_fail55:                                    ; preds = %if_then53
  %174 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %174(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_fail57:                                    ; preds = %if_end54
  %175 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %175(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_end58:                                     ; preds = %if_end54
  %176 = getelementptr inbounds %0, %0* %20, i64 0, i32 1, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %assert_end60, label %assert_fail59, !prof !5

assert_fail59:                                    ; preds = %assert_end58
  %179 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %179(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.29, i64 0, i64 0))
  ret i32 -1

assert_end60:                                     ; preds = %assert_end58
  %180 = getelementptr inbounds %0, %0* %20, i64 0, i32 1, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %37, %181
  br i1 %182, label %assert_end62, label %assert_fail61, !prof !5

assert_fail61:                                    ; preds = %assert_end60
  %183 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %183(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.30, i64 0, i64 0))
  ret i32 -1

assert_end62:                                     ; preds = %assert_end60
  %184 = getelementptr inbounds %0, %0* %26, i64 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %assert_end66, label %assert_fail63, !prof !5

assert_fail63:                                    ; preds = %assert_end62
  %187 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %187(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.31, i64 0, i64 0))
  ret i32 -1

assert_end66:                                     ; preds = %assert_end62
  %188 = getelementptr inbounds %0, %0* %26, i64 0, i32 3, i32 2
  %189 = load i16, i16* %188, align 2
  %190 = icmp eq i16 %189, 1
  %191 = getelementptr inbounds %0, %0* %26, i64 0, i32 3, i32 1
  %192 = load i8, i8* %191, align 1
  %193 = icmp eq i8 %192, 32
  %194 = getelementptr inbounds %0, %0* %26, i64 0, i32 3, i32 0
  %195 = load i8, i8* %194, align 1
  %196 = icmp eq i8 %195, 2
  %197 = and i1 %193, %196
  %198 = and i1 %190, %197
  br i1 %198, label %assert_end68, label %assert_fail67, !prof !5

assert_fail67:                                    ; preds = %assert_end66
  %199 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %199(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.32, i64 0, i64 0))
  ret i32 -1

assert_end68:                                     ; preds = %assert_end66
  %200 = load i64, i64* %53, align 8, !tbaa !229
  %201 = trunc i64 %200 to i32
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %assert_end70, label %assert_fail69, !prof !5

assert_fail69:                                    ; preds = %assert_end68
  %203 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %203(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.33, i64 0, i64 0))
  ret i32 -1

assert_end70:                                     ; preds = %assert_end68
  %204 = getelementptr inbounds i64, i64* %53, i64 1
  %205 = load i64, i64* %204, align 8, !tbaa !243
  %206 = trunc i64 %205 to i32
  %207 = icmp eq i32 %206, 3
  br i1 %207, label %assert_end72, label %assert_fail71, !prof !5

assert_fail71:                                    ; preds = %assert_end70
  %208 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %208(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.34, i64 0, i64 0))
  ret i32 -1

assert_end72:                                     ; preds = %assert_end70
  %.not85 = icmp eq i64* %55, null
  br i1 %.not85, label %if_end74, label %if_then73, !prof !41

if_then73:                                        ; preds = %assert_end72
  %209 = load i64, i64* %55, align 8, !tbaa !245
  %210 = trunc i64 %209 to i32
  %211 = icmp eq i32 %210, 3
  %212 = getelementptr inbounds i64, i64* %55, i64 1
  %213 = load i64, i64* %212, align 8, !tbaa !259
  %214 = trunc i64 %213 to i32
  %215 = icmp eq i32 %214, 1
  %216 = and i1 %211, %215
  br i1 %216, label %if_end74, label %assert_fail75, !prof !5

if_end74:                                         ; preds = %if_then73, %assert_end72
  %217 = getelementptr inbounds %0, %0* %26, i64 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %assert_end78, label %assert_fail77, !prof !5

assert_fail75:                                    ; preds = %if_then73
  %220 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %220(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.35, i64 0, i64 0))
  ret i32 -1

assert_fail77:                                    ; preds = %if_end74
  %221 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %221(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.36, i64 0, i64 0))
  ret i32 -1

assert_end78:                                     ; preds = %if_end74
  %222 = getelementptr inbounds %0, %0* %26, i64 0, i32 1, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %assert_end80, label %assert_fail79, !prof !5

assert_fail79:                                    ; preds = %assert_end78
  %225 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %225(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.37, i64 0, i64 0))
  ret i32 -1

assert_end80:                                     ; preds = %assert_end78
  %226 = getelementptr inbounds %0, %0* %26, i64 0, i32 1, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %37, %227
  br i1 %228, label %assert_end82, label %assert_fail81, !prof !5

assert_fail81:                                    ; preds = %assert_end80
  %229 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %229(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.38, i64 0, i64 0))
  ret i32 -1

assert_end82:                                     ; preds = %assert_end80
  tail call fastcc void @fused_nn_dense_nn_bias_add_1_compute_(i8* %39, i8* %31, i8* %51, i8* %45)
  ret i32 0
}

; Function Attrs: nofree noinline nounwind
define private fastcc void @fused_nn_dense_nn_bias_add_1_compute_(i8* noalias nocapture readonly align 128 %0, i8* noalias nocapture readonly align 128 %1, i8* noalias nocapture align 128 %2, i8* noalias nocapture readonly align 128 %3) unnamed_addr #2 {
entry:
  %4 = bitcast i8* %0 to float*
  %5 = load float, float* %4, align 128, !tbaa !261
  %.sroa.0.0.vec.insert = insertelement <3 x float> undef, float %5, i32 0
  %6 = getelementptr inbounds i8, i8* %0, i64 8
  %7 = bitcast i8* %6 to float*
  %8 = load float, float* %7, align 8, !tbaa !261
  %.sroa.0.4.vec.insert = insertelement <3 x float> %.sroa.0.0.vec.insert, float %8, i32 1
  %9 = getelementptr inbounds i8, i8* %0, i64 16
  %10 = bitcast i8* %9 to float*
  %11 = load float, float* %10, align 16, !tbaa !261
  %.sroa.0.8.vec.insert = insertelement <3 x float> %.sroa.0.4.vec.insert, float %11, i32 2
  %12 = getelementptr inbounds i8, i8* %0, i64 4
  %13 = bitcast i8* %12 to float*
  %14 = load float, float* %13, align 4, !tbaa !261
  %.sroa.4.12.vec.insert = insertelement <3 x float> undef, float %14, i32 0
  %15 = getelementptr inbounds i8, i8* %0, i64 12
  %16 = bitcast i8* %15 to float*
  %17 = load float, float* %16, align 4, !tbaa !261
  %.sroa.4.16.vec.insert = insertelement <3 x float> %.sroa.4.12.vec.insert, float %17, i32 1
  %18 = getelementptr inbounds i8, i8* %0, i64 20
  %19 = bitcast i8* %18 to float*
  %20 = load float, float* %19, align 4, !tbaa !261
  %.sroa.4.20.vec.insert = insertelement <3 x float> %.sroa.4.16.vec.insert, float %20, i32 2
  %21 = bitcast i8* %1 to float*
  %22 = load float, float* %21, align 128, !tbaa !264
  %23 = insertelement <3 x float> undef, float %22, i32 0
  %24 = shufflevector <3 x float> %23, <3 x float> undef, <3 x i32> zeroinitializer
  %25 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %24, <3 x float> %.sroa.0.8.vec.insert, <3 x float> zeroinitializer)
  %26 = getelementptr inbounds i8, i8* %1, i64 4
  %27 = bitcast i8* %26 to float*
  %28 = load float, float* %27, align 4, !tbaa !264
  %29 = insertelement <3 x float> undef, float %28, i32 0
  %30 = shufflevector <3 x float> %29, <3 x float> undef, <3 x i32> zeroinitializer
  %31 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %30, <3 x float> %.sroa.4.20.vec.insert, <3 x float> %25)
  %32 = bitcast i8* %3 to <3 x float>*
  %33 = load <3 x float>, <3 x float>* %32, align 128, !tbaa !267
  %34 = fadd <3 x float> %31, %33
  %35 = bitcast i8* %2 to <3 x float>*
  store <3 x float> %34, <3 x float>* %35, align 128, !tbaa !279
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #3

define dllexport i32 @fused_reshape(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %7(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.39, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %0**
  %9 = load %0*, %0** %8, align 8
  %10 = bitcast i8* %1 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !291
  %12 = getelementptr inbounds i8, i8* %0, i64 8
  %13 = bitcast i8* %12 to %0**
  %14 = load %0*, %0** %13, align 8
  %15 = getelementptr inbounds i8, i8* %1, i64 4
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !305
  %18 = getelementptr inbounds %0, %0* %9, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %19, i64 128) ]
  %20 = getelementptr inbounds %0, %0* %9, i64 0, i32 4
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds %0, %0* %9, i64 0, i32 5
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %0, %0* %14, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %27, i64 128) ]
  %28 = getelementptr inbounds %0, %0* %14, i64 0, i32 4
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds %0, %0* %14, i64 0, i32 5
  %31 = load i64*, i64** %30, align 8
  switch i32 %11, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %32 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %32(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.40, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %17, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %33 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %33(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.41, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %34 = getelementptr inbounds %0, %0* %9, i64 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %assert_end8, label %assert_fail5, !prof !5

assert_fail5:                                     ; preds = %assert_end4
  %37 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %37(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end4
  %38 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 2
  %39 = load i16, i16* %38, align 2
  %40 = icmp eq i16 %39, 1
  %41 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 1
  %42 = load i8, i8* %41, align 1
  %43 = icmp eq i8 %42, 32
  %44 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 0
  %45 = load i8, i8* %44, align 1
  %46 = icmp eq i8 %45, 2
  %47 = and i1 %43, %46
  %48 = and i1 %40, %47
  br i1 %48, label %assert_end10, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %49 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %49(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.4, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %50 = load i64, i64* %21, align 8, !tbaa !307
  %51 = trunc i64 %50 to i32
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %53 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %53(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %54 = getelementptr inbounds i64, i64* %21, i64 1
  %55 = load i64, i64* %54, align 8, !tbaa !321
  %56 = trunc i64 %55 to i32
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %58 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %58(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.42, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %.not = icmp eq i64* %23, null
  br i1 %.not, label %if_end, label %if_then, !prof !41

if_then:                                          ; preds = %assert_end14
  %59 = load i64, i64* %23, align 8, !tbaa !323
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %60, 3
  %62 = getelementptr inbounds i64, i64* %23, i64 1
  %63 = load i64, i64* %62, align 8, !tbaa !337
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 1
  %66 = and i1 %61, %65
  br i1 %66, label %if_end, label %assert_fail15, !prof !5

if_end:                                           ; preds = %if_then, %assert_end14
  %67 = getelementptr inbounds %0, %0* %9, i64 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %assert_end18, label %assert_fail17, !prof !5

assert_fail15:                                    ; preds = %if_then
  %70 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %70(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.43, i64 0, i64 0))
  ret i32 -1

assert_fail17:                                    ; preds = %if_end
  %71 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %71(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %if_end
  %72 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %assert_end20, label %assert_fail19, !prof !5

assert_fail19:                                    ; preds = %assert_end18
  %75 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %75(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %76 = getelementptr inbounds %0, %0* %14, i64 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %assert_end24, label %assert_fail21, !prof !5

assert_fail21:                                    ; preds = %assert_end20
  %79 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %79(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end20
  %80 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 2
  %81 = load i16, i16* %80, align 2
  %82 = icmp eq i16 %81, 1
  %83 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 1
  %84 = load i8, i8* %83, align 1
  %85 = icmp eq i8 %84, 32
  %86 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 0
  %87 = load i8, i8* %86, align 1
  %88 = icmp eq i8 %87, 2
  %89 = and i1 %85, %88
  %90 = and i1 %82, %89
  br i1 %90, label %assert_end26, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %91 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %91(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %92 = load i64, i64* %29, align 8, !tbaa !339
  %93 = trunc i64 %92 to i32
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %95 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %95(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %96 = getelementptr inbounds i64, i64* %29, i64 1
  %97 = load i64, i64* %96, align 8, !tbaa !353
  %98 = trunc i64 %97 to i32
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %100 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %100(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.44, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %.not41 = icmp eq i64* %31, null
  br i1 %.not41, label %if_end32, label %if_then31, !prof !41

if_then31:                                        ; preds = %assert_end30
  %101 = load i64, i64* %31, align 8, !tbaa !355
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %102, 3
  %104 = getelementptr inbounds i64, i64* %31, i64 1
  %105 = load i64, i64* %104, align 8, !tbaa !369
  %106 = trunc i64 %105 to i32
  %107 = icmp eq i32 %106, 1
  %108 = and i1 %103, %107
  br i1 %108, label %if_end32, label %assert_fail33, !prof !5

if_end32:                                         ; preds = %if_then31, %assert_end30
  %109 = getelementptr inbounds %0, %0* %14, i64 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %assert_end36, label %assert_fail35, !prof !5

assert_fail33:                                    ; preds = %if_then31
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %112(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.45, i64 0, i64 0))
  ret i32 -1

assert_fail35:                                    ; preds = %if_end32
  %113 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %113(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %if_end32
  %114 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %assert_end38, label %assert_fail37, !prof !5

assert_fail37:                                    ; preds = %assert_end36
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end38:                                     ; preds = %assert_end36
  %118 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %25, %119
  br i1 %120, label %assert_end40, label %assert_fail39, !prof !5

assert_fail39:                                    ; preds = %assert_end38
  %121 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %121(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %assert_end38
  tail call fastcc void @fused_reshape_compute_(i8* %27, i8* %19)
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nounwind willreturn
define private fastcc void @fused_reshape_compute_(i8* noalias nocapture align 128 %0, i8* noalias nocapture readonly align 128 %1) unnamed_addr #1 {
entry:
  %2 = bitcast i8* %1 to <3 x float>*
  %3 = load <3 x float>, <3 x float>* %2, align 128, !tbaa !371
  %4 = bitcast i8* %0 to <3 x float>*
  store <3 x float> %3, <3 x float>* %4, align 128, !tbaa !383
  ret void
}

define dllexport i32 @fused_nn_dense_nn_bias_add(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 4
  br i1 %6, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %7(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.46, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %0**
  %9 = load %0*, %0** %8, align 8
  %10 = bitcast i8* %1 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !395
  %12 = getelementptr inbounds i8, i8* %0, i64 8
  %13 = bitcast i8* %12 to %0**
  %14 = load %0*, %0** %13, align 8
  %15 = getelementptr inbounds i8, i8* %1, i64 4
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !409
  %18 = getelementptr inbounds i8, i8* %0, i64 16
  %19 = bitcast i8* %18 to %0**
  %20 = load %0*, %0** %19, align 8
  %21 = getelementptr inbounds i8, i8* %1, i64 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !411
  %24 = getelementptr inbounds i8, i8* %0, i64 24
  %25 = bitcast i8* %24 to %0**
  %26 = load %0*, %0** %25, align 8
  %27 = getelementptr inbounds i8, i8* %1, i64 12
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4, !tbaa !414
  %30 = getelementptr inbounds %0, %0* %9, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %31, i64 128) ]
  %32 = getelementptr inbounds %0, %0* %9, i64 0, i32 4
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds %0, %0* %9, i64 0, i32 5
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %0, %0* %14, i64 0, i32 0
  %39 = load i8*, i8** %38, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %39, i64 128) ]
  %40 = getelementptr inbounds %0, %0* %14, i64 0, i32 4
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds %0, %0* %14, i64 0, i32 5
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds %0, %0* %20, i64 0, i32 0
  %45 = load i8*, i8** %44, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %45, i64 128) ]
  %46 = getelementptr inbounds %0, %0* %20, i64 0, i32 4
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds %0, %0* %20, i64 0, i32 5
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds %0, %0* %26, i64 0, i32 0
  %51 = load i8*, i8** %50, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %51, i64 128) ]
  %52 = getelementptr inbounds %0, %0* %26, i64 0, i32 4
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds %0, %0* %26, i64 0, i32 5
  %55 = load i64*, i64** %54, align 8
  switch i32 %11, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %56 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %56(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.47, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %17, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %57 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %57(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.48, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  switch i32 %23, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ]

assert_fail5:                                     ; preds = %assert_end4
  %58 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %58(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.49, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  switch i32 %29, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ]

assert_fail7:                                     ; preds = %assert_end6
  %59 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %59(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.50, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  %60 = getelementptr inbounds %0, %0* %9, i64 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %assert_end12, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %63 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %63(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end8
  %64 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 2
  %65 = load i16, i16* %64, align 2
  %66 = icmp eq i16 %65, 1
  %67 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 1
  %68 = load i8, i8* %67, align 1
  %69 = icmp eq i8 %68, 32
  %70 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 0
  %71 = load i8, i8* %70, align 1
  %72 = icmp eq i8 %71, 2
  %73 = and i1 %69, %72
  %74 = and i1 %66, %73
  br i1 %74, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %75 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %75(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.4, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %76 = load i64, i64* %33, align 8, !tbaa !416
  %77 = trunc i64 %76 to i32
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %79 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %79(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %80 = getelementptr inbounds i64, i64* %33, i64 1
  %81 = load i64, i64* %80, align 8, !tbaa !430
  %82 = trunc i64 %81 to i32
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %84 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %84(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.42, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %.not = icmp eq i64* %35, null
  br i1 %.not, label %if_end, label %if_then, !prof !41

if_then:                                          ; preds = %assert_end18
  %85 = load i64, i64* %35, align 8, !tbaa !432
  %86 = trunc i64 %85 to i32
  %87 = icmp eq i32 %86, 3
  %88 = getelementptr inbounds i64, i64* %35, i64 1
  %89 = load i64, i64* %88, align 8, !tbaa !446
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 1
  %92 = and i1 %87, %91
  br i1 %92, label %if_end, label %assert_fail19, !prof !5

if_end:                                           ; preds = %if_then, %assert_end18
  %93 = getelementptr inbounds %0, %0* %9, i64 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %assert_end22, label %assert_fail21, !prof !5

assert_fail19:                                    ; preds = %if_then
  %96 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %96(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.43, i64 0, i64 0))
  ret i32 -1

assert_fail21:                                    ; preds = %if_end
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %97(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %if_end
  %98 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %101 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %101(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end22
  %102 = getelementptr inbounds %0, %0* %14, i64 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %assert_end28, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %105 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %105(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end24
  %106 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 2
  %107 = load i16, i16* %106, align 2
  %108 = icmp eq i16 %107, 1
  %109 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 1
  %110 = load i8, i8* %109, align 1
  %111 = icmp eq i8 %110, 32
  %112 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 0
  %113 = load i8, i8* %112, align 1
  %114 = icmp eq i8 %113, 2
  %115 = and i1 %111, %114
  %116 = and i1 %108, %115
  br i1 %116, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %118 = load i64, i64* %41, align 8, !tbaa !448
  %119 = trunc i64 %118 to i32
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %121 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %121(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %122 = getelementptr inbounds i64, i64* %41, i64 1
  %123 = load i64, i64* %122, align 8, !tbaa !462
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %124, 3
  br i1 %125, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %126 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %126(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.44, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %.not83 = icmp eq i64* %43, null
  br i1 %.not83, label %if_end36, label %if_then35, !prof !41

if_then35:                                        ; preds = %assert_end34
  %127 = load i64, i64* %43, align 8, !tbaa !464
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i32 %128, 3
  %130 = getelementptr inbounds i64, i64* %43, i64 1
  %131 = load i64, i64* %130, align 8, !tbaa !478
  %132 = trunc i64 %131 to i32
  %133 = icmp eq i32 %132, 1
  %134 = and i1 %129, %133
  br i1 %134, label %if_end36, label %assert_fail37, !prof !5

if_end36:                                         ; preds = %if_then35, %assert_end34
  %135 = getelementptr inbounds %0, %0* %14, i64 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %assert_end40, label %assert_fail39, !prof !5

assert_fail37:                                    ; preds = %if_then35
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %138(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.45, i64 0, i64 0))
  ret i32 -1

assert_fail39:                                    ; preds = %if_end36
  %139 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %139(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %if_end36
  %140 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %assert_end42, label %assert_fail41, !prof !5

assert_fail41:                                    ; preds = %assert_end40
  %143 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %143(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %assert_end40
  %144 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %37, %145
  br i1 %146, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %147 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %147(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %148 = getelementptr inbounds %0, %0* %20, i64 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %assert_end48, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %151 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %151(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.24, i64 0, i64 0))
  ret i32 -1

assert_end48:                                     ; preds = %assert_end44
  %152 = getelementptr inbounds %0, %0* %20, i64 0, i32 3, i32 2
  %153 = load i16, i16* %152, align 2
  %154 = icmp eq i16 %153, 1
  %155 = getelementptr inbounds %0, %0* %20, i64 0, i32 3, i32 1
  %156 = load i8, i8* %155, align 1
  %157 = icmp eq i8 %156, 32
  %158 = getelementptr inbounds %0, %0* %20, i64 0, i32 3, i32 0
  %159 = load i8, i8* %158, align 1
  %160 = icmp eq i8 %159, 2
  %161 = and i1 %157, %160
  %162 = and i1 %154, %161
  br i1 %162, label %assert_end50, label %assert_fail49, !prof !5

assert_fail49:                                    ; preds = %assert_end48
  %163 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %163(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.25, i64 0, i64 0))
  ret i32 -1

assert_end50:                                     ; preds = %assert_end48
  %164 = load i64, i64* %47, align 8, !tbaa !480
  %165 = trunc i64 %164 to i32
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %assert_end52, label %assert_fail51, !prof !5

assert_fail51:                                    ; preds = %assert_end50
  %167 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %167(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.51, i64 0, i64 0))
  ret i32 -1

assert_end52:                                     ; preds = %assert_end50
  %.not84 = icmp eq i64* %49, null
  br i1 %.not84, label %if_end54, label %if_then53, !prof !41

if_then53:                                        ; preds = %assert_end52
  %168 = load i64, i64* %49, align 8, !tbaa !494
  %169 = trunc i64 %168 to i32
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %if_end54, label %assert_fail55, !prof !5

if_end54:                                         ; preds = %if_then53, %assert_end52
  %171 = getelementptr inbounds %0, %0* %20, i64 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %assert_end58, label %assert_fail57, !prof !5

assert_fail55:                                    ; preds = %if_then53
  %174 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %174(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_fail57:                                    ; preds = %if_end54
  %175 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %175(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_end58:                                     ; preds = %if_end54
  %176 = getelementptr inbounds %0, %0* %20, i64 0, i32 1, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %assert_end60, label %assert_fail59, !prof !5

assert_fail59:                                    ; preds = %assert_end58
  %179 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %179(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.29, i64 0, i64 0))
  ret i32 -1

assert_end60:                                     ; preds = %assert_end58
  %180 = getelementptr inbounds %0, %0* %20, i64 0, i32 1, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %37, %181
  br i1 %182, label %assert_end62, label %assert_fail61, !prof !5

assert_fail61:                                    ; preds = %assert_end60
  %183 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %183(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.30, i64 0, i64 0))
  ret i32 -1

assert_end62:                                     ; preds = %assert_end60
  %184 = getelementptr inbounds %0, %0* %26, i64 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %assert_end66, label %assert_fail63, !prof !5

assert_fail63:                                    ; preds = %assert_end62
  %187 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %187(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.31, i64 0, i64 0))
  ret i32 -1

assert_end66:                                     ; preds = %assert_end62
  %188 = getelementptr inbounds %0, %0* %26, i64 0, i32 3, i32 2
  %189 = load i16, i16* %188, align 2
  %190 = icmp eq i16 %189, 1
  %191 = getelementptr inbounds %0, %0* %26, i64 0, i32 3, i32 1
  %192 = load i8, i8* %191, align 1
  %193 = icmp eq i8 %192, 32
  %194 = getelementptr inbounds %0, %0* %26, i64 0, i32 3, i32 0
  %195 = load i8, i8* %194, align 1
  %196 = icmp eq i8 %195, 2
  %197 = and i1 %193, %196
  %198 = and i1 %190, %197
  br i1 %198, label %assert_end68, label %assert_fail67, !prof !5

assert_fail67:                                    ; preds = %assert_end66
  %199 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %199(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.32, i64 0, i64 0))
  ret i32 -1

assert_end68:                                     ; preds = %assert_end66
  %200 = load i64, i64* %53, align 8, !tbaa !508
  %201 = trunc i64 %200 to i32
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %assert_end70, label %assert_fail69, !prof !5

assert_fail69:                                    ; preds = %assert_end68
  %203 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %203(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.33, i64 0, i64 0))
  ret i32 -1

assert_end70:                                     ; preds = %assert_end68
  %204 = getelementptr inbounds i64, i64* %53, i64 1
  %205 = load i64, i64* %204, align 8, !tbaa !522
  %206 = trunc i64 %205 to i32
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %assert_end72, label %assert_fail71, !prof !5

assert_fail71:                                    ; preds = %assert_end70
  %208 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %208(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.52, i64 0, i64 0))
  ret i32 -1

assert_end72:                                     ; preds = %assert_end70
  %.not85 = icmp eq i64* %55, null
  br i1 %.not85, label %if_end74, label %if_then73, !prof !41

if_then73:                                        ; preds = %assert_end72
  %209 = load i64, i64* %55, align 8, !tbaa !524
  %210 = trunc i64 %209 to i32
  %211 = icmp eq i32 %210, 1
  %212 = getelementptr inbounds i64, i64* %55, i64 1
  %213 = load i64, i64* %212, align 8, !tbaa !538
  %214 = trunc i64 %213 to i32
  %215 = icmp eq i32 %214, 1
  %216 = and i1 %211, %215
  br i1 %216, label %if_end74, label %assert_fail75, !prof !5

if_end74:                                         ; preds = %if_then73, %assert_end72
  %217 = getelementptr inbounds %0, %0* %26, i64 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %assert_end78, label %assert_fail77, !prof !5

assert_fail75:                                    ; preds = %if_then73
  %220 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %220(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.53, i64 0, i64 0))
  ret i32 -1

assert_fail77:                                    ; preds = %if_end74
  %221 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %221(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.36, i64 0, i64 0))
  ret i32 -1

assert_end78:                                     ; preds = %if_end74
  %222 = getelementptr inbounds %0, %0* %26, i64 0, i32 1, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %assert_end80, label %assert_fail79, !prof !5

assert_fail79:                                    ; preds = %assert_end78
  %225 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %225(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.37, i64 0, i64 0))
  ret i32 -1

assert_end80:                                     ; preds = %assert_end78
  %226 = getelementptr inbounds %0, %0* %26, i64 0, i32 1, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %37, %227
  br i1 %228, label %assert_end82, label %assert_fail81, !prof !5

assert_fail81:                                    ; preds = %assert_end80
  %229 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %229(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.38, i64 0, i64 0))
  ret i32 -1

assert_end82:                                     ; preds = %assert_end80
  tail call fastcc void @fused_nn_dense_nn_bias_add_compute_(i8* %39, i8* %31, i8* %51, i8* %45)
  ret i32 0
}

; Function Attrs: nofree noinline nounwind
define private fastcc void @fused_nn_dense_nn_bias_add_compute_(i8* noalias nocapture readonly align 128 %0, i8* noalias nocapture readonly align 128 %1, i8* noalias nocapture align 128 %2, i8* noalias nocapture readonly align 128 %3) unnamed_addr #2 {
entry:
  %.sroa.0.0..sroa_cast = bitcast i8* %0 to float*
  %.sroa.0.0.copyload = load float, float* %.sroa.0.0..sroa_cast, align 128
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 4
  %.sroa.2.0..sroa_cast = bitcast i8* %.sroa.2.0..sroa_idx to float*
  %.sroa.2.0.copyload = load float, float* %.sroa.2.0..sroa_cast, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 8
  %.sroa.3.0..sroa_cast = bitcast i8* %.sroa.3.0..sroa_idx to float*
  %.sroa.3.0.copyload = load float, float* %.sroa.3.0..sroa_cast, align 8
  %4 = bitcast i8* %1 to float*
  %5 = load float, float* %4, align 128, !tbaa !540
  %6 = tail call float @llvm.fmuladd.f32(float %5, float %.sroa.0.0.copyload, float 0.000000e+00)
  %7 = getelementptr inbounds i8, i8* %1, i64 4
  %8 = bitcast i8* %7 to float*
  %9 = load float, float* %8, align 4, !tbaa !540
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %.sroa.2.0.copyload, float %6)
  %11 = getelementptr inbounds i8, i8* %1, i64 8
  %12 = bitcast i8* %11 to float*
  %13 = load float, float* %12, align 8, !tbaa !540
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %.sroa.3.0.copyload, float %10)
  %15 = bitcast i8* %3 to float*
  %16 = load float, float* %15, align 128, !tbaa !543
  %17 = fadd float %14, %16
  %18 = bitcast i8* %2 to float*
  store float %17, float* %18, align 128, !tbaa !557
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { nofree nosync nounwind willreturn }
attributes #1 = { nofree noinline norecurse nounwind willreturn }
attributes #2 = { nofree noinline nounwind }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "TVM", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, dwoId: 1)
!1 = !DIFile(filename: "model.tvm", directory: "/tmp/")
!2 = !{}
!3 = !{i32 2, !"tvm_target", !"llvm"}
!4 = !{i32 4, !"Debug Info Version", i32 3}
!5 = !{!"branch_weights", i32 1048576, i32 1}
!6 = !{!7, !7, i64 0}
!7 = !{!"ctx_ptr", !8, i64 0}
!8 = !{!"tvm-tbaa"}
!9 = !{!10, !10, i64 0}
!10 = !{!"0x5595b4b85680.w1.b0", !11, i64 0}
!11 = !{!"0x5595b4b85680.w2.b0", !12, i64 0}
!12 = !{!"0x5595b4b85680.w4.b0", !13, i64 0}
!13 = !{!"0x5595b4b85680.w8.b0", !14, i64 0}
!14 = !{!"0x5595b4b85680.w16.b0", !15, i64 0}
!15 = !{!"0x5595b4b85680.w32.b0", !16, i64 0}
!16 = !{!"0x5595b4b85680.w64.b0", !17, i64 0}
!17 = !{!"0x5595b4b85680.w128.b0", !18, i64 0}
!18 = !{!"0x5595b4b85680.w256.b0", !19, i64 0}
!19 = !{!"0x5595b4b85680.w512.b0", !20, i64 0}
!20 = !{!"0x5595b4b85680.w1024.b0", !21, i64 0}
!21 = !{!"i8", !22, i64 0}
!22 = !{!"0x5595b4b85680", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x5595b4b85680.w1.b1", !11, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"0x5595b4b8a6d0.w1.b0", !27, i64 0}
!27 = !{!"0x5595b4b8a6d0.w2.b0", !28, i64 0}
!28 = !{!"0x5595b4b8a6d0.w4.b0", !29, i64 0}
!29 = !{!"0x5595b4b8a6d0.w8.b0", !30, i64 0}
!30 = !{!"0x5595b4b8a6d0.w16.b0", !31, i64 0}
!31 = !{!"0x5595b4b8a6d0.w32.b0", !32, i64 0}
!32 = !{!"0x5595b4b8a6d0.w64.b0", !33, i64 0}
!33 = !{!"0x5595b4b8a6d0.w128.b0", !34, i64 0}
!34 = !{!"0x5595b4b8a6d0.w256.b0", !35, i64 0}
!35 = !{!"0x5595b4b8a6d0.w512.b0", !36, i64 0}
!36 = !{!"0x5595b4b8a6d0.w1024.b0", !37, i64 0}
!37 = !{!"i64", !38, i64 0}
!38 = !{!"0x5595b4b8a6d0", !8, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"0x5595b4b8a6d0.w1.b1", !27, i64 0}
!41 = !{!"branch_weights", i32 1, i32 1048576}
!42 = !{!43, !43, i64 0}
!43 = !{!"0x5595b4b886c0.w1.b0", !44, i64 0}
!44 = !{!"0x5595b4b886c0.w2.b0", !45, i64 0}
!45 = !{!"0x5595b4b886c0.w4.b0", !46, i64 0}
!46 = !{!"0x5595b4b886c0.w8.b0", !47, i64 0}
!47 = !{!"0x5595b4b886c0.w16.b0", !48, i64 0}
!48 = !{!"0x5595b4b886c0.w32.b0", !49, i64 0}
!49 = !{!"0x5595b4b886c0.w64.b0", !50, i64 0}
!50 = !{!"0x5595b4b886c0.w128.b0", !51, i64 0}
!51 = !{!"0x5595b4b886c0.w256.b0", !52, i64 0}
!52 = !{!"0x5595b4b886c0.w512.b0", !53, i64 0}
!53 = !{!"0x5595b4b886c0.w1024.b0", !54, i64 0}
!54 = !{!"i64", !55, i64 0}
!55 = !{!"0x5595b4b886c0", !8, i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"0x5595b4b886c0.w1.b1", !44, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"0x5595b4b90750.w1.b0", !60, i64 0}
!60 = !{!"0x5595b4b90750.w2.b0", !61, i64 0}
!61 = !{!"0x5595b4b90750.w4.b0", !62, i64 0}
!62 = !{!"0x5595b4b90750.w8.b0", !63, i64 0}
!63 = !{!"0x5595b4b90750.w16.b0", !64, i64 0}
!64 = !{!"0x5595b4b90750.w32.b0", !65, i64 0}
!65 = !{!"0x5595b4b90750.w64.b0", !66, i64 0}
!66 = !{!"0x5595b4b90750.w128.b0", !67, i64 0}
!67 = !{!"0x5595b4b90750.w256.b0", !68, i64 0}
!68 = !{!"0x5595b4b90750.w512.b0", !69, i64 0}
!69 = !{!"0x5595b4b90750.w1024.b0", !70, i64 0}
!70 = !{!"i64", !71, i64 0}
!71 = !{!"0x5595b4b90750", !8, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"0x5595b4b90750.w1.b1", !60, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"0x5595b4b90bc0.w1.b0", !76, i64 0}
!76 = !{!"0x5595b4b90bc0.w2.b0", !77, i64 0}
!77 = !{!"0x5595b4b90bc0.w4.b0", !78, i64 0}
!78 = !{!"0x5595b4b90bc0.w8.b0", !79, i64 0}
!79 = !{!"0x5595b4b90bc0.w16.b0", !80, i64 0}
!80 = !{!"0x5595b4b90bc0.w32.b0", !81, i64 0}
!81 = !{!"0x5595b4b90bc0.w64.b0", !82, i64 0}
!82 = !{!"0x5595b4b90bc0.w128.b0", !83, i64 0}
!83 = !{!"0x5595b4b90bc0.w256.b0", !84, i64 0}
!84 = !{!"0x5595b4b90bc0.w512.b0", !85, i64 0}
!85 = !{!"0x5595b4b90bc0.w1024.b0", !86, i64 0}
!86 = !{!"i64", !87, i64 0}
!87 = !{!"0x5595b4b90bc0", !8, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"0x5595b4b90bc0.w1.b1", !76, i64 0}
!90 = !{!91, !91, i64 0}
!91 = !{!"0x5595b4b79ea0.w2.b0", !92, i64 0}
!92 = !{!"0x5595b4b79ea0.w4.b0", !93, i64 0}
!93 = !{!"0x5595b4b79ea0.w8.b0", !94, i64 0}
!94 = !{!"0x5595b4b79ea0.w16.b0", !95, i64 0}
!95 = !{!"0x5595b4b79ea0.w32.b0", !96, i64 0}
!96 = !{!"0x5595b4b79ea0.w64.b0", !97, i64 0}
!97 = !{!"0x5595b4b79ea0.w128.b0", !98, i64 0}
!98 = !{!"0x5595b4b79ea0.w256.b0", !99, i64 0}
!99 = !{!"0x5595b4b79ea0.w512.b0", !100, i64 0}
!100 = !{!"0x5595b4b79ea0.w1024.b0", !101, i64 0}
!101 = !{!"i8", !102, i64 0}
!102 = !{!"0x5595b4b79ea0", !8, i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"0x5595b4b77340.w2.b0", !105, i64 0}
!105 = !{!"0x5595b4b77340.w4.b0", !106, i64 0}
!106 = !{!"0x5595b4b77340.w8.b0", !107, i64 0}
!107 = !{!"0x5595b4b77340.w16.b0", !108, i64 0}
!108 = !{!"0x5595b4b77340.w32.b0", !109, i64 0}
!109 = !{!"0x5595b4b77340.w64.b0", !110, i64 0}
!110 = !{!"0x5595b4b77340.w128.b0", !111, i64 0}
!111 = !{!"0x5595b4b77340.w256.b0", !112, i64 0}
!112 = !{!"0x5595b4b77340.w512.b0", !113, i64 0}
!113 = !{!"0x5595b4b77340.w1024.b0", !114, i64 0}
!114 = !{!"i8", !115, i64 0}
!115 = !{!"0x5595b4b77340", !8, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"0x5595b4b7fd70.w1.b0", !118, i64 0}
!118 = !{!"0x5595b4b7fd70.w2.b0", !119, i64 0}
!119 = !{!"0x5595b4b7fd70.w4.b0", !120, i64 0}
!120 = !{!"0x5595b4b7fd70.w8.b0", !121, i64 0}
!121 = !{!"0x5595b4b7fd70.w16.b0", !122, i64 0}
!122 = !{!"0x5595b4b7fd70.w32.b0", !123, i64 0}
!123 = !{!"0x5595b4b7fd70.w64.b0", !124, i64 0}
!124 = !{!"0x5595b4b7fd70.w128.b0", !125, i64 0}
!125 = !{!"0x5595b4b7fd70.w256.b0", !126, i64 0}
!126 = !{!"0x5595b4b7fd70.w512.b0", !127, i64 0}
!127 = !{!"0x5595b4b7fd70.w1024.b0", !128, i64 0}
!128 = !{!"i8", !129, i64 0}
!129 = !{!"0x5595b4b7fd70", !8, i64 0}
!130 = !{!131, !131, i64 0}
!131 = !{!"0x5595b4b7fd70.w1.b1", !118, i64 0}
!132 = !{!133, !133, i64 0}
!133 = !{!"0x5595b4b7fd70.w1.b2", !134, i64 0}
!134 = !{!"0x5595b4b7fd70.w2.b2", !119, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"0x5595b4b7fd70.w1.b3", !134, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"0x5595b4b85060.w1.b0", !139, i64 0}
!139 = !{!"0x5595b4b85060.w2.b0", !140, i64 0}
!140 = !{!"0x5595b4b85060.w4.b0", !141, i64 0}
!141 = !{!"0x5595b4b85060.w8.b0", !142, i64 0}
!142 = !{!"0x5595b4b85060.w16.b0", !143, i64 0}
!143 = !{!"0x5595b4b85060.w32.b0", !144, i64 0}
!144 = !{!"0x5595b4b85060.w64.b0", !145, i64 0}
!145 = !{!"0x5595b4b85060.w128.b0", !146, i64 0}
!146 = !{!"0x5595b4b85060.w256.b0", !147, i64 0}
!147 = !{!"0x5595b4b85060.w512.b0", !148, i64 0}
!148 = !{!"0x5595b4b85060.w1024.b0", !149, i64 0}
!149 = !{!"i64", !150, i64 0}
!150 = !{!"0x5595b4b85060", !8, i64 0}
!151 = !{!152, !152, i64 0}
!152 = !{!"0x5595b4b85060.w1.b1", !139, i64 0}
!153 = !{!154, !154, i64 0}
!154 = !{!"0x5595b4b854c0.w1.b0", !155, i64 0}
!155 = !{!"0x5595b4b854c0.w2.b0", !156, i64 0}
!156 = !{!"0x5595b4b854c0.w4.b0", !157, i64 0}
!157 = !{!"0x5595b4b854c0.w8.b0", !158, i64 0}
!158 = !{!"0x5595b4b854c0.w16.b0", !159, i64 0}
!159 = !{!"0x5595b4b854c0.w32.b0", !160, i64 0}
!160 = !{!"0x5595b4b854c0.w64.b0", !161, i64 0}
!161 = !{!"0x5595b4b854c0.w128.b0", !162, i64 0}
!162 = !{!"0x5595b4b854c0.w256.b0", !163, i64 0}
!163 = !{!"0x5595b4b854c0.w512.b0", !164, i64 0}
!164 = !{!"0x5595b4b854c0.w1024.b0", !165, i64 0}
!165 = !{!"i64", !166, i64 0}
!166 = !{!"0x5595b4b854c0", !8, i64 0}
!167 = !{!168, !168, i64 0}
!168 = !{!"0x5595b4b854c0.w1.b1", !155, i64 0}
!169 = !{!170, !170, i64 0}
!170 = !{!"0x5595b4b87360.w1.b0", !171, i64 0}
!171 = !{!"0x5595b4b87360.w2.b0", !172, i64 0}
!172 = !{!"0x5595b4b87360.w4.b0", !173, i64 0}
!173 = !{!"0x5595b4b87360.w8.b0", !174, i64 0}
!174 = !{!"0x5595b4b87360.w16.b0", !175, i64 0}
!175 = !{!"0x5595b4b87360.w32.b0", !176, i64 0}
!176 = !{!"0x5595b4b87360.w64.b0", !177, i64 0}
!177 = !{!"0x5595b4b87360.w128.b0", !178, i64 0}
!178 = !{!"0x5595b4b87360.w256.b0", !179, i64 0}
!179 = !{!"0x5595b4b87360.w512.b0", !180, i64 0}
!180 = !{!"0x5595b4b87360.w1024.b0", !181, i64 0}
!181 = !{!"i64", !182, i64 0}
!182 = !{!"0x5595b4b87360", !8, i64 0}
!183 = !{!184, !184, i64 0}
!184 = !{!"0x5595b4b87360.w1.b1", !171, i64 0}
!185 = !{!186, !186, i64 0}
!186 = !{!"0x5595b4b877d0.w1.b0", !187, i64 0}
!187 = !{!"0x5595b4b877d0.w2.b0", !188, i64 0}
!188 = !{!"0x5595b4b877d0.w4.b0", !189, i64 0}
!189 = !{!"0x5595b4b877d0.w8.b0", !190, i64 0}
!190 = !{!"0x5595b4b877d0.w16.b0", !191, i64 0}
!191 = !{!"0x5595b4b877d0.w32.b0", !192, i64 0}
!192 = !{!"0x5595b4b877d0.w64.b0", !193, i64 0}
!193 = !{!"0x5595b4b877d0.w128.b0", !194, i64 0}
!194 = !{!"0x5595b4b877d0.w256.b0", !195, i64 0}
!195 = !{!"0x5595b4b877d0.w512.b0", !196, i64 0}
!196 = !{!"0x5595b4b877d0.w1024.b0", !197, i64 0}
!197 = !{!"i64", !198, i64 0}
!198 = !{!"0x5595b4b877d0", !8, i64 0}
!199 = !{!200, !200, i64 0}
!200 = !{!"0x5595b4b877d0.w1.b1", !187, i64 0}
!201 = !{!202, !202, i64 0}
!202 = !{!"0x5595b4b896b0.w1.b0", !203, i64 0}
!203 = !{!"0x5595b4b896b0.w2.b0", !204, i64 0}
!204 = !{!"0x5595b4b896b0.w4.b0", !205, i64 0}
!205 = !{!"0x5595b4b896b0.w8.b0", !206, i64 0}
!206 = !{!"0x5595b4b896b0.w16.b0", !207, i64 0}
!207 = !{!"0x5595b4b896b0.w32.b0", !208, i64 0}
!208 = !{!"0x5595b4b896b0.w64.b0", !209, i64 0}
!209 = !{!"0x5595b4b896b0.w128.b0", !210, i64 0}
!210 = !{!"0x5595b4b896b0.w256.b0", !211, i64 0}
!211 = !{!"0x5595b4b896b0.w512.b0", !212, i64 0}
!212 = !{!"0x5595b4b896b0.w1024.b0", !213, i64 0}
!213 = !{!"i64", !214, i64 0}
!214 = !{!"0x5595b4b896b0", !8, i64 0}
!215 = !{!216, !216, i64 0}
!216 = !{!"0x5595b4b89990.w1.b0", !217, i64 0}
!217 = !{!"0x5595b4b89990.w2.b0", !218, i64 0}
!218 = !{!"0x5595b4b89990.w4.b0", !219, i64 0}
!219 = !{!"0x5595b4b89990.w8.b0", !220, i64 0}
!220 = !{!"0x5595b4b89990.w16.b0", !221, i64 0}
!221 = !{!"0x5595b4b89990.w32.b0", !222, i64 0}
!222 = !{!"0x5595b4b89990.w64.b0", !223, i64 0}
!223 = !{!"0x5595b4b89990.w128.b0", !224, i64 0}
!224 = !{!"0x5595b4b89990.w256.b0", !225, i64 0}
!225 = !{!"0x5595b4b89990.w512.b0", !226, i64 0}
!226 = !{!"0x5595b4b89990.w1024.b0", !227, i64 0}
!227 = !{!"i64", !228, i64 0}
!228 = !{!"0x5595b4b89990", !8, i64 0}
!229 = !{!230, !230, i64 0}
!230 = !{!"0x5595b4b8b450.w1.b0", !231, i64 0}
!231 = !{!"0x5595b4b8b450.w2.b0", !232, i64 0}
!232 = !{!"0x5595b4b8b450.w4.b0", !233, i64 0}
!233 = !{!"0x5595b4b8b450.w8.b0", !234, i64 0}
!234 = !{!"0x5595b4b8b450.w16.b0", !235, i64 0}
!235 = !{!"0x5595b4b8b450.w32.b0", !236, i64 0}
!236 = !{!"0x5595b4b8b450.w64.b0", !237, i64 0}
!237 = !{!"0x5595b4b8b450.w128.b0", !238, i64 0}
!238 = !{!"0x5595b4b8b450.w256.b0", !239, i64 0}
!239 = !{!"0x5595b4b8b450.w512.b0", !240, i64 0}
!240 = !{!"0x5595b4b8b450.w1024.b0", !241, i64 0}
!241 = !{!"i64", !242, i64 0}
!242 = !{!"0x5595b4b8b450", !8, i64 0}
!243 = !{!244, !244, i64 0}
!244 = !{!"0x5595b4b8b450.w1.b1", !231, i64 0}
!245 = !{!246, !246, i64 0}
!246 = !{!"0x5595b4b8b880.w1.b0", !247, i64 0}
!247 = !{!"0x5595b4b8b880.w2.b0", !248, i64 0}
!248 = !{!"0x5595b4b8b880.w4.b0", !249, i64 0}
!249 = !{!"0x5595b4b8b880.w8.b0", !250, i64 0}
!250 = !{!"0x5595b4b8b880.w16.b0", !251, i64 0}
!251 = !{!"0x5595b4b8b880.w32.b0", !252, i64 0}
!252 = !{!"0x5595b4b8b880.w64.b0", !253, i64 0}
!253 = !{!"0x5595b4b8b880.w128.b0", !254, i64 0}
!254 = !{!"0x5595b4b8b880.w256.b0", !255, i64 0}
!255 = !{!"0x5595b4b8b880.w512.b0", !256, i64 0}
!256 = !{!"0x5595b4b8b880.w1024.b0", !257, i64 0}
!257 = !{!"i64", !258, i64 0}
!258 = !{!"0x5595b4b8b880", !8, i64 0}
!259 = !{!260, !260, i64 0}
!260 = !{!"0x5595b4b8b880.w1.b1", !247, i64 0}
!261 = !{!262, !262, i64 0}
!262 = !{!"i8", !263, i64 0}
!263 = !{!"0x5595b4b6e560", !8, i64 0}
!264 = !{!265, !265, i64 0}
!265 = !{!"i8", !266, i64 0}
!266 = !{!"0x5595b4b6e5a0", !8, i64 0}
!267 = !{!268, !268, i64 0}
!268 = !{!"0x5595b4b6e520.w4.b0", !269, i64 0}
!269 = !{!"0x5595b4b6e520.w8.b0", !270, i64 0}
!270 = !{!"0x5595b4b6e520.w16.b0", !271, i64 0}
!271 = !{!"0x5595b4b6e520.w32.b0", !272, i64 0}
!272 = !{!"0x5595b4b6e520.w64.b0", !273, i64 0}
!273 = !{!"0x5595b4b6e520.w128.b0", !274, i64 0}
!274 = !{!"0x5595b4b6e520.w256.b0", !275, i64 0}
!275 = !{!"0x5595b4b6e520.w512.b0", !276, i64 0}
!276 = !{!"0x5595b4b6e520.w1024.b0", !277, i64 0}
!277 = !{!"i8", !278, i64 0}
!278 = !{!"0x5595b4b6e520", !8, i64 0}
!279 = !{!280, !280, i64 0}
!280 = !{!"0x5595b4b6e480.w4.b0", !281, i64 0}
!281 = !{!"0x5595b4b6e480.w8.b0", !282, i64 0}
!282 = !{!"0x5595b4b6e480.w16.b0", !283, i64 0}
!283 = !{!"0x5595b4b6e480.w32.b0", !284, i64 0}
!284 = !{!"0x5595b4b6e480.w64.b0", !285, i64 0}
!285 = !{!"0x5595b4b6e480.w128.b0", !286, i64 0}
!286 = !{!"0x5595b4b6e480.w256.b0", !287, i64 0}
!287 = !{!"0x5595b4b6e480.w512.b0", !288, i64 0}
!288 = !{!"0x5595b4b6e480.w1024.b0", !289, i64 0}
!289 = !{!"i8", !290, i64 0}
!290 = !{!"0x5595b4b6e480", !8, i64 0}
!291 = !{!292, !292, i64 0}
!292 = !{!"0x5595b4b6ca60.w1.b0", !293, i64 0}
!293 = !{!"0x5595b4b6ca60.w2.b0", !294, i64 0}
!294 = !{!"0x5595b4b6ca60.w4.b0", !295, i64 0}
!295 = !{!"0x5595b4b6ca60.w8.b0", !296, i64 0}
!296 = !{!"0x5595b4b6ca60.w16.b0", !297, i64 0}
!297 = !{!"0x5595b4b6ca60.w32.b0", !298, i64 0}
!298 = !{!"0x5595b4b6ca60.w64.b0", !299, i64 0}
!299 = !{!"0x5595b4b6ca60.w128.b0", !300, i64 0}
!300 = !{!"0x5595b4b6ca60.w256.b0", !301, i64 0}
!301 = !{!"0x5595b4b6ca60.w512.b0", !302, i64 0}
!302 = !{!"0x5595b4b6ca60.w1024.b0", !303, i64 0}
!303 = !{!"i8", !304, i64 0}
!304 = !{!"0x5595b4b6ca60", !8, i64 0}
!305 = !{!306, !306, i64 0}
!306 = !{!"0x5595b4b6ca60.w1.b1", !293, i64 0}
!307 = !{!308, !308, i64 0}
!308 = !{!"0x5595b4b7aa80.w1.b0", !309, i64 0}
!309 = !{!"0x5595b4b7aa80.w2.b0", !310, i64 0}
!310 = !{!"0x5595b4b7aa80.w4.b0", !311, i64 0}
!311 = !{!"0x5595b4b7aa80.w8.b0", !312, i64 0}
!312 = !{!"0x5595b4b7aa80.w16.b0", !313, i64 0}
!313 = !{!"0x5595b4b7aa80.w32.b0", !314, i64 0}
!314 = !{!"0x5595b4b7aa80.w64.b0", !315, i64 0}
!315 = !{!"0x5595b4b7aa80.w128.b0", !316, i64 0}
!316 = !{!"0x5595b4b7aa80.w256.b0", !317, i64 0}
!317 = !{!"0x5595b4b7aa80.w512.b0", !318, i64 0}
!318 = !{!"0x5595b4b7aa80.w1024.b0", !319, i64 0}
!319 = !{!"i64", !320, i64 0}
!320 = !{!"0x5595b4b7aa80", !8, i64 0}
!321 = !{!322, !322, i64 0}
!322 = !{!"0x5595b4b7aa80.w1.b1", !309, i64 0}
!323 = !{!324, !324, i64 0}
!324 = !{!"0x5595b4b499d0.w1.b0", !325, i64 0}
!325 = !{!"0x5595b4b499d0.w2.b0", !326, i64 0}
!326 = !{!"0x5595b4b499d0.w4.b0", !327, i64 0}
!327 = !{!"0x5595b4b499d0.w8.b0", !328, i64 0}
!328 = !{!"0x5595b4b499d0.w16.b0", !329, i64 0}
!329 = !{!"0x5595b4b499d0.w32.b0", !330, i64 0}
!330 = !{!"0x5595b4b499d0.w64.b0", !331, i64 0}
!331 = !{!"0x5595b4b499d0.w128.b0", !332, i64 0}
!332 = !{!"0x5595b4b499d0.w256.b0", !333, i64 0}
!333 = !{!"0x5595b4b499d0.w512.b0", !334, i64 0}
!334 = !{!"0x5595b4b499d0.w1024.b0", !335, i64 0}
!335 = !{!"i64", !336, i64 0}
!336 = !{!"0x5595b4b499d0", !8, i64 0}
!337 = !{!338, !338, i64 0}
!338 = !{!"0x5595b4b499d0.w1.b1", !325, i64 0}
!339 = !{!340, !340, i64 0}
!340 = !{!"0x5595b4b80db0.w1.b0", !341, i64 0}
!341 = !{!"0x5595b4b80db0.w2.b0", !342, i64 0}
!342 = !{!"0x5595b4b80db0.w4.b0", !343, i64 0}
!343 = !{!"0x5595b4b80db0.w8.b0", !344, i64 0}
!344 = !{!"0x5595b4b80db0.w16.b0", !345, i64 0}
!345 = !{!"0x5595b4b80db0.w32.b0", !346, i64 0}
!346 = !{!"0x5595b4b80db0.w64.b0", !347, i64 0}
!347 = !{!"0x5595b4b80db0.w128.b0", !348, i64 0}
!348 = !{!"0x5595b4b80db0.w256.b0", !349, i64 0}
!349 = !{!"0x5595b4b80db0.w512.b0", !350, i64 0}
!350 = !{!"0x5595b4b80db0.w1024.b0", !351, i64 0}
!351 = !{!"i64", !352, i64 0}
!352 = !{!"0x5595b4b80db0", !8, i64 0}
!353 = !{!354, !354, i64 0}
!354 = !{!"0x5595b4b80db0.w1.b1", !341, i64 0}
!355 = !{!356, !356, i64 0}
!356 = !{!"0x5595b4b81220.w1.b0", !357, i64 0}
!357 = !{!"0x5595b4b81220.w2.b0", !358, i64 0}
!358 = !{!"0x5595b4b81220.w4.b0", !359, i64 0}
!359 = !{!"0x5595b4b81220.w8.b0", !360, i64 0}
!360 = !{!"0x5595b4b81220.w16.b0", !361, i64 0}
!361 = !{!"0x5595b4b81220.w32.b0", !362, i64 0}
!362 = !{!"0x5595b4b81220.w64.b0", !363, i64 0}
!363 = !{!"0x5595b4b81220.w128.b0", !364, i64 0}
!364 = !{!"0x5595b4b81220.w256.b0", !365, i64 0}
!365 = !{!"0x5595b4b81220.w512.b0", !366, i64 0}
!366 = !{!"0x5595b4b81220.w1024.b0", !367, i64 0}
!367 = !{!"i64", !368, i64 0}
!368 = !{!"0x5595b4b81220", !8, i64 0}
!369 = !{!370, !370, i64 0}
!370 = !{!"0x5595b4b81220.w1.b1", !357, i64 0}
!371 = !{!372, !372, i64 0}
!372 = !{!"0x5595b4b5bb80.w4.b0", !373, i64 0}
!373 = !{!"0x5595b4b5bb80.w8.b0", !374, i64 0}
!374 = !{!"0x5595b4b5bb80.w16.b0", !375, i64 0}
!375 = !{!"0x5595b4b5bb80.w32.b0", !376, i64 0}
!376 = !{!"0x5595b4b5bb80.w64.b0", !377, i64 0}
!377 = !{!"0x5595b4b5bb80.w128.b0", !378, i64 0}
!378 = !{!"0x5595b4b5bb80.w256.b0", !379, i64 0}
!379 = !{!"0x5595b4b5bb80.w512.b0", !380, i64 0}
!380 = !{!"0x5595b4b5bb80.w1024.b0", !381, i64 0}
!381 = !{!"i8", !382, i64 0}
!382 = !{!"0x5595b4b5bb80", !8, i64 0}
!383 = !{!384, !384, i64 0}
!384 = !{!"0x5595b47c9d90.w4.b0", !385, i64 0}
!385 = !{!"0x5595b47c9d90.w8.b0", !386, i64 0}
!386 = !{!"0x5595b47c9d90.w16.b0", !387, i64 0}
!387 = !{!"0x5595b47c9d90.w32.b0", !388, i64 0}
!388 = !{!"0x5595b47c9d90.w64.b0", !389, i64 0}
!389 = !{!"0x5595b47c9d90.w128.b0", !390, i64 0}
!390 = !{!"0x5595b47c9d90.w256.b0", !391, i64 0}
!391 = !{!"0x5595b47c9d90.w512.b0", !392, i64 0}
!392 = !{!"0x5595b47c9d90.w1024.b0", !393, i64 0}
!393 = !{!"i8", !394, i64 0}
!394 = !{!"0x5595b47c9d90", !8, i64 0}
!395 = !{!396, !396, i64 0}
!396 = !{!"0x5595b4b6fbb0.w1.b0", !397, i64 0}
!397 = !{!"0x5595b4b6fbb0.w2.b0", !398, i64 0}
!398 = !{!"0x5595b4b6fbb0.w4.b0", !399, i64 0}
!399 = !{!"0x5595b4b6fbb0.w8.b0", !400, i64 0}
!400 = !{!"0x5595b4b6fbb0.w16.b0", !401, i64 0}
!401 = !{!"0x5595b4b6fbb0.w32.b0", !402, i64 0}
!402 = !{!"0x5595b4b6fbb0.w64.b0", !403, i64 0}
!403 = !{!"0x5595b4b6fbb0.w128.b0", !404, i64 0}
!404 = !{!"0x5595b4b6fbb0.w256.b0", !405, i64 0}
!405 = !{!"0x5595b4b6fbb0.w512.b0", !406, i64 0}
!406 = !{!"0x5595b4b6fbb0.w1024.b0", !407, i64 0}
!407 = !{!"i8", !408, i64 0}
!408 = !{!"0x5595b4b6fbb0", !8, i64 0}
!409 = !{!410, !410, i64 0}
!410 = !{!"0x5595b4b6fbb0.w1.b1", !397, i64 0}
!411 = !{!412, !412, i64 0}
!412 = !{!"0x5595b4b6fbb0.w1.b2", !413, i64 0}
!413 = !{!"0x5595b4b6fbb0.w2.b2", !398, i64 0}
!414 = !{!415, !415, i64 0}
!415 = !{!"0x5595b4b6fbb0.w1.b3", !413, i64 0}
!416 = !{!417, !417, i64 0}
!417 = !{!"0x5595b4b6c440.w1.b0", !418, i64 0}
!418 = !{!"0x5595b4b6c440.w2.b0", !419, i64 0}
!419 = !{!"0x5595b4b6c440.w4.b0", !420, i64 0}
!420 = !{!"0x5595b4b6c440.w8.b0", !421, i64 0}
!421 = !{!"0x5595b4b6c440.w16.b0", !422, i64 0}
!422 = !{!"0x5595b4b6c440.w32.b0", !423, i64 0}
!423 = !{!"0x5595b4b6c440.w64.b0", !424, i64 0}
!424 = !{!"0x5595b4b6c440.w128.b0", !425, i64 0}
!425 = !{!"0x5595b4b6c440.w256.b0", !426, i64 0}
!426 = !{!"0x5595b4b6c440.w512.b0", !427, i64 0}
!427 = !{!"0x5595b4b6c440.w1024.b0", !428, i64 0}
!428 = !{!"i64", !429, i64 0}
!429 = !{!"0x5595b4b6c440", !8, i64 0}
!430 = !{!431, !431, i64 0}
!431 = !{!"0x5595b4b6c440.w1.b1", !418, i64 0}
!432 = !{!433, !433, i64 0}
!433 = !{!"0x5595b4b6c8a0.w1.b0", !434, i64 0}
!434 = !{!"0x5595b4b6c8a0.w2.b0", !435, i64 0}
!435 = !{!"0x5595b4b6c8a0.w4.b0", !436, i64 0}
!436 = !{!"0x5595b4b6c8a0.w8.b0", !437, i64 0}
!437 = !{!"0x5595b4b6c8a0.w16.b0", !438, i64 0}
!438 = !{!"0x5595b4b6c8a0.w32.b0", !439, i64 0}
!439 = !{!"0x5595b4b6c8a0.w64.b0", !440, i64 0}
!440 = !{!"0x5595b4b6c8a0.w128.b0", !441, i64 0}
!441 = !{!"0x5595b4b6c8a0.w256.b0", !442, i64 0}
!442 = !{!"0x5595b4b6c8a0.w512.b0", !443, i64 0}
!443 = !{!"0x5595b4b6c8a0.w1024.b0", !444, i64 0}
!444 = !{!"i64", !445, i64 0}
!445 = !{!"0x5595b4b6c8a0", !8, i64 0}
!446 = !{!447, !447, i64 0}
!447 = !{!"0x5595b4b6c8a0.w1.b1", !434, i64 0}
!448 = !{!449, !449, i64 0}
!449 = !{!"0x5595b4b486d0.w1.b0", !450, i64 0}
!450 = !{!"0x5595b4b486d0.w2.b0", !451, i64 0}
!451 = !{!"0x5595b4b486d0.w4.b0", !452, i64 0}
!452 = !{!"0x5595b4b486d0.w8.b0", !453, i64 0}
!453 = !{!"0x5595b4b486d0.w16.b0", !454, i64 0}
!454 = !{!"0x5595b4b486d0.w32.b0", !455, i64 0}
!455 = !{!"0x5595b4b486d0.w64.b0", !456, i64 0}
!456 = !{!"0x5595b4b486d0.w128.b0", !457, i64 0}
!457 = !{!"0x5595b4b486d0.w256.b0", !458, i64 0}
!458 = !{!"0x5595b4b486d0.w512.b0", !459, i64 0}
!459 = !{!"0x5595b4b486d0.w1024.b0", !460, i64 0}
!460 = !{!"i64", !461, i64 0}
!461 = !{!"0x5595b4b486d0", !8, i64 0}
!462 = !{!463, !463, i64 0}
!463 = !{!"0x5595b4b486d0.w1.b1", !450, i64 0}
!464 = !{!465, !465, i64 0}
!465 = !{!"0x5595b4b48b40.w1.b0", !466, i64 0}
!466 = !{!"0x5595b4b48b40.w2.b0", !467, i64 0}
!467 = !{!"0x5595b4b48b40.w4.b0", !468, i64 0}
!468 = !{!"0x5595b4b48b40.w8.b0", !469, i64 0}
!469 = !{!"0x5595b4b48b40.w16.b0", !470, i64 0}
!470 = !{!"0x5595b4b48b40.w32.b0", !471, i64 0}
!471 = !{!"0x5595b4b48b40.w64.b0", !472, i64 0}
!472 = !{!"0x5595b4b48b40.w128.b0", !473, i64 0}
!473 = !{!"0x5595b4b48b40.w256.b0", !474, i64 0}
!474 = !{!"0x5595b4b48b40.w512.b0", !475, i64 0}
!475 = !{!"0x5595b4b48b40.w1024.b0", !476, i64 0}
!476 = !{!"i64", !477, i64 0}
!477 = !{!"0x5595b4b48b40", !8, i64 0}
!478 = !{!479, !479, i64 0}
!479 = !{!"0x5595b4b48b40.w1.b1", !466, i64 0}
!480 = !{!481, !481, i64 0}
!481 = !{!"0x5595b4b4a9c0.w1.b0", !482, i64 0}
!482 = !{!"0x5595b4b4a9c0.w2.b0", !483, i64 0}
!483 = !{!"0x5595b4b4a9c0.w4.b0", !484, i64 0}
!484 = !{!"0x5595b4b4a9c0.w8.b0", !485, i64 0}
!485 = !{!"0x5595b4b4a9c0.w16.b0", !486, i64 0}
!486 = !{!"0x5595b4b4a9c0.w32.b0", !487, i64 0}
!487 = !{!"0x5595b4b4a9c0.w64.b0", !488, i64 0}
!488 = !{!"0x5595b4b4a9c0.w128.b0", !489, i64 0}
!489 = !{!"0x5595b4b4a9c0.w256.b0", !490, i64 0}
!490 = !{!"0x5595b4b4a9c0.w512.b0", !491, i64 0}
!491 = !{!"0x5595b4b4a9c0.w1024.b0", !492, i64 0}
!492 = !{!"i64", !493, i64 0}
!493 = !{!"0x5595b4b4a9c0", !8, i64 0}
!494 = !{!495, !495, i64 0}
!495 = !{!"0x5595b4b4aca0.w1.b0", !496, i64 0}
!496 = !{!"0x5595b4b4aca0.w2.b0", !497, i64 0}
!497 = !{!"0x5595b4b4aca0.w4.b0", !498, i64 0}
!498 = !{!"0x5595b4b4aca0.w8.b0", !499, i64 0}
!499 = !{!"0x5595b4b4aca0.w16.b0", !500, i64 0}
!500 = !{!"0x5595b4b4aca0.w32.b0", !501, i64 0}
!501 = !{!"0x5595b4b4aca0.w64.b0", !502, i64 0}
!502 = !{!"0x5595b4b4aca0.w128.b0", !503, i64 0}
!503 = !{!"0x5595b4b4aca0.w256.b0", !504, i64 0}
!504 = !{!"0x5595b4b4aca0.w512.b0", !505, i64 0}
!505 = !{!"0x5595b4b4aca0.w1024.b0", !506, i64 0}
!506 = !{!"i64", !507, i64 0}
!507 = !{!"0x5595b4b4aca0", !8, i64 0}
!508 = !{!509, !509, i64 0}
!509 = !{!"0x5595b4b7b800.w1.b0", !510, i64 0}
!510 = !{!"0x5595b4b7b800.w2.b0", !511, i64 0}
!511 = !{!"0x5595b4b7b800.w4.b0", !512, i64 0}
!512 = !{!"0x5595b4b7b800.w8.b0", !513, i64 0}
!513 = !{!"0x5595b4b7b800.w16.b0", !514, i64 0}
!514 = !{!"0x5595b4b7b800.w32.b0", !515, i64 0}
!515 = !{!"0x5595b4b7b800.w64.b0", !516, i64 0}
!516 = !{!"0x5595b4b7b800.w128.b0", !517, i64 0}
!517 = !{!"0x5595b4b7b800.w256.b0", !518, i64 0}
!518 = !{!"0x5595b4b7b800.w512.b0", !519, i64 0}
!519 = !{!"0x5595b4b7b800.w1024.b0", !520, i64 0}
!520 = !{!"i64", !521, i64 0}
!521 = !{!"0x5595b4b7b800", !8, i64 0}
!522 = !{!523, !523, i64 0}
!523 = !{!"0x5595b4b7b800.w1.b1", !510, i64 0}
!524 = !{!525, !525, i64 0}
!525 = !{!"0x5595b4b7bc30.w1.b0", !526, i64 0}
!526 = !{!"0x5595b4b7bc30.w2.b0", !527, i64 0}
!527 = !{!"0x5595b4b7bc30.w4.b0", !528, i64 0}
!528 = !{!"0x5595b4b7bc30.w8.b0", !529, i64 0}
!529 = !{!"0x5595b4b7bc30.w16.b0", !530, i64 0}
!530 = !{!"0x5595b4b7bc30.w32.b0", !531, i64 0}
!531 = !{!"0x5595b4b7bc30.w64.b0", !532, i64 0}
!532 = !{!"0x5595b4b7bc30.w128.b0", !533, i64 0}
!533 = !{!"0x5595b4b7bc30.w256.b0", !534, i64 0}
!534 = !{!"0x5595b4b7bc30.w512.b0", !535, i64 0}
!535 = !{!"0x5595b4b7bc30.w1024.b0", !536, i64 0}
!536 = !{!"i64", !537, i64 0}
!537 = !{!"0x5595b4b7bc30", !8, i64 0}
!538 = !{!539, !539, i64 0}
!539 = !{!"0x5595b4b7bc30.w1.b1", !526, i64 0}
!540 = !{!541, !541, i64 0}
!541 = !{!"i8", !542, i64 0}
!542 = !{!"0x5595b4b5f900", !8, i64 0}
!543 = !{!544, !544, i64 0}
!544 = !{!"0x5595b4b608d0.w1.b0", !545, i64 0}
!545 = !{!"0x5595b4b608d0.w2.b0", !546, i64 0}
!546 = !{!"0x5595b4b608d0.w4.b0", !547, i64 0}
!547 = !{!"0x5595b4b608d0.w8.b0", !548, i64 0}
!548 = !{!"0x5595b4b608d0.w16.b0", !549, i64 0}
!549 = !{!"0x5595b4b608d0.w32.b0", !550, i64 0}
!550 = !{!"0x5595b4b608d0.w64.b0", !551, i64 0}
!551 = !{!"0x5595b4b608d0.w128.b0", !552, i64 0}
!552 = !{!"0x5595b4b608d0.w256.b0", !553, i64 0}
!553 = !{!"0x5595b4b608d0.w512.b0", !554, i64 0}
!554 = !{!"0x5595b4b608d0.w1024.b0", !555, i64 0}
!555 = !{!"i8", !556, i64 0}
!556 = !{!"0x5595b4b608d0", !8, i64 0}
!557 = !{!558, !558, i64 0}
!558 = !{!"0x5595b4b5bc40.w1.b0", !559, i64 0}
!559 = !{!"0x5595b4b5bc40.w2.b0", !560, i64 0}
!560 = !{!"0x5595b4b5bc40.w4.b0", !561, i64 0}
!561 = !{!"0x5595b4b5bc40.w8.b0", !562, i64 0}
!562 = !{!"0x5595b4b5bc40.w16.b0", !563, i64 0}
!563 = !{!"0x5595b4b5bc40.w32.b0", !564, i64 0}
!564 = !{!"0x5595b4b5bc40.w64.b0", !565, i64 0}
!565 = !{!"0x5595b4b5bc40.w128.b0", !566, i64 0}
!566 = !{!"0x5595b4b5bc40.w256.b0", !567, i64 0}
!567 = !{!"0x5595b4b5bc40.w512.b0", !568, i64 0}
!568 = !{!"0x5595b4b5bc40.w1024.b0", !569, i64 0}
!569 = !{!"i8", !570, i64 0}
!570 = !{!"0x5595b4b5bc40", !8, i64 0}
