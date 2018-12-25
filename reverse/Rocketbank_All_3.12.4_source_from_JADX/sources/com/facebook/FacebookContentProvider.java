package com.facebook;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.facebook.internal.NativeAppCallAttachmentStore;
import java.io.FileNotFoundException;
import java.util.UUID;

public class FacebookContentProvider extends ContentProvider {
    private static final String ATTACHMENT_URL_BASE = "content://com.facebook.app.FacebookContentProvider";
    private static final String TAG = "com.facebook.FacebookContentProvider";

    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    public String getType(Uri uri) {
        return null;
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    public boolean onCreate() {
        return true;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    public static String getAttachmentUrl(String str, UUID uuid, String str2) {
        return String.format("%s%s/%s/%s", new Object[]{ATTACHMENT_URL_BASE, str, uuid.toString(), str2});
    }

    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        uri = parseCallIdAndAttachmentName(uri);
        if (uri == null) {
            throw new FileNotFoundException();
        }
        try {
            return ParcelFileDescriptor.open(NativeAppCallAttachmentStore.openAttachment((UUID) uri.first, (String) uri.second), 268435456);
        } catch (Uri uri2) {
            Log.e(TAG, "Got unexpected exception:".concat(String.valueOf(uri2)));
            throw uri2;
        }
    }

    android.util.Pair<java.util.UUID, java.lang.String> parseCallIdAndAttachmentName(android.net.Uri r3) {
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
        r2 = this;
        r3 = r3.getPath();	 Catch:{ Exception -> 0x001e }
        r0 = 1;	 Catch:{ Exception -> 0x001e }
        r3 = r3.substring(r0);	 Catch:{ Exception -> 0x001e }
        r1 = "/";	 Catch:{ Exception -> 0x001e }
        r3 = r3.split(r1);	 Catch:{ Exception -> 0x001e }
        r1 = 0;	 Catch:{ Exception -> 0x001e }
        r1 = r3[r1];	 Catch:{ Exception -> 0x001e }
        r3 = r3[r0];	 Catch:{ Exception -> 0x001e }
        r0 = java.util.UUID.fromString(r1);	 Catch:{ Exception -> 0x001e }
        r1 = new android.util.Pair;	 Catch:{ Exception -> 0x001e }
        r1.<init>(r0, r3);	 Catch:{ Exception -> 0x001e }
        return r1;
    L_0x001e:
        r3 = 0;
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.FacebookContentProvider.parseCallIdAndAttachmentName(android.net.Uri):android.util.Pair<java.util.UUID, java.lang.String>");
    }
}
