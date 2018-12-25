package ru.rocketbank.core.nfc;

import android.util.Log;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.IntRange;

/* compiled from: NfcPdolTag.kt */
public final class NfcPdolTag extends NfcTag {
    public NfcPdolTag(byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "tagBody");
        super(40760, 3, bArr);
    }

    public final List<Byte> pdolTags() {
        byte[] tagBody = getTagBody();
        if ((tagBody.length == 0 ? 1 : 0) != 0) {
            return null;
        }
        List<Byte> arrayList = new ArrayList();
        int i = 0;
        Pair pair;
        do {
            byte b = tagBody[i];
            byte b2 = tagBody[i + 1];
            Object sliceArray = ArraysKt___ArraysKt.sliceArray(tagBody, new IntRange(i, tagBody.length));
            Intrinsics.checkParameterIsNotNull(sliceArray, "byteArray");
            if (b != (byte) -97) {
                if (b == (byte) 95) {
                    if (b2 == (byte) 42) {
                        pair = new Pair(Integer.valueOf(3), CollectionsKt__CollectionsKt.arrayListOf(Byte.valueOf((byte) 2), Byte.valueOf((byte) -125)));
                    } else if (b2 == (byte) 45) {
                        Charset forName = Charset.forName("ISO-8859-1");
                        Intrinsics.checkExpressionValueIsNotNull(forName, "Charset.forName(\"ISO-8859-1\")");
                        sliceArray = "ru".getBytes(forName);
                        Intrinsics.checkExpressionValueIsNotNull(sliceArray, "(this as java.lang.String).getBytes(charset)");
                        List mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(Byte.valueOf((byte) ArraysKt___ArraysKt.toList(sliceArray).size()));
                        mutableListOf.addAll(r8);
                        pair = new Pair(Integer.valueOf(3), mutableListOf);
                    }
                }
                pair = null;
            } else {
                pair = parse9FTags(b2, sliceArray);
            }
            String format;
            if (pair != null) {
                i += ((Number) pair.getFirst()).intValue();
                arrayList.addAll((Collection) pair.getSecond());
                StringBuilder stringBuilder = new StringBuilder("Data ");
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                format = String.format("%02X%02X", Arrays.copyOf(new Object[]{Byte.valueOf(b), Byte.valueOf(b2)}, 2));
                Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
                stringBuilder.append(format);
                stringBuilder.append(" : ");
                stringBuilder.append(toHexString((List) pair.getSecond()));
                Log.v("PDOL", stringBuilder.toString());
            } else {
                StringBuilder stringBuilder2 = new StringBuilder("Warn unknown tag: ");
                StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                format = String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
                Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
                stringBuilder2.append(format);
                StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
                format = String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(b2)}, 1));
                Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
                stringBuilder2.append(format);
                Log.e("PDOL", stringBuilder2.toString());
            }
            if (i >= tagBody.length) {
                break;
            }
        } while (pair != null);
        return arrayList;
    }

    private static String toHexString(List<Byte> list) {
        StringBuffer stringBuffer = new StringBuffer();
        for (Number byteValue : list) {
            byte byteValue2 = byteValue.byteValue();
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(byteValue2)}, 1));
            Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
            stringBuffer.append(format);
            stringBuffer.append(" ");
        }
        list = stringBuffer.toString();
        Intrinsics.checkExpressionValueIsNotNull(list, "buffer.toString()");
        return list;
    }

    private static Pair<Integer, List<Byte>> parse9FTags(byte b, byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "byteArray");
        List arrayList = new ArrayList();
        if (b == (byte) 2) {
            arrayList.addAll(CollectionsKt__CollectionsKt.listOf((Object[]) new Byte[]{Byte.valueOf((byte) 0), Byte.valueOf((byte) 0), Byte.valueOf((byte) 0), Byte.valueOf((byte) 0), Byte.valueOf((byte) 16), Byte.valueOf((byte) 0)}));
        } else if (b == (byte) 26) {
            arrayList.addAll(CollectionsKt__CollectionsKt.listOf((Object[]) new Byte[]{Byte.valueOf((byte) 2), Byte.valueOf((byte) -125)}));
        } else if (b == (byte) 42) {
            arrayList.addAll(CollectionsKt__CollectionsKt.listOf((Object[]) new Byte[]{Byte.valueOf((byte) 2), Byte.valueOf((byte) -125)}));
        } else if (b == (byte) 55) {
            b = (int) System.nanoTime();
            arrayList.addAll(CollectionsKt__CollectionsKt.listOf((Object[]) new Byte[]{Byte.valueOf((byte) b), Byte.valueOf((byte) (b >> 2)), Byte.valueOf((byte) (b >> 4)), Byte.valueOf((byte) (b >> (byte) 6))}));
        } else if (b != (byte) 102) {
            switch (b) {
                case (byte) 88:
                    arrayList.addAll(CollectionsKt__CollectionsKt.listOf((Object) Byte.valueOf((byte) 1)));
                    break;
                case (byte) 89:
                    arrayList.addAll(CollectionsKt__CollectionsKt.listOf((Object[]) new Byte[]{Byte.valueOf((byte) -64), Byte.valueOf(Byte.MIN_VALUE), Byte.valueOf((byte) 0)}));
                    break;
                case (byte) 90:
                    arrayList.addAll(CollectionsKt__CollectionsKt.listOf((Object) Byte.valueOf((byte) 0)));
                    break;
                default:
                    break;
            }
        } else {
            arrayList.addAll(CollectionsKt__CollectionsKt.listOf((Object[]) new Byte[]{Byte.valueOf((byte) -74), Byte.valueOf((byte) 32), Byte.valueOf((byte) -64), Byte.valueOf((byte) 0)}));
        }
        if (arrayList.isEmpty() != (byte) 0) {
            for (bArr = bArr[2]; bArr > null; bArr = (byte) (bArr - 1)) {
                arrayList.add(Byte.valueOf((byte) 0));
            }
        }
        return new Pair(Integer.valueOf(3), arrayList);
    }
}
