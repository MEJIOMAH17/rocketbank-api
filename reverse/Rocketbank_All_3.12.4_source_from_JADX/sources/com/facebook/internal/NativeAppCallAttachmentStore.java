package com.facebook.internal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import com.facebook.FacebookContentProvider;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.share.internal.ShareConstants;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

public final class NativeAppCallAttachmentStore {
    static final String ATTACHMENTS_DIR_NAME = "com.facebook.NativeAppCallAttachmentStore.files";
    private static final String TAG = "com.facebook.internal.NativeAppCallAttachmentStore";
    private static File attachmentsDirectory;

    public static final class Attachment {
        private final String attachmentName;
        private final String attachmentUrl;
        private Bitmap bitmap;
        private final UUID callId;
        private boolean isContentUri;
        private Uri originalUri;
        private boolean shouldCreateFile;

        private Attachment(UUID uuid, Bitmap bitmap, Uri uri) {
            this.callId = uuid;
            this.bitmap = bitmap;
            this.originalUri = uri;
            boolean z = true;
            if (uri != null) {
                bitmap = uri.getScheme();
                if (Param.CONTENT.equalsIgnoreCase(bitmap)) {
                    this.isContentUri = true;
                    if (uri.getAuthority() == null || uri.getAuthority().startsWith(ShareConstants.WEB_DIALOG_PARAM_MEDIA) != null) {
                        z = false;
                    }
                    this.shouldCreateFile = z;
                } else if ("file".equalsIgnoreCase(uri.getScheme())) {
                    this.shouldCreateFile = true;
                } else if (Utility.isWebUri(uri) == null) {
                    throw new FacebookException("Unsupported scheme for media Uri : ".concat(String.valueOf(bitmap)));
                }
            } else if (bitmap != null) {
                this.shouldCreateFile = true;
            } else {
                throw new FacebookException("Cannot share media without a bitmap or Uri set");
            }
            this.attachmentName = this.shouldCreateFile == null ? null : UUID.randomUUID().toString();
            this.attachmentUrl = this.shouldCreateFile == null ? this.originalUri.toString() : FacebookContentProvider.getAttachmentUrl(FacebookSdk.getApplicationId(), uuid, this.attachmentName);
        }

        public final String getAttachmentUrl() {
            return this.attachmentUrl;
        }
    }

    private NativeAppCallAttachmentStore() {
    }

    public static Attachment createAttachment(UUID uuid, Bitmap bitmap) {
        Validate.notNull(uuid, "callId");
        Validate.notNull(bitmap, "attachmentBitmap");
        return new Attachment(uuid, bitmap, null);
    }

    public static Attachment createAttachment(UUID uuid, Uri uri) {
        Validate.notNull(uuid, "callId");
        Validate.notNull(uri, "attachmentUri");
        return new Attachment(uuid, null, uri);
    }

    private static void processAttachmentBitmap(Bitmap bitmap, File file) throws IOException {
        Closeable fileOutputStream = new FileOutputStream(file);
        try {
            bitmap.compress(CompressFormat.JPEG, 100, fileOutputStream);
        } finally {
            Utility.closeQuietly(fileOutputStream);
        }
    }

    private static void processAttachmentFile(Uri uri, boolean z, File file) throws IOException {
        Closeable fileOutputStream = new FileOutputStream(file);
        if (z) {
            z = FacebookSdk.getApplicationContext().getContentResolver().openInputStream(uri);
        } else {
            try {
                z = new FileInputStream(uri.getPath());
            } catch (Throwable th) {
                Utility.closeQuietly(fileOutputStream);
            }
        }
        Utility.copyAndCloseInputStream(z, fileOutputStream);
        Utility.closeQuietly(fileOutputStream);
    }

    public static void addAttachments(java.util.Collection<com.facebook.internal.NativeAppCallAttachmentStore.Attachment> r5) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        if (r5 == 0) goto L_0x008a;
    L_0x0002:
        r0 = r5.size();
        if (r0 != 0) goto L_0x000a;
    L_0x0008:
        goto L_0x008a;
    L_0x000a:
        r0 = attachmentsDirectory;
        if (r0 != 0) goto L_0x0011;
    L_0x000e:
        cleanupAllAttachments();
    L_0x0011:
        ensureAttachmentsDirectoryExists();
        r0 = new java.util.ArrayList;
        r0.<init>();
        r5 = r5.iterator();	 Catch:{ IOException -> 0x0060 }
    L_0x001d:
        r1 = r5.hasNext();	 Catch:{ IOException -> 0x0060 }
        if (r1 == 0) goto L_0x005f;	 Catch:{ IOException -> 0x0060 }
    L_0x0023:
        r1 = r5.next();	 Catch:{ IOException -> 0x0060 }
        r1 = (com.facebook.internal.NativeAppCallAttachmentStore.Attachment) r1;	 Catch:{ IOException -> 0x0060 }
        r2 = r1.shouldCreateFile;	 Catch:{ IOException -> 0x0060 }
        if (r2 == 0) goto L_0x001d;	 Catch:{ IOException -> 0x0060 }
    L_0x002f:
        r2 = r1.callId;	 Catch:{ IOException -> 0x0060 }
        r3 = r1.attachmentName;	 Catch:{ IOException -> 0x0060 }
        r4 = 1;	 Catch:{ IOException -> 0x0060 }
        r2 = getAttachmentFile(r2, r3, r4);	 Catch:{ IOException -> 0x0060 }
        r0.add(r2);	 Catch:{ IOException -> 0x0060 }
        r3 = r1.bitmap;	 Catch:{ IOException -> 0x0060 }
        if (r3 == 0) goto L_0x004d;	 Catch:{ IOException -> 0x0060 }
    L_0x0045:
        r1 = r1.bitmap;	 Catch:{ IOException -> 0x0060 }
        processAttachmentBitmap(r1, r2);	 Catch:{ IOException -> 0x0060 }
        goto L_0x001d;	 Catch:{ IOException -> 0x0060 }
    L_0x004d:
        r3 = r1.originalUri;	 Catch:{ IOException -> 0x0060 }
        if (r3 == 0) goto L_0x001d;	 Catch:{ IOException -> 0x0060 }
    L_0x0053:
        r3 = r1.originalUri;	 Catch:{ IOException -> 0x0060 }
        r1 = r1.isContentUri;	 Catch:{ IOException -> 0x0060 }
        processAttachmentFile(r3, r1, r2);	 Catch:{ IOException -> 0x0060 }
        goto L_0x001d;
    L_0x005f:
        return;
    L_0x0060:
        r5 = move-exception;
        r1 = TAG;
        r2 = "Got unexpected exception:";
        r3 = java.lang.String.valueOf(r5);
        r2 = r2.concat(r3);
        android.util.Log.e(r1, r2);
        r0 = r0.iterator();
    L_0x0074:
        r1 = r0.hasNext();
        if (r1 == 0) goto L_0x0084;
    L_0x007a:
        r1 = r0.next();
        r1 = (java.io.File) r1;
        r1.delete();	 Catch:{ Exception -> 0x0074 }
        goto L_0x0074;
    L_0x0084:
        r0 = new com.facebook.FacebookException;
        r0.<init>(r5);
        throw r0;
    L_0x008a:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.NativeAppCallAttachmentStore.addAttachments(java.util.Collection):void");
    }

    public static void cleanupAttachmentsForCall(UUID uuid) {
        uuid = getAttachmentsDirectoryForCall(uuid, false);
        if (uuid != null) {
            Utility.deleteDirectory(uuid);
        }
    }

    public static java.io.File openAttachment(java.util.UUID r1, java.lang.String r2) throws java.io.FileNotFoundException {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = com.facebook.internal.Utility.isNullOrEmpty(r2);
        if (r0 != 0) goto L_0x0015;
    L_0x0006:
        if (r1 != 0) goto L_0x0009;
    L_0x0008:
        goto L_0x0015;
    L_0x0009:
        r0 = 0;
        r1 = getAttachmentFile(r1, r2, r0);	 Catch:{ IOException -> 0x000f }
        return r1;
    L_0x000f:
        r1 = new java.io.FileNotFoundException;
        r1.<init>();
        throw r1;
    L_0x0015:
        r1 = new java.io.FileNotFoundException;
        r1.<init>();
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.NativeAppCallAttachmentStore.openAttachment(java.util.UUID, java.lang.String):java.io.File");
    }

    static synchronized File getAttachmentsDirectory() {
        File file;
        synchronized (NativeAppCallAttachmentStore.class) {
            if (attachmentsDirectory == null) {
                attachmentsDirectory = new File(FacebookSdk.getApplicationContext().getCacheDir(), ATTACHMENTS_DIR_NAME);
            }
            file = attachmentsDirectory;
        }
        return file;
    }

    static File ensureAttachmentsDirectoryExists() {
        File attachmentsDirectory = getAttachmentsDirectory();
        attachmentsDirectory.mkdirs();
        return attachmentsDirectory;
    }

    static File getAttachmentsDirectoryForCall(UUID uuid, boolean z) {
        if (attachmentsDirectory == null) {
            return null;
        }
        File file = new File(attachmentsDirectory, uuid.toString());
        if (z && file.exists() == null) {
            file.mkdirs();
        }
        return file;
    }

    static java.io.File getAttachmentFile(java.util.UUID r2, java.lang.String r3, boolean r4) throws java.io.IOException {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = getAttachmentsDirectoryForCall(r2, r4);
        r4 = 0;
        if (r2 != 0) goto L_0x0008;
    L_0x0007:
        return r4;
    L_0x0008:
        r0 = new java.io.File;	 Catch:{ UnsupportedEncodingException -> 0x0014 }
        r1 = "UTF-8";	 Catch:{ UnsupportedEncodingException -> 0x0014 }
        r3 = java.net.URLEncoder.encode(r3, r1);	 Catch:{ UnsupportedEncodingException -> 0x0014 }
        r0.<init>(r2, r3);	 Catch:{ UnsupportedEncodingException -> 0x0014 }
        return r0;
    L_0x0014:
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.NativeAppCallAttachmentStore.getAttachmentFile(java.util.UUID, java.lang.String, boolean):java.io.File");
    }

    public static void cleanupAllAttachments() {
        Utility.deleteDirectory(getAttachmentsDirectory());
    }
}
