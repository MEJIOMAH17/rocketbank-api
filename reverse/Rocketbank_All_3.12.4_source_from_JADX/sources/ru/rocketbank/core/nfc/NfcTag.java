package ru.rocketbank.core.nfc;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: NfcTag.kt */
public class NfcTag {
    private static final int CARD_NFC_TAG_ADF = 79;
    private static final int CARD_NFC_TAG_APP_LABEL = 79;
    private static final int CARD_NFC_TAG_IIN = 66;
    public static final Companion Companion = new Companion();
    private final int size;
    private final byte[] tagBody;
    private final int tagType;

    /* compiled from: NfcTag.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public NfcTag(int i, int i2, byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "tagBody");
        this.tagType = i;
        this.size = i2;
        this.tagBody = bArr;
    }

    public final int getSize() {
        return this.size;
    }

    public final byte[] getTagBody() {
        return this.tagBody;
    }
}
