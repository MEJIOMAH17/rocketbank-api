package ru.rocketbank.core.nfc;

import android.util.Log;
import java.nio.charset.Charset;
import java.util.Arrays;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.IntRange;

/* compiled from: NfcCardSelectResponse.kt */
public final class NfcCardSelectResponse {
    @Deprecated
    public static final Companion Companion = new Companion();
    private static final String TAG = "NFCSelectResp";
    private static final Charset sourceCharset = Charset.forName("ISO-8859-1");
    private byte[] dfName;
    private int errorCode;
    private NfcPdolTag pdolTag;

    /* compiled from: NfcCardSelectResponse.kt */
    static final class Companion {
        private Companion() {
        }
    }

    public final NfcPdolTag getPdolTag() {
        return this.pdolTag;
    }

    public final void read(byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "source");
        byte b = bArr[0];
        byte b2 = bArr[1];
        if (b != (byte) 111) {
            this.errorCode = b;
            this.errorCode <<= b2 + 8;
            return;
        }
        int i;
        if (bArr[2] != (byte) -124) {
            i = -1;
        } else {
            i = bArr[3] + 4;
            this.dfName = CollectionsKt___CollectionsKt.toByteArray(ArraysKt___ArraysKt.slice(bArr, new IntRange(4, i - 1)));
        }
        if (i != -1) {
            if (bArr[i] != (byte) -91) {
                bArr = TAG;
                StringBuilder stringBuilder = new StringBuilder("validate A5 != ");
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(r4)}, 1));
                Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
                stringBuilder.append(format);
                Log.e(bArr, stringBuilder.toString());
                return;
            }
            readTags(i + 2, bArr);
        }
    }

    private final void readTags(int i, byte[] bArr) {
        int i2;
        do {
            byte b = bArr[i];
            int i3 = i + 1;
            byte b2 = bArr[i3];
            String str = TAG;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            r6 = new Object[2];
            i2 = 0;
            r6[0] = Byte.valueOf(b);
            r6[1] = Byte.valueOf(b2);
            String format = String.format("read %02X%02X", Arrays.copyOf(r6, 2));
            Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
            Log.v(str, format);
            if (b == (byte) -65 && b2 == (byte) 12) {
                i2 = 1;
            }
            if (i2 == 0) {
                NfcTag nfcTag = null;
                if (b == (byte) -121) {
                    nfcTag = new NfcTag(b, 3, CollectionsKt___CollectionsKt.toByteArray(ArraysKt___ArraysKt.slice(bArr, new IntRange(i3, i + 2))));
                } else if (b != (byte) -97) {
                    if (b == (byte) 66) {
                        nfcTag = new NfcTag(b, 4, CollectionsKt___CollectionsKt.toByteArray(ArraysKt___ArraysKt.slice(bArr, new IntRange(i3, i + 4))));
                    } else if (b != (byte) 95) {
                        switch (b) {
                            case (byte) 79:
                                r1 = bArr[i3];
                                nfcTag = new NfcTag(b, r1 + 2, CollectionsKt___CollectionsKt.toByteArray(ArraysKt___ArraysKt.slice(bArr, new IntRange(i + 2, (r1 + i) - 1))));
                                break;
                            case (byte) 80:
                                r1 = bArr[i3];
                                nfcTag = new NfcTag(b, r1 + 2, CollectionsKt___CollectionsKt.toByteArray(ArraysKt___ArraysKt.slice(bArr, new IntRange(i + 2, (r1 + i) - 1))));
                                break;
                            default:
                                break;
                        }
                    } else if (b2 == (byte) 45) {
                        r1 = bArr[3];
                        nfcTag = new NfcTag(b, r1 + 2, CollectionsKt___CollectionsKt.toByteArray(ArraysKt___ArraysKt.slice(bArr, new IntRange(i + 2, (r1 + i) - 1))));
                    }
                } else if (b2 == (byte) 56) {
                    int i4 = i + 3;
                    this.pdolTag = new NfcPdolTag(CollectionsKt___CollectionsKt.toByteArray(ArraysKt___ArraysKt.slice(bArr, new IntRange(i4, (bArr[i + 2] + i4) - 1))));
                    nfcTag = this.pdolTag;
                }
                if (nfcTag != null) {
                    i += nfcTag.getSize();
                } else {
                    return;
                }
            }
            if (i < bArr.length - 3) {
            }
        } while (i2 == 0);
    }
}
