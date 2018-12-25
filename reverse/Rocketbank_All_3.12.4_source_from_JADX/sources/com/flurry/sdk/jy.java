package com.flurry.sdk;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class jy<T> {
    /* renamed from: a */
    private static final String f318a = "jy";
    /* renamed from: b */
    private final File f319b;
    /* renamed from: c */
    private final kz<T> f320c;

    public jy(File file, String str, int i, lc<T> lcVar) {
        this.f319b = file;
        this.f320c = new kx(new lb(str, i, lcVar));
    }

    /* renamed from: a */
    public final T m145a() {
        Closeable fileInputStream;
        Throwable e;
        String str;
        StringBuilder stringBuilder;
        T t = null;
        if (this.f319b == null) {
            return null;
        }
        StringBuilder stringBuilder2;
        if (this.f319b.exists()) {
            String str2;
            Object obj = null;
            try {
                fileInputStream = new FileInputStream(this.f319b);
                try {
                    T a = this.f320c.mo1368a(fileInputStream);
                    lr.m305a(fileInputStream);
                    t = a;
                } catch (Exception e2) {
                    e = e2;
                    try {
                        str = f318a;
                        stringBuilder = new StringBuilder("Error reading data file:");
                        stringBuilder.append(this.f319b.getName());
                        kf.m177a(3, str, stringBuilder.toString(), e);
                        obj = 1;
                        lr.m305a(fileInputStream);
                        if (obj != null) {
                            str2 = f318a;
                            stringBuilder2 = new StringBuilder("Deleting data file:");
                            stringBuilder2.append(this.f319b.getName());
                            kf.m176a(3, str2, stringBuilder2.toString());
                            this.f319b.delete();
                        }
                        return t;
                    } catch (Throwable th) {
                        e = th;
                        lr.m305a(fileInputStream);
                        throw e;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                fileInputStream = null;
                str = f318a;
                stringBuilder = new StringBuilder("Error reading data file:");
                stringBuilder.append(this.f319b.getName());
                kf.m177a(3, str, stringBuilder.toString(), e);
                obj = 1;
                lr.m305a(fileInputStream);
                if (obj != null) {
                    str2 = f318a;
                    stringBuilder2 = new StringBuilder("Deleting data file:");
                    stringBuilder2.append(this.f319b.getName());
                    kf.m176a(3, str2, stringBuilder2.toString());
                    this.f319b.delete();
                }
                return t;
            } catch (Throwable th2) {
                e = th2;
                fileInputStream = null;
                lr.m305a(fileInputStream);
                throw e;
            }
            if (obj != null) {
                str2 = f318a;
                stringBuilder2 = new StringBuilder("Deleting data file:");
                stringBuilder2.append(this.f319b.getName());
                kf.m176a(3, str2, stringBuilder2.toString());
                this.f319b.delete();
            }
            return t;
        }
        String str3 = f318a;
        stringBuilder2 = new StringBuilder("No data to read for file:");
        stringBuilder2.append(this.f319b.getName());
        kf.m176a(5, str3, stringBuilder2.toString());
        return null;
    }

    /* renamed from: a */
    public final void m146a(T t) {
        String str;
        String str2;
        StringBuilder stringBuilder;
        StringBuilder stringBuilder2;
        Object obj = 1;
        if (t == null) {
            str = f318a;
            StringBuilder stringBuilder3 = new StringBuilder("No data to write for file:");
            stringBuilder3.append(this.f319b.getName());
            kf.m176a(3, str, stringBuilder3.toString());
        } else {
            Closeable closeable = null;
            try {
                if (lq.m296a(this.f319b)) {
                    Closeable fileOutputStream = new FileOutputStream(this.f319b);
                    try {
                        this.f320c.mo1369a(fileOutputStream, t);
                        lr.m305a(fileOutputStream);
                        obj = null;
                    } catch (Exception e) {
                        t = e;
                        closeable = fileOutputStream;
                        try {
                            str2 = f318a;
                            stringBuilder = new StringBuilder("Error writing data file:");
                            stringBuilder.append(this.f319b.getName());
                            kf.m177a(3, str2, stringBuilder.toString(), t);
                            lr.m305a(closeable);
                            if (obj == null) {
                                str = f318a;
                                stringBuilder2 = new StringBuilder("Deleting data file:");
                                stringBuilder2.append(this.f319b.getName());
                                kf.m176a(3, str, stringBuilder2.toString());
                                this.f319b.delete();
                            }
                        } catch (Throwable th) {
                            t = th;
                            lr.m305a(closeable);
                            throw t;
                        }
                    } catch (Throwable th2) {
                        t = th2;
                        closeable = fileOutputStream;
                        lr.m305a(closeable);
                        throw t;
                    }
                }
                throw new IOException("Cannot create parent directory!");
            } catch (Exception e2) {
                t = e2;
                str2 = f318a;
                stringBuilder = new StringBuilder("Error writing data file:");
                stringBuilder.append(this.f319b.getName());
                kf.m177a(3, str2, stringBuilder.toString(), t);
                lr.m305a(closeable);
                if (obj == null) {
                    str = f318a;
                    stringBuilder2 = new StringBuilder("Deleting data file:");
                    stringBuilder2.append(this.f319b.getName());
                    kf.m176a(3, str, stringBuilder2.toString());
                    this.f319b.delete();
                }
            }
        }
        if (obj == null) {
            str = f318a;
            stringBuilder2 = new StringBuilder("Deleting data file:");
            stringBuilder2.append(this.f319b.getName());
            kf.m176a(3, str, stringBuilder2.toString());
            this.f319b.delete();
        }
    }

    /* renamed from: b */
    public final boolean m147b() {
        if (this.f319b == null) {
            return false;
        }
        return this.f319b.delete();
    }
}
