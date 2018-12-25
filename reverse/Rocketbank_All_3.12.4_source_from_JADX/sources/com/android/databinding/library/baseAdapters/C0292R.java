package com.android.databinding.library.baseAdapters;

/* renamed from: com.android.databinding.library.baseAdapters.R */
public final class C0292R {
    public final String alwaysSendButtonTitle;
    public final String cancelButtonTitle;
    public final String message;
    public final String sendButtonTitle;
    public final boolean showAlwaysSendButton;
    public final boolean showCancelButton;
    public final String title;

    /* renamed from: com.android.databinding.library.baseAdapters.R$id */
    public static final class id {
        public final int identifierMask;
        public final int logBufferSize;
        public final int maxChainedExceptionDepth;
        public final int maxCompleteSessionsCount;
        public final int maxCustomExceptionEvents;
        public final int maxCustomKeyValuePairs;
        public final boolean sendSessionWithoutCrash;

        public id(int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            this.logBufferSize = i;
            this.maxChainedExceptionDepth = i2;
            this.maxCustomExceptionEvents = i3;
            this.maxCustomKeyValuePairs = i4;
            this.identifierMask = i5;
            this.sendSessionWithoutCrash = z;
            this.maxCompleteSessionsCount = i6;
        }
    }

    public C0292R(String str, String str2, String str3, boolean z, String str4, boolean z2, String str5) {
        this.title = str;
        this.message = str2;
        this.sendButtonTitle = str3;
        this.showCancelButton = z;
        this.cancelButtonTitle = str4;
        this.showAlwaysSendButton = z2;
        this.alwaysSendButtonTitle = str5;
    }
}
