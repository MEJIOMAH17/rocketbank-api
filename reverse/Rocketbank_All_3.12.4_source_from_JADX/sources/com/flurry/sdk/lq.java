package com.flurry.sdk;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Environment;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public final class lq {
    /* renamed from: a */
    private static String f425a = "lq";

    /* renamed from: a */
    public static File m294a() {
        Context context = jr.m114a().f293a;
        File file = null;
        if ("mounted".equals(Environment.getExternalStorageState()) && (VERSION.SDK_INT >= 19 || context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0)) {
            file = context.getExternalFilesDir(null);
        }
        return file == null ? context.getFilesDir() : file;
    }

    /* renamed from: b */
    public static File m297b() {
        Context context = jr.m114a().f293a;
        File externalCacheDir = (!"mounted".equals(Environment.getExternalStorageState()) || (VERSION.SDK_INT < 19 && context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0)) ? null : context.getExternalCacheDir();
        return externalCacheDir == null ? context.getCacheDir() : externalCacheDir;
    }

    /* renamed from: a */
    public static boolean m296a(File file) {
        if (file == null || file.getAbsoluteFile() == null) {
            return false;
        }
        file = file.getParentFile();
        if (file == null || file.mkdirs() || file.isDirectory()) {
            return true;
        }
        kf.m176a(6, f425a, "Unable to create persistent dir: ".concat(String.valueOf(file)));
        return false;
    }

    /* renamed from: b */
    public static boolean m298b(File file) {
        if (file != null && file.isDirectory()) {
            for (String file2 : file.list()) {
                if (!m298b(new File(file, file2))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    @Deprecated
    /* renamed from: c */
    public static String m299c(File file) {
        Closeable fileInputStream;
        if (file != null) {
            if (file.exists()) {
                String str = f425a;
                StringBuilder stringBuilder = new StringBuilder("Loading persistent data: ");
                stringBuilder.append(file.getAbsolutePath());
                kf.m176a(4, str, stringBuilder.toString());
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        file = new StringBuilder();
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = fileInputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            file.append(new String(bArr, 0, read));
                        }
                        lr.m305a(fileInputStream);
                    } catch (Throwable th) {
                        file = th;
                        try {
                            kf.m177a(6, f425a, "Error when loading persistent file", file);
                            lr.m305a(fileInputStream);
                            file = null;
                            if (file != null) {
                                return file.toString();
                            }
                            return null;
                        } catch (Throwable th2) {
                            file = th2;
                            lr.m305a(fileInputStream);
                            throw file;
                        }
                    }
                } catch (Throwable th3) {
                    file = th3;
                    fileInputStream = null;
                    lr.m305a(fileInputStream);
                    throw file;
                }
                if (file != null) {
                    return file.toString();
                }
                return null;
            }
        }
        kf.m176a(4, f425a, "Persistent file doesn't exist.");
        return null;
    }

    @Deprecated
    /* renamed from: a */
    public static void m295a(File file, String str) {
        if (file == null) {
            kf.m176a(4, f425a, "No persistent file specified.");
        } else if (str == null) {
            str = f425a;
            StringBuilder stringBuilder = new StringBuilder("No data specified; deleting persistent file: ");
            stringBuilder.append(file.getAbsolutePath());
            kf.m176a(4, str, stringBuilder.toString());
            file.delete();
        } else {
            String str2 = f425a;
            StringBuilder stringBuilder2 = new StringBuilder("Writing persistent data: ");
            stringBuilder2.append(file.getAbsolutePath());
            kf.m176a(4, str2, stringBuilder2.toString());
            Closeable closeable = null;
            try {
                Closeable fileOutputStream = new FileOutputStream(file);
                try {
                    fileOutputStream.write(str.getBytes());
                    lr.m305a(fileOutputStream);
                } catch (Throwable th) {
                    file = th;
                    closeable = fileOutputStream;
                    lr.m305a(closeable);
                    throw file;
                }
            } catch (Throwable th2) {
                file = th2;
                kf.m177a(6, f425a, "Error writing persistent file", file);
                lr.m305a(closeable);
            }
        }
    }
}
