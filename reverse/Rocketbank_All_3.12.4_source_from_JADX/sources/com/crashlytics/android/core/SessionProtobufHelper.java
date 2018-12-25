package com.crashlytics.android.core;

import android.app.ActivityManager.RunningAppProcessInfo;
import com.facebook.appevents.AppEventsConstants;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.IdManager.DeviceIdentifierType;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

final class SessionProtobufHelper {
    private static final ByteString SIGNAL_DEFAULT_BYTE_STRING = ByteString.copyFromUtf8(AppEventsConstants.EVENT_PARAM_VALUE_NO);
    private static final ByteString UNITY_PLATFORM_BYTE_STRING = ByteString.copyFromUtf8("Unity");

    public static void writeBeginSession(CodedOutputStream codedOutputStream, String str, String str2, long j) throws Exception {
        codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(str2));
        codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(str));
        codedOutputStream.writeUInt64(3, j);
    }

    public static void writeSessionApp(CodedOutputStream codedOutputStream, String str, String str2, String str3, String str4, String str5, int i, String str6) throws Exception {
        CodedOutputStream codedOutputStream2 = codedOutputStream;
        int i2 = i;
        ByteString copyFromUtf8 = ByteString.copyFromUtf8(str);
        ByteString copyFromUtf82 = ByteString.copyFromUtf8(str2);
        ByteString copyFromUtf83 = ByteString.copyFromUtf8(str3);
        ByteString copyFromUtf84 = ByteString.copyFromUtf8(str4);
        ByteString copyFromUtf85 = ByteString.copyFromUtf8(str5);
        ByteString copyFromUtf86 = str6 != null ? ByteString.copyFromUtf8(str6) : null;
        codedOutputStream2.writeTag(7, 2);
        int computeBytesSize = CodedOutputStream.computeBytesSize(1, copyFromUtf82) + 0;
        int computeBytesSize2 = ((((CodedOutputStream.computeBytesSize(1, copyFromUtf8) + 0) + CodedOutputStream.computeBytesSize(2, copyFromUtf83)) + CodedOutputStream.computeBytesSize(3, copyFromUtf84)) + ((CodedOutputStream.computeTagSize(5) + CodedOutputStream.computeRawVarint32Size(computeBytesSize)) + computeBytesSize)) + CodedOutputStream.computeBytesSize(6, copyFromUtf85);
        if (copyFromUtf86 != null) {
            computeBytesSize2 = (computeBytesSize2 + CodedOutputStream.computeBytesSize(8, UNITY_PLATFORM_BYTE_STRING)) + CodedOutputStream.computeBytesSize(9, copyFromUtf86);
        }
        codedOutputStream2.writeRawVarint32(computeBytesSize2 + CodedOutputStream.computeEnumSize(10, i2));
        codedOutputStream2.writeBytes(1, copyFromUtf8);
        codedOutputStream2.writeBytes(2, copyFromUtf83);
        codedOutputStream2.writeBytes(3, copyFromUtf84);
        codedOutputStream2.writeTag(5, 2);
        codedOutputStream2.writeRawVarint32(CodedOutputStream.computeBytesSize(1, copyFromUtf82) + 0);
        codedOutputStream2.writeBytes(1, copyFromUtf82);
        codedOutputStream2.writeBytes(6, copyFromUtf85);
        if (copyFromUtf86 != null) {
            codedOutputStream2.writeBytes(8, UNITY_PLATFORM_BYTE_STRING);
            codedOutputStream2.writeBytes(9, copyFromUtf86);
        }
        codedOutputStream2.writeEnum(10, i2);
    }

    public static void writeSessionOS(CodedOutputStream codedOutputStream, String str, String str2, boolean z) throws Exception {
        str = ByteString.copyFromUtf8(str);
        str2 = ByteString.copyFromUtf8(str2);
        codedOutputStream.writeTag(8, 2);
        codedOutputStream.writeRawVarint32((((0 + CodedOutputStream.computeEnumSize(1, 3)) + CodedOutputStream.computeBytesSize(2, str)) + CodedOutputStream.computeBytesSize(3, str2)) + CodedOutputStream.computeBoolSize$2563259(4));
        codedOutputStream.writeEnum(1, 3);
        codedOutputStream.writeBytes(2, str);
        codedOutputStream.writeBytes(3, str2);
        codedOutputStream.writeBool(4, z);
    }

    public static void writeSessionUser(CodedOutputStream codedOutputStream, String str, String str2, String str3) throws Exception {
        if (str == null) {
            str = "";
        }
        str = ByteString.copyFromUtf8(str);
        ByteString byteString = null;
        ByteString copyFromUtf8 = str2 == null ? null : ByteString.copyFromUtf8(str2);
        if (str3 != null) {
            byteString = ByteString.copyFromUtf8(str3);
        }
        int computeBytesSize = 0 + CodedOutputStream.computeBytesSize(1, str);
        if (str2 != null) {
            computeBytesSize += CodedOutputStream.computeBytesSize(2, copyFromUtf8);
        }
        if (str3 != null) {
            computeBytesSize += CodedOutputStream.computeBytesSize(3, byteString);
        }
        codedOutputStream.writeTag(6, 2);
        codedOutputStream.writeRawVarint32(computeBytesSize);
        codedOutputStream.writeBytes(1, str);
        if (str2 != null) {
            codedOutputStream.writeBytes(2, copyFromUtf8);
        }
        if (str3 != null) {
            codedOutputStream.writeBytes(3, byteString);
        }
    }

    public static void writeSessionEvent(CodedOutputStream codedOutputStream, long j, String str, TrimmedThrowableData trimmedThrowableData, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, Map<String, String> map, LogFileManager logFileManager, RunningAppProcessInfo runningAppProcessInfo, int i, String str2, String str3, Float f, int i2, boolean z, long j2, long j3) throws Exception {
        ByteString byteString;
        boolean z2;
        CodedOutputStream codedOutputStream2 = codedOutputStream;
        long j4 = j;
        Thread[] threadArr2 = threadArr;
        RunningAppProcessInfo runningAppProcessInfo2 = runningAppProcessInfo;
        int i3 = i;
        String str4 = str3;
        ByteString copyFromUtf8 = ByteString.copyFromUtf8(str2);
        if (str4 == null) {
            byteString = null;
        } else {
            byteString = ByteString.copyFromUtf8(str4.replace("-", ""));
        }
        ByteString byteString2 = byteString;
        ByteString byteStringForLog = logFileManager.getByteStringForLog();
        if (byteStringForLog == null) {
            Fabric.getLogger().mo768d("CrashlyticsCore", "No log data to include with this event.");
        }
        logFileManager.clearLog();
        codedOutputStream2.writeTag(10, 2);
        int computeUInt64Size = (CodedOutputStream.computeUInt64Size(1, j4) + 0) + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(str));
        int i4 = 1;
        ByteString byteString3 = byteStringForLog;
        ByteString byteString4 = byteString2;
        ByteString byteString5 = copyFromUtf8;
        int eventAppSize$437924dd = getEventAppSize$437924dd(trimmedThrowableData, thread, stackTraceElementArr, threadArr2, list, copyFromUtf8, byteString2, map, runningAppProcessInfo2, i3);
        computeUInt64Size += (CodedOutputStream.computeTagSize(3) + CodedOutputStream.computeRawVarint32Size(eventAppSize$437924dd)) + eventAppSize$437924dd;
        eventAppSize$437924dd = getEventDeviceSize$f0a619f(f, i2, i3, j2, j3);
        computeUInt64Size += (CodedOutputStream.computeTagSize(5) + CodedOutputStream.computeRawVarint32Size(eventAppSize$437924dd)) + eventAppSize$437924dd;
        if (byteString3 != null) {
            z2 = true;
            eventAppSize$437924dd = CodedOutputStream.computeBytesSize(1, byteString3);
            computeUInt64Size += (CodedOutputStream.computeTagSize(6) + CodedOutputStream.computeRawVarint32Size(eventAppSize$437924dd)) + eventAppSize$437924dd;
        } else {
            z2 = true;
        }
        codedOutputStream2.writeRawVarint32(computeUInt64Size);
        codedOutputStream2.writeUInt64(z2, j4);
        codedOutputStream2.writeBytes(2, ByteString.copyFromUtf8(str));
        codedOutputStream2.writeTag(3, 2);
        Thread thread2 = thread;
        StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
        List<StackTraceElement[]> list2 = list;
        ByteString byteString6 = byteString5;
        boolean z3 = z2;
        ByteString byteString7 = byteString4;
        int i5 = 2;
        codedOutputStream2.writeRawVarint32(getEventAppSize$437924dd(trimmedThrowableData, thread2, stackTraceElementArr2, threadArr, list2, byteString6, byteString7, map, runningAppProcessInfo2, i3));
        codedOutputStream2.writeTag(z3, i5);
        codedOutputStream2.writeRawVarint32(getEventAppExecutionSize$5b7dd22f(trimmedThrowableData, thread2, stackTraceElementArr2, threadArr, list2, byteString6, byteString7));
        writeThread(codedOutputStream2, thread, stackTraceElementArr, 4, z3);
        Thread[] threadArr3 = threadArr;
        int length = threadArr3.length;
        for (eventAppSize$437924dd = 0; eventAppSize$437924dd < length; eventAppSize$437924dd++) {
            writeThread(codedOutputStream2, threadArr3[eventAppSize$437924dd], (StackTraceElement[]) list.get(eventAppSize$437924dd), 0, false);
        }
        TrimmedThrowableData trimmedThrowableData2 = trimmedThrowableData;
        int i6 = i5;
        eventAppSize$437924dd = z3;
        while (true) {
            codedOutputStream2.writeTag(i6, i5);
            codedOutputStream2.writeRawVarint32(getEventAppExecutionExceptionSize(trimmedThrowableData2, z3, 8));
            codedOutputStream2.writeBytes(z3, ByteString.copyFromUtf8(trimmedThrowableData2.className));
            String str5 = trimmedThrowableData2.localizedMessage;
            if (str5 != null) {
                codedOutputStream2.writeBytes(3, ByteString.copyFromUtf8(str5));
            }
            for (StackTraceElement writeFrame : trimmedThrowableData2.stacktrace) {
                writeFrame(codedOutputStream2, 4, writeFrame, z3);
            }
            trimmedThrowableData2 = trimmedThrowableData2.cause;
            if (trimmedThrowableData2 != null) {
                if (eventAppSize$437924dd >= 8) {
                    break;
                }
                eventAppSize$437924dd++;
                i6 = 6;
            } else {
                break;
            }
        }
        i6 = 0;
        while (trimmedThrowableData2 != null) {
            trimmedThrowableData2 = trimmedThrowableData2.cause;
            i6++;
        }
        codedOutputStream2.writeUInt32(7, i6);
        codedOutputStream2.writeTag(3, i5);
        codedOutputStream2.writeRawVarint32(((0 + CodedOutputStream.computeBytesSize(z3, SIGNAL_DEFAULT_BYTE_STRING)) + CodedOutputStream.computeBytesSize(i5, SIGNAL_DEFAULT_BYTE_STRING)) + CodedOutputStream.computeUInt64Size(3, 0));
        codedOutputStream2.writeBytes(z3, SIGNAL_DEFAULT_BYTE_STRING);
        codedOutputStream2.writeBytes(i5, SIGNAL_DEFAULT_BYTE_STRING);
        codedOutputStream2.writeUInt64(3, 0);
        codedOutputStream2.writeTag(4, i5);
        ByteString byteString8 = byteString4;
        ByteString byteString9 = byteString5;
        codedOutputStream2.writeRawVarint32(getBinaryImageSize(byteString9, byteString8));
        codedOutputStream2.writeUInt64(z3, 0);
        codedOutputStream2.writeUInt64(i5, 0);
        codedOutputStream2.writeBytes(3, byteString9);
        if (byteString8 != null) {
            codedOutputStream2.writeBytes(4, byteString8);
        }
        if (!(map == null || map.isEmpty())) {
            for (Entry entry : map.entrySet()) {
                codedOutputStream2.writeTag(i5, i5);
                str5 = (String) entry.getValue();
                eventAppSize$437924dd = CodedOutputStream.computeBytesSize(z3, ByteString.copyFromUtf8((String) entry.getKey()));
                if (str5 == null) {
                    str5 = "";
                }
                codedOutputStream2.writeRawVarint32(eventAppSize$437924dd + CodedOutputStream.computeBytesSize(i5, ByteString.copyFromUtf8(str5)));
                codedOutputStream2.writeBytes(z3, ByteString.copyFromUtf8((String) entry.getKey()));
                String str6 = (String) entry.getValue();
                if (str6 == null) {
                    str6 = "";
                }
                codedOutputStream2.writeBytes(i5, ByteString.copyFromUtf8(str6));
            }
        }
        if (runningAppProcessInfo2 != null) {
            codedOutputStream2.writeBool(3, runningAppProcessInfo2.importance != 100 ? z3 : false);
        }
        codedOutputStream2.writeUInt32(4, i3);
        codedOutputStream2.writeTag(5, i5);
        codedOutputStream2.writeRawVarint32(getEventDeviceSize$f0a619f(f, i2, i3, j2, j3));
        if (f != null) {
            float floatValue = f.floatValue();
            codedOutputStream2.writeTag(z3, 5);
            i6 = Float.floatToRawIntBits(floatValue);
            codedOutputStream2.writeRawByte(i6 & 255);
            codedOutputStream2.writeRawByte((i6 >> 8) & 255);
            codedOutputStream2.writeRawByte((i6 >> 16) & 255);
            codedOutputStream2.writeRawByte(i6 >>> 24);
        }
        codedOutputStream2.writeTag(i5, 0);
        codedOutputStream2.writeRawVarint32(CodedOutputStream.encodeZigZag32(i2));
        codedOutputStream2.writeBool(3, z);
        codedOutputStream2.writeUInt32(4, i3);
        codedOutputStream2.writeUInt64(5, j2);
        codedOutputStream2.writeUInt64(6, j3);
        if (byteString3 != null) {
            codedOutputStream2.writeTag(6, i5);
            codedOutputStream2.writeRawVarint32(CodedOutputStream.computeBytesSize(z3, byteString3));
            codedOutputStream2.writeBytes(z3, byteString3);
        }
    }

    private static void writeThread(CodedOutputStream codedOutputStream, Thread thread, StackTraceElement[] stackTraceElementArr, int i, boolean z) throws Exception {
        codedOutputStream.writeTag(1, 2);
        codedOutputStream.writeRawVarint32(getThreadSize(thread, stackTraceElementArr, i, z));
        codedOutputStream.writeBytes(1, ByteString.copyFromUtf8(thread.getName()));
        codedOutputStream.writeUInt32(2, i);
        for (StackTraceElement writeFrame : stackTraceElementArr) {
            writeFrame(codedOutputStream, 3, writeFrame, z);
        }
    }

    private static void writeFrame(CodedOutputStream codedOutputStream, int i, StackTraceElement stackTraceElement, boolean z) throws Exception {
        codedOutputStream.writeTag(i, 2);
        codedOutputStream.writeRawVarint32(getFrameSize(stackTraceElement, z));
        if (stackTraceElement.isNativeMethod() != 0) {
            codedOutputStream.writeUInt64(1, (long) Math.max(stackTraceElement.getLineNumber(), 0));
        } else {
            codedOutputStream.writeUInt64(1, 0);
        }
        i = new StringBuilder();
        i.append(stackTraceElement.getClassName());
        i.append(".");
        i.append(stackTraceElement.getMethodName());
        codedOutputStream.writeBytes(2, ByteString.copyFromUtf8(i.toString()));
        if (stackTraceElement.getFileName() != 0) {
            codedOutputStream.writeBytes(3, ByteString.copyFromUtf8(stackTraceElement.getFileName()));
        }
        int i2 = 4;
        if (stackTraceElement.isNativeMethod() == 0 && stackTraceElement.getLineNumber() > 0) {
            codedOutputStream.writeUInt64(4, (long) stackTraceElement.getLineNumber());
        }
        if (!z) {
            i2 = 0;
        }
        codedOutputStream.writeUInt32(5, i2);
    }

    private static int getBinaryImageSize(ByteString byteString, ByteString byteString2) {
        int computeUInt64Size = ((0 + CodedOutputStream.computeUInt64Size(1, 0)) + CodedOutputStream.computeUInt64Size(2, 0)) + CodedOutputStream.computeBytesSize(3, byteString);
        return byteString2 != null ? computeUInt64Size + CodedOutputStream.computeBytesSize(4, byteString2) : computeUInt64Size;
    }

    private static int getEventAppSize$437924dd(TrimmedThrowableData trimmedThrowableData, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, ByteString byteString, ByteString byteString2, Map<String, String> map, RunningAppProcessInfo runningAppProcessInfo, int i) {
        trimmedThrowableData = getEventAppExecutionSize$5b7dd22f(trimmedThrowableData, thread, stackTraceElementArr, threadArr, list, byteString, byteString2);
        trimmedThrowableData = null + ((CodedOutputStream.computeTagSize(1) + CodedOutputStream.computeRawVarint32Size(trimmedThrowableData)) + trimmedThrowableData);
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                threadArr = (String) entry.getValue();
                list = CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(str));
                if (threadArr == null) {
                    threadArr = "";
                }
                list += CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(threadArr));
                trimmedThrowableData += (CodedOutputStream.computeTagSize(2) + CodedOutputStream.computeRawVarint32Size(list)) + list;
            }
        }
        if (runningAppProcessInfo != null) {
            stackTraceElementArr = runningAppProcessInfo.importance;
            trimmedThrowableData += CodedOutputStream.computeBoolSize$2563259(3);
        }
        return trimmedThrowableData + CodedOutputStream.computeUInt32Size(4, i);
    }

    private static int getEventAppExecutionSize$5b7dd22f(TrimmedThrowableData trimmedThrowableData, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, ByteString byteString, ByteString byteString2) {
        thread = getThreadSize(thread, stackTraceElementArr, 4, true);
        stackTraceElementArr = ((CodedOutputStream.computeTagSize(1) + CodedOutputStream.computeRawVarint32Size(thread)) + thread) + null;
        int length = threadArr.length;
        int i = stackTraceElementArr;
        for (stackTraceElementArr = null; stackTraceElementArr < length; stackTraceElementArr++) {
            int threadSize = getThreadSize(threadArr[stackTraceElementArr], (StackTraceElement[]) list.get(stackTraceElementArr), 0, false);
            i += (CodedOutputStream.computeTagSize(1) + CodedOutputStream.computeRawVarint32Size(threadSize)) + threadSize;
        }
        trimmedThrowableData = getEventAppExecutionExceptionSize(trimmedThrowableData, 1, 8);
        thread = ((null + CodedOutputStream.computeBytesSize(1, SIGNAL_DEFAULT_BYTE_STRING)) + CodedOutputStream.computeBytesSize(2, SIGNAL_DEFAULT_BYTE_STRING)) + CodedOutputStream.computeUInt64Size(3, null);
        i = (i + ((CodedOutputStream.computeTagSize(2) + CodedOutputStream.computeRawVarint32Size(trimmedThrowableData)) + trimmedThrowableData)) + ((CodedOutputStream.computeTagSize(3) + CodedOutputStream.computeRawVarint32Size(thread)) + thread);
        thread = getBinaryImageSize(byteString, byteString2);
        return i + ((CodedOutputStream.computeTagSize(3) + CodedOutputStream.computeRawVarint32Size(thread)) + thread);
    }

    private static int getEventDeviceSize$f0a619f(Float f, int i, int i2, long j, long j2) {
        int i3 = 0;
        if (f != null) {
            f.floatValue();
            i3 = 0 + CodedOutputStream.computeFloatSize$255e745();
        }
        return ((((i3 + CodedOutputStream.computeSInt32Size$255f288(i)) + CodedOutputStream.computeBoolSize$2563259(3)) + CodedOutputStream.computeUInt32Size(4, i2)) + CodedOutputStream.computeUInt64Size(5, j)) + CodedOutputStream.computeUInt64Size(6, j2);
    }

    private static int getEventAppExecutionExceptionSize(TrimmedThrowableData trimmedThrowableData, int i, int i2) {
        int i3 = 0;
        int computeBytesSize = CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(trimmedThrowableData.className)) + 0;
        String str = trimmedThrowableData.localizedMessage;
        if (str != null) {
            computeBytesSize += CodedOutputStream.computeBytesSize(3, ByteString.copyFromUtf8(str));
        }
        int i4 = computeBytesSize;
        for (StackTraceElement frameSize : trimmedThrowableData.stacktrace) {
            int frameSize2 = getFrameSize(frameSize, true);
            i4 += (CodedOutputStream.computeTagSize(4) + CodedOutputStream.computeRawVarint32Size(frameSize2)) + frameSize2;
        }
        trimmedThrowableData = trimmedThrowableData.cause;
        if (trimmedThrowableData == null) {
            return i4;
        }
        if (i < i2) {
            trimmedThrowableData = getEventAppExecutionExceptionSize(trimmedThrowableData, i + 1, i2);
            return i4 + ((CodedOutputStream.computeTagSize(6) + CodedOutputStream.computeRawVarint32Size(trimmedThrowableData)) + trimmedThrowableData);
        }
        while (trimmedThrowableData != null) {
            trimmedThrowableData = trimmedThrowableData.cause;
            i3++;
        }
        return i4 + CodedOutputStream.computeUInt32Size(7, i3);
    }

    private static int getFrameSize(StackTraceElement stackTraceElement, boolean z) {
        int computeUInt64Size;
        int i = 0;
        if (stackTraceElement.isNativeMethod()) {
            computeUInt64Size = CodedOutputStream.computeUInt64Size(1, (long) Math.max(stackTraceElement.getLineNumber(), 0)) + 0;
        } else {
            computeUInt64Size = CodedOutputStream.computeUInt64Size(1, 0) + 0;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(stackTraceElement.getClassName());
        stringBuilder.append(".");
        stringBuilder.append(stackTraceElement.getMethodName());
        computeUInt64Size += CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8(stringBuilder.toString()));
        if (stackTraceElement.getFileName() != null) {
            computeUInt64Size += CodedOutputStream.computeBytesSize(3, ByteString.copyFromUtf8(stackTraceElement.getFileName()));
        }
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            computeUInt64Size += CodedOutputStream.computeUInt64Size(4, (long) stackTraceElement.getLineNumber());
        }
        if (z) {
            i = 2;
        }
        return computeUInt64Size + CodedOutputStream.computeUInt32Size(5, i);
    }

    private static int getThreadSize(Thread thread, StackTraceElement[] stackTraceElementArr, int i, boolean z) {
        thread = CodedOutputStream.computeBytesSize(1, ByteString.copyFromUtf8(thread.getName())) + CodedOutputStream.computeUInt32Size(2, i);
        for (StackTraceElement frameSize : stackTraceElementArr) {
            int frameSize2 = getFrameSize(frameSize, z);
            thread += (CodedOutputStream.computeTagSize(3) + CodedOutputStream.computeRawVarint32Size(frameSize2)) + frameSize2;
        }
        return thread;
    }

    public static void writeSessionDevice(CodedOutputStream codedOutputStream, int i, String str, int i2, long j, long j2, boolean z, Map<DeviceIdentifierType, String> map, int i3, String str2, String str3) throws Exception {
        int i4;
        int i5;
        int i6;
        CodedOutputStream codedOutputStream2 = codedOutputStream;
        int i7 = i;
        int i8 = i2;
        long j3 = j;
        long j4 = j2;
        int i9 = i3;
        ByteString byteString = null;
        ByteString copyFromUtf8 = str == null ? null : ByteString.copyFromUtf8(str);
        ByteString copyFromUtf82 = str3 == null ? null : ByteString.copyFromUtf8(str3);
        if (str2 != null) {
            byteString = ByteString.copyFromUtf8(str2);
        }
        codedOutputStream2.writeTag(9, 2);
        int computeEnumSize = CodedOutputStream.computeEnumSize(3, i7) + 0;
        if (copyFromUtf8 == null) {
            i4 = 0;
        } else {
            i4 = CodedOutputStream.computeBytesSize(4, copyFromUtf8);
        }
        computeEnumSize = ((((computeEnumSize + i4) + CodedOutputStream.computeUInt32Size(5, i8)) + CodedOutputStream.computeUInt64Size(6, j3)) + CodedOutputStream.computeUInt64Size(7, j4)) + CodedOutputStream.computeBoolSize$2563259(10);
        int i10 = 1;
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                int computeEnumSize2 = CodedOutputStream.computeEnumSize(i10, ((DeviceIdentifierType) entry.getKey()).protobufIndex) + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8((String) entry.getValue()));
                computeEnumSize += (CodedOutputStream.computeTagSize(11) + CodedOutputStream.computeRawVarint32Size(computeEnumSize2)) + computeEnumSize2;
                i10 = 1;
            }
        }
        computeEnumSize += CodedOutputStream.computeUInt32Size(12, i9);
        if (byteString == null) {
            i5 = 0;
        } else {
            i5 = CodedOutputStream.computeBytesSize(13, byteString);
        }
        computeEnumSize += i5;
        if (copyFromUtf82 == null) {
            i6 = 0;
        } else {
            i6 = CodedOutputStream.computeBytesSize(14, copyFromUtf82);
        }
        codedOutputStream2.writeRawVarint32(computeEnumSize + i6);
        codedOutputStream2.writeEnum(3, i7);
        codedOutputStream2.writeBytes(4, copyFromUtf8);
        codedOutputStream2.writeUInt32(5, i8);
        codedOutputStream2.writeUInt64(6, j3);
        codedOutputStream2.writeUInt64(7, j4);
        codedOutputStream2.writeBool(10, z);
        for (Entry entry2 : map.entrySet()) {
            codedOutputStream2.writeTag(11, 2);
            codedOutputStream2.writeRawVarint32(CodedOutputStream.computeEnumSize(1, ((DeviceIdentifierType) entry2.getKey()).protobufIndex) + CodedOutputStream.computeBytesSize(2, ByteString.copyFromUtf8((String) entry2.getValue())));
            codedOutputStream2.writeEnum(1, ((DeviceIdentifierType) entry2.getKey()).protobufIndex);
            codedOutputStream2.writeBytes(2, ByteString.copyFromUtf8((String) entry2.getValue()));
        }
        codedOutputStream2.writeUInt32(12, i9);
        if (byteString != null) {
            codedOutputStream2.writeBytes(13, byteString);
        }
        if (copyFromUtf82 != null) {
            codedOutputStream2.writeBytes(14, copyFromUtf82);
        }
    }
}
