package ru.rocketbank.core.nfc;

import android.nfc.tech.IsoDep;
import android.util.Log;
import java.io.Closeable;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.IntRange;

/* compiled from: NfcCardData.kt */
public final class NfcCardData {
    public static final Companion Companion = new Companion();
    private static final String TAG = "NfcCardData";
    private final IsoDep isoDep;

    /* compiled from: NfcCardData.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public NfcCardData(IsoDep isoDep) {
        Intrinsics.checkParameterIsNotNull(isoDep, "isoDep");
        this.isoDep = isoDep;
    }

    public final CardDataRaw readCard() {
        Throwable th;
        Throwable th2;
        try {
            Closeable closeable = (Closeable) this.isoDep;
            try {
                byte b;
                byte[] sliceArray;
                byte[] bArr;
                int length;
                List toMutableList;
                Object transceive;
                NfcCardSelectResponse nfcCardSelectResponse;
                NfcPdolTag pdolTag;
                List arrayList;
                CardDataRaw sendReadRecords;
                CardDataRaw sendReadRecords2;
                CardDataRaw sendReadRecords3;
                CardDataRaw sendReadRecords4;
                CardDataRaw sendReadRecords5;
                Unit unit;
                this.isoDep.connect();
                byte[] transceive2 = this.isoDep.transceive(new byte[]{(byte) 0, (byte) -92, (byte) 4, (byte) 0, (byte) 14, (byte) 50, (byte) 80, (byte) 65, (byte) 89, (byte) 46, (byte) 83, (byte) 89, (byte) 83, (byte) 46, (byte) 68, (byte) 68, (byte) 70, (byte) 48, (byte) 49, (byte) 0});
                if (transceive2 != null) {
                    if ((transceive2.length == 0 ? (byte) 1 : (byte) 0) == (byte) 0) {
                        printHex(transceive2);
                        if (transceive2[0] != (byte) 111) {
                            Log.e(TAG, "Not 0x6F");
                        } else {
                            String str;
                            StringBuilder stringBuilder;
                            StringCompanionObject stringCompanionObject;
                            String format;
                            if (transceive2[23] != (byte) 97) {
                                str = TAG;
                                stringBuilder = new StringBuilder("Not 0x61 -> ");
                                stringCompanionObject = StringCompanionObject.INSTANCE;
                                format = String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
                                Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
                                stringBuilder.append(format);
                                Log.e(str, stringBuilder.toString());
                            } else {
                                if (transceive2[25] != (byte) 79) {
                                    str = TAG;
                                    stringBuilder = new StringBuilder("Not 0x4f -> ");
                                    stringCompanionObject = StringCompanionObject.INSTANCE;
                                    format = String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
                                    Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
                                    stringBuilder.append(format);
                                    Log.e(str, stringBuilder.toString());
                                } else {
                                    b = transceive2[26];
                                    Log.v(TAG, "Aid len = ".concat(String.valueOf(b)));
                                    int i = b + 27;
                                    sliceArray = ArraysKt___ArraysKt.sliceArray(transceive2, new IntRange(27, i - 1));
                                    printHex(sliceArray);
                                    if (transceive2[i] == (byte) 80) {
                                        byte b2 = transceive2[i + 1];
                                        i += 2;
                                        Log.v(TAG, "Label len = ".concat(String.valueOf(b2)));
                                        List toMutableList2 = ArraysKt___ArraysKt.toMutableList(ArraysKt___ArraysKt.sliceArray(transceive2, new IntRange(i, (b2 + i) - 1)));
                                        format = TAG;
                                        StringBuilder stringBuilder2 = new StringBuilder("Got card label: ");
                                        transceive2 = CollectionsKt___CollectionsKt.toByteArray(toMutableList2);
                                        Charset forName = Charset.forName("ISO-8859-1");
                                        Intrinsics.checkExpressionValueIsNotNull(forName, "Charset.forName(\"ISO-8859-1\")");
                                        stringBuilder2.append(new String(transceive2, forName));
                                        Log.v(format, stringBuilder2.toString());
                                    }
                                    if (sliceArray == null) {
                                        bArr = new byte[]{(byte) 0, (byte) -92, (byte) 4, (byte) 0};
                                        length = sliceArray.length;
                                        toMutableList = ArraysKt___ArraysKt.toMutableList(bArr);
                                        toMutableList.add(Byte.valueOf((byte) length));
                                        toMutableList.addAll(ArraysKt___ArraysKt.toList(sliceArray));
                                        toMutableList.add(Byte.valueOf((byte) 0));
                                        Log.v(TAG, "Selecting with aid");
                                        printHex(CollectionsKt___CollectionsKt.toByteArray(toMutableList));
                                        transceive = this.isoDep.transceive(CollectionsKt___CollectionsKt.toByteArray(toMutableList));
                                        Intrinsics.checkExpressionValueIsNotNull(transceive, "result");
                                        printHex(transceive);
                                        nfcCardSelectResponse = new NfcCardSelectResponse();
                                        nfcCardSelectResponse.read(transceive);
                                        pdolTag = nfcCardSelectResponse.getPdolTag();
                                        if (pdolTag == null) {
                                            toMutableList = pdolTag.pdolTags();
                                            if (toMutableList == null) {
                                                arrayList = new ArrayList();
                                                arrayList.add(Byte.valueOf((byte) -125));
                                                arrayList.add(Byte.valueOf((byte) toMutableList.size()));
                                                arrayList.addAll(toMutableList);
                                                bArr = CollectionsKt___CollectionsKt.toByteArray(arrayList);
                                            } else {
                                                bArr = new byte[]{(byte) -125, (byte) 0};
                                            }
                                        } else {
                                            bArr = new byte[]{(byte) -125, (byte) 0};
                                        }
                                        b = sendGetProcessingOptions(bArr);
                                        Log.v(TAG, "Start read records");
                                        sendReadRecords = sendReadRecords((byte) 0, b);
                                        sendReadRecords2 = sendReadRecords((byte) 1, b);
                                        sendReadRecords3 = sendReadRecords((byte) 2, b);
                                        sendReadRecords4 = sendReadRecords((byte) 3, b);
                                        sendReadRecords5 = sendReadRecords((byte) 4, b);
                                        if (sendReadRecords != null) {
                                            CloseableKt.closeFinally(closeable, null);
                                            return sendReadRecords;
                                        } else if (sendReadRecords2 != null) {
                                            CloseableKt.closeFinally(closeable, null);
                                            return sendReadRecords2;
                                        } else if (sendReadRecords3 != null) {
                                            CloseableKt.closeFinally(closeable, null);
                                            return sendReadRecords3;
                                        } else if (sendReadRecords4 != null) {
                                            CloseableKt.closeFinally(closeable, null);
                                            return sendReadRecords4;
                                        } else if (sendReadRecords5 == null) {
                                            CloseableKt.closeFinally(closeable, null);
                                            return sendReadRecords5;
                                        } else {
                                            CloseableKt.closeFinally(closeable, null);
                                            return null;
                                        }
                                    }
                                    unit = Unit.INSTANCE;
                                    CloseableKt.closeFinally(closeable, null);
                                    return null;
                                }
                            }
                        }
                    }
                }
                sliceArray = null;
                if (sliceArray == null) {
                    unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(closeable, null);
                    return null;
                }
                bArr = new byte[]{(byte) 0, (byte) -92, (byte) 4, (byte) 0};
                length = sliceArray.length;
                toMutableList = ArraysKt___ArraysKt.toMutableList(bArr);
                toMutableList.add(Byte.valueOf((byte) length));
                toMutableList.addAll(ArraysKt___ArraysKt.toList(sliceArray));
                toMutableList.add(Byte.valueOf((byte) 0));
                Log.v(TAG, "Selecting with aid");
                printHex(CollectionsKt___CollectionsKt.toByteArray(toMutableList));
                transceive = this.isoDep.transceive(CollectionsKt___CollectionsKt.toByteArray(toMutableList));
                Intrinsics.checkExpressionValueIsNotNull(transceive, "result");
                printHex(transceive);
                nfcCardSelectResponse = new NfcCardSelectResponse();
                nfcCardSelectResponse.read(transceive);
                pdolTag = nfcCardSelectResponse.getPdolTag();
                if (pdolTag == null) {
                    bArr = new byte[]{(byte) -125, (byte) 0};
                } else {
                    toMutableList = pdolTag.pdolTags();
                    if (toMutableList == null) {
                        bArr = new byte[]{(byte) -125, (byte) 0};
                    } else {
                        arrayList = new ArrayList();
                        arrayList.add(Byte.valueOf((byte) -125));
                        arrayList.add(Byte.valueOf((byte) toMutableList.size()));
                        arrayList.addAll(toMutableList);
                        bArr = CollectionsKt___CollectionsKt.toByteArray(arrayList);
                    }
                }
                b = sendGetProcessingOptions(bArr);
                Log.v(TAG, "Start read records");
                sendReadRecords = sendReadRecords((byte) 0, b);
                sendReadRecords2 = sendReadRecords((byte) 1, b);
                sendReadRecords3 = sendReadRecords((byte) 2, b);
                sendReadRecords4 = sendReadRecords((byte) 3, b);
                sendReadRecords5 = sendReadRecords((byte) 4, b);
                if (sendReadRecords != null) {
                    CloseableKt.closeFinally(closeable, null);
                    return sendReadRecords;
                } else if (sendReadRecords2 != null) {
                    CloseableKt.closeFinally(closeable, null);
                    return sendReadRecords2;
                } else if (sendReadRecords3 != null) {
                    CloseableKt.closeFinally(closeable, null);
                    return sendReadRecords3;
                } else if (sendReadRecords4 != null) {
                    CloseableKt.closeFinally(closeable, null);
                    return sendReadRecords4;
                } else if (sendReadRecords5 == null) {
                    CloseableKt.closeFinally(closeable, null);
                    return null;
                } else {
                    CloseableKt.closeFinally(closeable, null);
                    return sendReadRecords5;
                }
            } catch (Throwable th22) {
                Throwable th3 = th22;
                th22 = th;
                th = th3;
            }
            CloseableKt.closeFinally(closeable, th22);
            throw th;
        } catch (Throwable th4) {
            Log.e(TAG, "Ooops", th4);
        }
    }

    private final byte sendGetProcessingOptions(byte[] bArr) {
        List toMutableList = ArraysKt___ArraysKt.toMutableList(new byte[]{Byte.MIN_VALUE, (byte) -88, (byte) 0, (byte) 0});
        toMutableList.add(Byte.valueOf((byte) bArr.length));
        toMutableList.addAll(ArraysKt___ArraysKt.toList(bArr));
        toMutableList.add(Byte.valueOf((byte) 0));
        bArr = CollectionsKt___CollectionsKt.toByteArray(toMutableList);
        printHex(bArr);
        bArr = this.isoDep.transceive(bArr);
        Intrinsics.checkExpressionValueIsNotNull(bArr, "result");
        printHex(bArr);
        byte b = bArr[0];
        if (b == (byte) 105) {
            return (byte) 0;
        }
        if (b == (byte) 119) {
            int length = bArr.length - 2;
            int i = 1;
            do {
                byte b2 = bArr[i];
                i++;
                if (b2 == (byte) -108) {
                    break;
                }
            } while (i < length);
            if (i != length) {
                return (byte) ((bArr[i + 1] & 248) ^ 4);
            }
        }
        return 12;
    }

    private final CardDataRaw sendReadRecords(byte b, byte b2) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder("send read record ");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
        Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
        stringBuilder.append(format);
        stringBuilder.append(" ");
        stringCompanionObject = StringCompanionObject.INSTANCE;
        format = String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(b2)}, 1));
        Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
        stringBuilder.append(format);
        Log.v(str, stringBuilder.toString());
        byte[] bArr = new byte[]{(byte) 0, (byte) -78, b, b2, (byte) 0};
        printHex(bArr);
        b2 = this.isoDep.transceive(bArr);
        Intrinsics.checkExpressionValueIsNotNull(b2, "result");
        printHex(b2);
        if (b2[0] == (byte) 105 || b2[0] != (byte) 112) {
            return null;
        }
        CardDataRaw cardDataRaw = new CardDataRaw();
        parseCardData(cardDataRaw, ArraysKt___ArraysKt.sliceArray(b2, new IntRange(2, b2.length)));
        if (cardDataRaw.getPan() == null) {
            int i = 1;
            while (true) {
                i++;
                byte b3 = b2[i];
                byte b4 = b2[i + 2];
                if (i >= b2.length - 3 || (b3 == (byte) 86 && b4 == (byte) 66)) {
                }
            }
            if (i == b2.length - 3) {
                return null;
            }
            readTrack1Data(b2, i, cardDataRaw);
        }
        return cardDataRaw;
    }

    private static void parseCardData(CardDataRaw cardDataRaw, byte[] bArr) {
        while (true) {
            if ((bArr.length == 0 ? 1 : 0) == 0) {
                byte b = bArr[0];
                byte b2 = bArr[1];
                if (b == (byte) 90) {
                    int i = b2 + 2;
                    byte[] sliceArray = ArraysKt___ArraysKt.sliceArray(bArr, new IntRange(2, i - 1));
                    StringBuilder stringBuilder = new StringBuilder();
                    for (byte b3 : sliceArray) {
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        String format = String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(b3)}, 1));
                        Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
                        stringBuilder.append(format);
                    }
                    cardDataRaw.setPan(stringBuilder.toString());
                    bArr = ArraysKt___ArraysKt.sliceArray(bArr, new IntRange(i, bArr.length));
                } else if (b != (byte) 95) {
                    break;
                } else if (b2 != (byte) 36) {
                    break;
                } else {
                    b = bArr[3];
                    b2 = bArr[4];
                    StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                    String format2 = String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(b2)}, 1));
                    Intrinsics.checkExpressionValueIsNotNull(format2, "java.lang.String.format(format, *args)");
                    cardDataRaw.setMonth(Integer.parseInt(format2));
                    StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
                    String format3 = String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
                    Intrinsics.checkExpressionValueIsNotNull(format3, "java.lang.String.format(format, *args)");
                    cardDataRaw.setYear(Integer.parseInt(format3));
                    bArr = ArraysKt___ArraysKt.sliceArray(bArr, new IntRange(7, bArr.length));
                }
            } else {
                return;
            }
        }
    }

    private static boolean readTrack1Data(byte[] r7, int r8, ru.rocketbank.core.nfc.CardDataRaw r9) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = r8 + 2;
        r1 = r7[r0];
        r2 = 0;
        r3 = 66;
        if (r1 == r3) goto L_0x000a;
    L_0x0009:
        return r2;
    L_0x000a:
        r1 = 1;
        r0 = r0 + r1;
        r3 = r7[r0];
        r4 = 94;
        r5 = r7.length;
        r5 = r5 - r1;
        if (r0 >= r5) goto L_0x0016;
    L_0x0014:
        if (r3 != r4) goto L_0x000a;
    L_0x0016:
        r3 = r0 + 1;
    L_0x0018:
        r3 = r3 + r1;
        r5 = r7[r3];
        r6 = r7.length;
        r6 = r6 - r1;
        if (r3 >= r6) goto L_0x0021;
    L_0x001f:
        if (r5 != r4) goto L_0x0018;
    L_0x0021:
        r4 = new kotlin.ranges.IntRange;
        r8 = r8 + 3;
        r0 = r0 - r1;
        r4.<init>(r8, r0);
        r8 = kotlin.collections.ArraysKt___ArraysKt.sliceArray(r7, r4);
        r0 = "ISO-8859-1";
        r0 = java.nio.charset.Charset.forName(r0);
        r4 = "Charset.forName(\"ISO-8859-1\")";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r4);
        r4 = new java.lang.String;
        r4.<init>(r8, r0);
        r9.setPan(r4);
        r8 = new kotlin.ranges.IntRange;
        r0 = r3 + 1;
        r3 = r3 + 5;
        r8.<init>(r0, r3);
        r7 = kotlin.collections.ArraysKt___ArraysKt.sliceArray(r7, r8);
        r8 = "ISO-8859-1";
        r8 = java.nio.charset.Charset.forName(r8);
        r0 = "Charset.forName(\"ISO-8859-1\")";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r8, r0);
        r0 = new java.lang.String;
        r0.<init>(r7, r8);
        r7 = 2;
        r8 = r0.substring(r2, r7);	 Catch:{ Exception -> 0x006e }
        r2 = "(this as java.lang.Strin…ing(startIndex, endIndex)";	 Catch:{ Exception -> 0x006e }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r8, r2);	 Catch:{ Exception -> 0x006e }
        r8 = java.lang.Integer.parseInt(r8);	 Catch:{ Exception -> 0x006e }
        r9.setYear(r8);	 Catch:{ Exception -> 0x006e }
    L_0x006e:
        r8 = 4;
        r7 = r0.substring(r7, r8);	 Catch:{ Exception -> 0x007f }
        r8 = "(this as java.lang.Strin…ing(startIndex, endIndex)";	 Catch:{ Exception -> 0x007f }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, r8);	 Catch:{ Exception -> 0x007f }
        r7 = java.lang.Integer.parseInt(r7);	 Catch:{ Exception -> 0x007f }
        r9.setMonth(r7);	 Catch:{ Exception -> 0x007f }
    L_0x007f:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.nfc.NfcCardData.readTrack1Data(byte[], int, ru.rocketbank.core.nfc.CardDataRaw):boolean");
    }

    private static void printHex(byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "byteArray");
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
            Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
            stringBuffer.append(format);
            stringBuffer.append(" ");
        }
        Log.v(TAG, stringBuffer.toString());
    }
}
