package com.shockwave.pdfium;

import android.os.ParcelFileDescriptor;
import android.support.v4.util.ArrayMap;
import java.util.Map;

public final class PdfDocument {
    long mNativeDocPtr;
    final Map<Integer, Long> mNativePagesPtr = new ArrayMap();
    ParcelFileDescriptor parcelFileDescriptor;

    PdfDocument() {
    }
}
