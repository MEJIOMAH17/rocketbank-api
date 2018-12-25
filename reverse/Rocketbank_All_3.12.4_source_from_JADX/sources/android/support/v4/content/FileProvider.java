package android.support.v4.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;

public class FileProvider extends ContentProvider {
    private static final String[] COLUMNS = new String[]{"_display_name", "_size"};
    private static final File DEVICE_ROOT = new File("/");
    private static HashMap<String, PathStrategy> sCache = new HashMap();
    private PathStrategy mStrategy;

    interface PathStrategy {
        File getFileForUri(Uri uri);

        Uri getUriForFile(File file);
    }

    static class SimplePathStrategy implements PathStrategy {
        private final String mAuthority;
        private final HashMap<String, File> mRoots = new HashMap();

        SimplePathStrategy(String str) {
            this.mAuthority = str;
        }

        final void addRoot(String str, File file) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Name must not be empty");
            }
            try {
                this.mRoots.put(str, file.getCanonicalFile());
            } catch (String str2) {
                throw new IllegalArgumentException("Failed to resolve canonical path for ".concat(String.valueOf(file)), str2);
            }
        }

        public final android.net.Uri getUriForFile(java.io.File r6) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r5 = this;
            r0 = r6.getCanonicalPath();	 Catch:{ IOException -> 0x00b8 }
            r6 = 0;
            r1 = r5.mRoots;
            r1 = r1.entrySet();
            r1 = r1.iterator();
        L_0x000f:
            r2 = r1.hasNext();
            if (r2 == 0) goto L_0x0043;
        L_0x0015:
            r2 = r1.next();
            r2 = (java.util.Map.Entry) r2;
            r3 = r2.getValue();
            r3 = (java.io.File) r3;
            r3 = r3.getPath();
            r4 = r0.startsWith(r3);
            if (r4 == 0) goto L_0x000f;
        L_0x002b:
            if (r6 == 0) goto L_0x0041;
        L_0x002d:
            r3 = r3.length();
            r4 = r6.getValue();
            r4 = (java.io.File) r4;
            r4 = r4.getPath();
            r4 = r4.length();
            if (r3 <= r4) goto L_0x000f;
        L_0x0041:
            r6 = r2;
            goto L_0x000f;
        L_0x0043:
            if (r6 != 0) goto L_0x0055;
        L_0x0045:
            r6 = new java.lang.IllegalArgumentException;
            r1 = "Failed to find configured root that contains ";
            r0 = java.lang.String.valueOf(r0);
            r0 = r1.concat(r0);
            r6.<init>(r0);
            throw r6;
        L_0x0055:
            r1 = r6.getValue();
            r1 = (java.io.File) r1;
            r1 = r1.getPath();
            r2 = "/";
            r2 = r1.endsWith(r2);
            if (r2 == 0) goto L_0x0070;
        L_0x0067:
            r1 = r1.length();
            r0 = r0.substring(r1);
            goto L_0x007a;
        L_0x0070:
            r1 = r1.length();
            r1 = r1 + 1;
            r0 = r0.substring(r1);
        L_0x007a:
            r1 = new java.lang.StringBuilder;
            r1.<init>();
            r6 = r6.getKey();
            r6 = (java.lang.String) r6;
            r6 = android.net.Uri.encode(r6);
            r1.append(r6);
            r6 = 47;
            r1.append(r6);
            r6 = "/";
            r6 = android.net.Uri.encode(r0, r6);
            r1.append(r6);
            r6 = r1.toString();
            r0 = new android.net.Uri$Builder;
            r0.<init>();
            r1 = "content";
            r0 = r0.scheme(r1);
            r1 = r5.mAuthority;
            r0 = r0.authority(r1);
            r6 = r0.encodedPath(r6);
            r6 = r6.build();
            return r6;
        L_0x00b8:
            r0 = new java.lang.IllegalArgumentException;
            r1 = "Failed to resolve canonical path for ";
            r6 = java.lang.String.valueOf(r6);
            r6 = r1.concat(r6);
            r0.<init>(r6);
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.content.FileProvider.SimplePathStrategy.getUriForFile(java.io.File):android.net.Uri");
        }

        public final java.io.File getFileForUri(android.net.Uri r5) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r4 = this;
            r0 = r5.getEncodedPath();
            r1 = 1;
            r2 = 47;
            r2 = r0.indexOf(r2, r1);
            r3 = r0.substring(r1, r2);
            r3 = android.net.Uri.decode(r3);
            r2 = r2 + r1;
            r0 = r0.substring(r2);
            r0 = android.net.Uri.decode(r0);
            r1 = r4.mRoots;
            r1 = r1.get(r3);
            r1 = (java.io.File) r1;
            if (r1 != 0) goto L_0x0036;
        L_0x0026:
            r0 = new java.lang.IllegalArgumentException;
            r1 = "Unable to find configured root for ";
            r5 = java.lang.String.valueOf(r5);
            r5 = r1.concat(r5);
            r0.<init>(r5);
            throw r0;
        L_0x0036:
            r5 = new java.io.File;
            r5.<init>(r1, r0);
            r0 = r5.getCanonicalFile();	 Catch:{ IOException -> 0x0056 }
            r5 = r0.getPath();
            r1 = r1.getPath();
            r5 = r5.startsWith(r1);
            if (r5 != 0) goto L_0x0055;
        L_0x004d:
            r5 = new java.lang.SecurityException;
            r0 = "Resolved path jumped beyond configured root";
            r5.<init>(r0);
            throw r5;
        L_0x0055:
            return r0;
        L_0x0056:
            r0 = new java.lang.IllegalArgumentException;
            r1 = "Failed to resolve canonical path for ";
            r5 = java.lang.String.valueOf(r5);
            r5 = r1.concat(r5);
            r0.<init>(r5);
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.content.FileProvider.SimplePathStrategy.getFileForUri(android.net.Uri):java.io.File");
        }
    }

    public boolean onCreate() {
        return true;
    }

    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        } else if (providerInfo.grantUriPermissions) {
            this.mStrategy = getPathStrategy(context, providerInfo.authority);
        } else {
            throw new SecurityException("Provider must grant uri permissions");
        }
    }

    public static Uri getUriForFile(Context context, String str, File file) {
        return getPathStrategy(context, str).getUriForFile(file);
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        uri = this.mStrategy.getFileForUri(uri);
        if (strArr == null) {
            strArr = COLUMNS;
        }
        strArr2 = new String[strArr.length];
        str2 = new Object[strArr.length];
        int length = strArr.length;
        int i = 0;
        int i2 = i;
        while (i < length) {
            int i3;
            Object obj = strArr[i];
            if ("_display_name".equals(obj)) {
                strArr2[i2] = "_display_name";
                i3 = i2 + 1;
                str2[i2] = uri.getName();
            } else if ("_size".equals(obj)) {
                strArr2[i2] = "_size";
                i3 = i2 + 1;
                str2[i2] = Long.valueOf(uri.length());
            } else {
                i++;
            }
            i2 = i3;
            i++;
        }
        uri = new String[i2];
        System.arraycopy(strArr2, 0, uri, 0, i2);
        strArr = new Object[i2];
        System.arraycopy(str2, 0, strArr, 0, i2);
        str = new MatrixCursor(uri, 1);
        str.addRow(strArr);
        return str;
    }

    public String getType(Uri uri) {
        uri = this.mStrategy.getFileForUri(uri);
        int lastIndexOf = uri.getName().lastIndexOf(46);
        if (lastIndexOf >= 0) {
            uri = MimeTypeMap.getSingleton().getMimeTypeFromExtension(uri.getName().substring(lastIndexOf + 1));
            if (uri != null) {
                return uri;
            }
        }
        return "application/octet-stream";
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }

    public int delete(Uri uri, String str, String[] strArr) {
        return this.mStrategy.getFileForUri(uri).delete() != null ? 1 : null;
    }

    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        uri = this.mStrategy.getFileForUri(uri);
        if ("r".equals(str)) {
            str = 268435456;
        } else {
            if (!"w".equals(str)) {
                if (!"wt".equals(str)) {
                    if ("wa".equals(str)) {
                        str = 704643072;
                    } else if ("rw".equals(str)) {
                        str = 939524096;
                    } else if ("rwt".equals(str)) {
                        str = 1006632960;
                    } else {
                        throw new IllegalArgumentException("Invalid mode: ".concat(String.valueOf(str)));
                    }
                }
            }
            str = 738197504;
        }
        return ParcelFileDescriptor.open(uri, str);
    }

    private static PathStrategy getPathStrategy(Context context, String str) {
        PathStrategy pathStrategy;
        synchronized (sCache) {
            pathStrategy = (PathStrategy) sCache.get(str);
            if (pathStrategy == null) {
                try {
                    pathStrategy = new SimplePathStrategy(str);
                    XmlResourceParser loadXmlMetaData = context.getPackageManager().resolveContentProvider(str, 128).loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
                    if (loadXmlMetaData == null) {
                        throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
                    }
                    while (true) {
                        int next = loadXmlMetaData.next();
                        if (next == 1) {
                            break;
                        } else if (next == 2) {
                            String name = loadXmlMetaData.getName();
                            File file = null;
                            String attributeValue = loadXmlMetaData.getAttributeValue(null, "name");
                            String attributeValue2 = loadXmlMetaData.getAttributeValue(null, "path");
                            if ("root-path".equals(name)) {
                                file = DEVICE_ROOT;
                            } else if ("files-path".equals(name)) {
                                file = context.getFilesDir();
                            } else if ("cache-path".equals(name)) {
                                file = context.getCacheDir();
                            } else if ("external-path".equals(name)) {
                                file = Environment.getExternalStorageDirectory();
                            } else if ("external-files-path".equals(name)) {
                                r3 = ContextCompat.getExternalFilesDirs(context, null);
                                if (r3.length > 0) {
                                    file = r3[0];
                                }
                            } else if ("external-cache-path".equals(name)) {
                                r3 = ContextCompat.getExternalCacheDirs(context);
                                if (r3.length > 0) {
                                    file = r3[0];
                                }
                            } else if (VERSION.SDK_INT >= 21 && "external-media-path".equals(name)) {
                                r3 = context.getExternalMediaDirs();
                                if (r3.length > 0) {
                                    file = r3[0];
                                }
                            }
                            if (file != null) {
                                pathStrategy.addRoot(attributeValue, buildPath(file, attributeValue2));
                            }
                        }
                    }
                    sCache.put(str, pathStrategy);
                } catch (Context context2) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", context2);
                } catch (Context context22) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", context22);
                }
            }
        }
        return pathStrategy;
    }

    private static File buildPath(File file, String... strArr) {
        File file2 = file;
        for (file = null; file <= null; file++) {
            String str = strArr[0];
            if (str != null) {
                file2 = new File(file2, str);
            }
        }
        return file2;
    }
}
