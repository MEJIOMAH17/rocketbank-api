package com.flurry.sdk;

import com.flurry.sdk.jb.C1112a;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;

public final class hn {
    /* renamed from: a */
    private static final String f37a = "hn";

    /* renamed from: a */
    public static jb m11a(File file) {
        Closeable fileInputStream;
        Closeable dataInputStream;
        Throwable e;
        Throwable th;
        jb jbVar = null;
        if (file != null) {
            if (file.exists()) {
                kz c1112a = new C1112a();
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        dataInputStream = new DataInputStream(fileInputStream);
                    } catch (Exception e2) {
                        e = e2;
                        dataInputStream = null;
                        try {
                            kf.m177a(3, f37a, "Error loading legacy agent data.", e);
                            lr.m305a(dataInputStream);
                            lr.m305a(fileInputStream);
                            return jbVar;
                        } catch (Throwable th2) {
                            th = th2;
                            lr.m305a(dataInputStream);
                            lr.m305a(fileInputStream);
                            throw th;
                        }
                    } catch (File file2) {
                        th = file2;
                        dataInputStream = null;
                        lr.m305a(dataInputStream);
                        lr.m305a(fileInputStream);
                        throw th;
                    }
                    try {
                        if (dataInputStream.readUnsignedShort() != 46586) {
                            kf.m176a(3, f37a, "Unexpected file type");
                        } else {
                            int readUnsignedShort = dataInputStream.readUnsignedShort();
                            if (readUnsignedShort != 2) {
                                kf.m176a(6, f37a, "Unknown agent file version: ".concat(String.valueOf(readUnsignedShort)));
                            } else {
                                jb jbVar2 = (jb) c1112a.mo1368a(dataInputStream);
                                lr.m305a(dataInputStream);
                                lr.m305a(fileInputStream);
                                jbVar = jbVar2;
                                return jbVar;
                            }
                        }
                        lr.m305a(dataInputStream);
                        lr.m305a(fileInputStream);
                        return null;
                    } catch (Exception e3) {
                        e = e3;
                        kf.m177a(3, f37a, "Error loading legacy agent data.", e);
                        lr.m305a(dataInputStream);
                        lr.m305a(fileInputStream);
                        return jbVar;
                    }
                } catch (Exception e4) {
                    e = e4;
                    dataInputStream = null;
                    fileInputStream = dataInputStream;
                    kf.m177a(3, f37a, "Error loading legacy agent data.", e);
                    lr.m305a(dataInputStream);
                    lr.m305a(fileInputStream);
                    return jbVar;
                } catch (File file22) {
                    fileInputStream = null;
                    th = file22;
                    dataInputStream = fileInputStream;
                    lr.m305a(dataInputStream);
                    lr.m305a(fileInputStream);
                    throw th;
                }
            }
        }
        return null;
    }
}
