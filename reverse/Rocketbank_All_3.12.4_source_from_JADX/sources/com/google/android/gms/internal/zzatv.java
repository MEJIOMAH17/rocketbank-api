package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.util.zze;

public class zzatv extends zzauh {
    private boolean zzbsA;
    private final zza zzbsz = new zza(this, getContext(), zzow());

    @TargetApi(11)
    private class zza extends SQLiteOpenHelper {
        final /* synthetic */ zzatv zzbsB;

        zza(zzatv zzatv, Context context, String str) {
            this.zzbsB = zzatv;
            super(context, str, null, 1);
        }

        public SQLiteDatabase getWritableDatabase() {
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e) {
                if (VERSION.SDK_INT < 11 || !(e instanceof SQLiteDatabaseLockedException)) {
                    this.zzbsB.zzKl().zzLZ().log("Opening the local database failed, dropping and recreating it");
                    String zzow = this.zzbsB.zzow();
                    if (!this.zzbsB.getContext().getDatabasePath(zzow).delete()) {
                        this.zzbsB.zzKl().zzLZ().zzj("Failed to delete corrupted local db file", zzow);
                    }
                    try {
                        return super.getWritableDatabase();
                    } catch (SQLiteException e2) {
                        this.zzbsB.zzKl().zzLZ().zzj("Failed to open local database. Events will bypass local storage", e2);
                        return null;
                    }
                }
                throw e2;
            }
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            zzatj.zza(this.zzbsB.zzKl(), sQLiteDatabase);
        }

        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (VERSION.SDK_INT < 15) {
                Cursor rawQuery = sQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
                try {
                    rawQuery.moveToFirst();
                } finally {
                    rawQuery.close();
                }
            }
            zzatj.zza(this.zzbsB.zzKl(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    zzatv(zzaue zzaue) {
        super(zzaue);
    }

    @TargetApi(11)
    private boolean zza(int i, byte[] bArr) {
        Object obj;
        Throwable th;
        String[] strArr;
        zzJW();
        zzmR();
        boolean z = false;
        if (this.zzbsA) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", Integer.valueOf(i));
        contentValues.put("entry", bArr);
        zzKn().zzLq();
        int i2 = 5;
        int i3 = 0;
        int i4 = 5;
        while (i3 < i2) {
            SQLiteDatabase writableDatabase;
            SQLiteDatabase sQLiteDatabase = null;
            try {
                writableDatabase = getWritableDatabase();
                if (writableDatabase == null) {
                    try {
                        r1.zzbsA = true;
                        if (writableDatabase != null) {
                            writableDatabase.close();
                        }
                        return z;
                    } catch (SQLiteFullException e) {
                        obj = e;
                        sQLiteDatabase = writableDatabase;
                    } catch (SQLiteException e2) {
                        obj = e2;
                        sQLiteDatabase = writableDatabase;
                        try {
                            if (VERSION.SDK_INT >= 11) {
                            }
                            sQLiteDatabase.endTransaction();
                            zzKl().zzLZ().zzj("Error writing entry to local database", obj);
                            r1.zzbsA = true;
                            if (sQLiteDatabase == null) {
                                i3++;
                                z = false;
                                i2 = 5;
                            }
                            sQLiteDatabase.close();
                            i3++;
                            z = false;
                            i2 = 5;
                        } catch (Throwable th2) {
                            th = th2;
                            writableDatabase = sQLiteDatabase;
                        }
                    } catch (Throwable th22) {
                        th = th22;
                    }
                } else {
                    writableDatabase.beginTransaction();
                    long j = 0;
                    Cursor rawQuery = writableDatabase.rawQuery("select count(1) from messages", null);
                    if (rawQuery != null && rawQuery.moveToFirst()) {
                        j = rawQuery.getLong(z);
                    }
                    if (j >= 100000) {
                        zzKl().zzLZ().log("Data loss, local db full");
                        long j2 = (100000 - j) + 1;
                        j = (long) writableDatabase.delete("messages", "rowid in (select rowid from messages order by rowid asc limit ?)", new String[]{Long.toString(j2)});
                        if (j != j2) {
                            zzKl().zzLZ().zzd("Different delete count than expected in local db. expected, received, difference", Long.valueOf(j2), Long.valueOf(j), Long.valueOf(j2 - j));
                        }
                    }
                    writableDatabase.insertOrThrow("messages", null, contentValues);
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                    if (writableDatabase != null) {
                        writableDatabase.close();
                    }
                    return true;
                }
            } catch (SQLiteFullException e3) {
                strArr = null;
                obj = e3;
                zzKl().zzLZ().zzj("Error writing entry to local database", obj);
                r1.zzbsA = true;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                    i3++;
                    z = false;
                    i2 = 5;
                } else {
                    i3++;
                    z = false;
                    i2 = 5;
                }
            } catch (SQLiteException e22) {
                strArr = null;
                obj = e22;
                if (VERSION.SDK_INT >= 11 || !(obj instanceof SQLiteDatabaseLockedException)) {
                    if (sQLiteDatabase != null && sQLiteDatabase.inTransaction()) {
                        sQLiteDatabase.endTransaction();
                    }
                    zzKl().zzLZ().zzj("Error writing entry to local database", obj);
                    r1.zzbsA = true;
                } else {
                    SystemClock.sleep((long) i4);
                    i4 += 20;
                }
                if (sQLiteDatabase == null) {
                    i3++;
                    z = false;
                    i2 = 5;
                }
                sQLiteDatabase.close();
                i3++;
                z = false;
                i2 = 5;
            } catch (Throwable th222) {
                th = th222;
                writableDatabase = null;
            }
        }
        zzKl().zzMb().log("Failed to write entry to local database");
        return false;
        if (writableDatabase != null) {
            writableDatabase.close();
        }
        throw th;
    }

    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    SQLiteDatabase getWritableDatabase() {
        int i = VERSION.SDK_INT;
        if (this.zzbsA) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.zzbsz.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.zzbsA = true;
        return null;
    }

    public /* bridge */ /* synthetic */ void zzJV() {
        super.zzJV();
    }

    public /* bridge */ /* synthetic */ void zzJW() {
        super.zzJW();
    }

    public /* bridge */ /* synthetic */ void zzJX() {
        super.zzJX();
    }

    public /* bridge */ /* synthetic */ zzatb zzJY() {
        return super.zzJY();
    }

    public /* bridge */ /* synthetic */ zzatf zzJZ() {
        return super.zzJZ();
    }

    public /* bridge */ /* synthetic */ zzauj zzKa() {
        return super.zzKa();
    }

    public /* bridge */ /* synthetic */ zzatu zzKb() {
        return super.zzKb();
    }

    public /* bridge */ /* synthetic */ zzatl zzKc() {
        return super.zzKc();
    }

    public /* bridge */ /* synthetic */ zzaul zzKd() {
        return super.zzKd();
    }

    public /* bridge */ /* synthetic */ zzauk zzKe() {
        return super.zzKe();
    }

    public /* bridge */ /* synthetic */ zzatv zzKf() {
        return super.zzKf();
    }

    public /* bridge */ /* synthetic */ zzatj zzKg() {
        return super.zzKg();
    }

    public /* bridge */ /* synthetic */ zzaut zzKh() {
        return super.zzKh();
    }

    public /* bridge */ /* synthetic */ zzauc zzKi() {
        return super.zzKi();
    }

    public /* bridge */ /* synthetic */ zzaun zzKj() {
        return super.zzKj();
    }

    public /* bridge */ /* synthetic */ zzaud zzKk() {
        return super.zzKk();
    }

    public /* bridge */ /* synthetic */ zzatx zzKl() {
        return super.zzKl();
    }

    public /* bridge */ /* synthetic */ zzaua zzKm() {
        return super.zzKm();
    }

    public /* bridge */ /* synthetic */ zzati zzKn() {
        return super.zzKn();
    }

    boolean zzLN() {
        return getContext().getDatabasePath(zzow()).exists();
    }

    public boolean zza(zzatq zzatq) {
        int i = VERSION.SDK_INT;
        Parcel obtain = Parcel.obtain();
        zzatq.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return zza(0, marshall);
        }
        zzKl().zzMb().log("Event is too long for local database. Sending event directly to service");
        return false;
    }

    public boolean zza(zzauq zzauq) {
        int i = VERSION.SDK_INT;
        Parcel obtain = Parcel.obtain();
        zzauq.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return zza(1, marshall);
        }
        zzKl().zzMb().log("User property too long for local database. Sending directly to service");
        return false;
    }

    public boolean zzc(zzatg zzatg) {
        int i = VERSION.SDK_INT;
        byte[] zza = zzKh().zza((Parcelable) zzatg);
        if (zza.length <= 131072) {
            return zza(2, zza);
        }
        zzKl().zzMb().log("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    @android.annotation.TargetApi(11)
    public java.util.List<com.google.android.gms.common.internal.safeparcel.zza> zzlD(int r22) {
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
        r21 = this;
        r1 = r21;
        r21.zzmR();
        r21.zzJW();
        r2 = android.os.Build.VERSION.SDK_INT;
        r2 = r1.zzbsA;
        r3 = 0;
        if (r2 == 0) goto L_0x0010;
    L_0x000f:
        return r3;
    L_0x0010:
        r2 = new java.util.ArrayList;
        r2.<init>();
        r4 = r21.zzLN();
        if (r4 != 0) goto L_0x001c;
    L_0x001b:
        return r2;
    L_0x001c:
        r4 = 5;
        r5 = 0;
        r7 = r4;
        r6 = r5;
    L_0x0020:
        if (r6 >= r4) goto L_0x01cf;
    L_0x0022:
        r8 = 1;
        r15 = r21.getWritableDatabase();	 Catch:{ SQLiteFullException -> 0x01ab, SQLiteException -> 0x0177, all -> 0x0173 }
        if (r15 != 0) goto L_0x0039;
    L_0x0029:
        r1.zzbsA = r8;	 Catch:{ SQLiteFullException -> 0x0035, SQLiteException -> 0x0031 }
        if (r15 == 0) goto L_0x0030;
    L_0x002d:
        r15.close();
    L_0x0030:
        return r3;
    L_0x0031:
        r0 = move-exception;
    L_0x0032:
        r3 = r0;
        goto L_0x017a;
    L_0x0035:
        r0 = move-exception;
    L_0x0036:
        r3 = r0;
        goto L_0x01ae;
    L_0x0039:
        r15.beginTransaction();	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r10 = "messages";	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r9 = 3;	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r11 = new java.lang.String[r9];	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r9 = "rowid";	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r11[r5] = r9;	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r9 = "type";	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r11[r8] = r9;	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r9 = "entry";	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r14 = 2;	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r11[r14] = r9;	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r12 = 0;	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r13 = 0;	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r16 = 0;	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r17 = 0;	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r18 = "rowid asc";	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r19 = java.lang.Integer.toString(r22);	 Catch:{ SQLiteFullException -> 0x016f, SQLiteException -> 0x016b, all -> 0x0166 }
        r9 = r15;
        r4 = r14;
        r14 = r16;
        r3 = r15;
        r15 = r17;
        r16 = r18;
        r17 = r19;
        r9 = r9.query(r10, r11, r12, r13, r14, r15, r16, r17);	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r10 = -1;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x006b:
        r12 = r9.moveToNext();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        if (r12 == 0) goto L_0x012a;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x0071:
        r10 = r9.getLong(r5);	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r12 = r9.getInt(r8);	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r13 = r9.getBlob(r4);	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        if (r12 != 0) goto L_0x00b3;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x007f:
        r12 = android.os.Parcel.obtain();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r14 = r13.length;	 Catch:{ zza -> 0x009e }
        r12.unmarshall(r13, r5, r14);	 Catch:{ zza -> 0x009e }
        r12.setDataPosition(r5);	 Catch:{ zza -> 0x009e }
        r13 = com.google.android.gms.internal.zzatq.CREATOR;	 Catch:{ zza -> 0x009e }
        r13 = r13.createFromParcel(r12);	 Catch:{ zza -> 0x009e }
        r13 = (com.google.android.gms.internal.zzatq) r13;	 Catch:{ zza -> 0x009e }
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        if (r13 == 0) goto L_0x006b;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x0097:
        r2.add(r13);	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        goto L_0x006b;
    L_0x009b:
        r0 = move-exception;
        r4 = r0;
        goto L_0x00af;
    L_0x009e:
        r13 = r21.zzKl();	 Catch:{ all -> 0x009b }
        r13 = r13.zzLZ();	 Catch:{ all -> 0x009b }
        r14 = "Failed to load event from local database";	 Catch:{ all -> 0x009b }
        r13.log(r14);	 Catch:{ all -> 0x009b }
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        goto L_0x006b;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x00af:
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        throw r4;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x00b3:
        if (r12 != r8) goto L_0x00e7;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x00b5:
        r12 = android.os.Parcel.obtain();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r14 = r13.length;	 Catch:{ zza -> 0x00cf }
        r12.unmarshall(r13, r5, r14);	 Catch:{ zza -> 0x00cf }
        r12.setDataPosition(r5);	 Catch:{ zza -> 0x00cf }
        r13 = com.google.android.gms.internal.zzauq.CREATOR;	 Catch:{ zza -> 0x00cf }
        r13 = r13.createFromParcel(r12);	 Catch:{ zza -> 0x00cf }
        r13 = (com.google.android.gms.internal.zzauq) r13;	 Catch:{ zza -> 0x00cf }
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        goto L_0x00e0;
    L_0x00cc:
        r0 = move-exception;
        r4 = r0;
        goto L_0x00e3;
    L_0x00cf:
        r13 = r21.zzKl();	 Catch:{ all -> 0x00cc }
        r13 = r13.zzLZ();	 Catch:{ all -> 0x00cc }
        r14 = "Failed to load user property from local database";	 Catch:{ all -> 0x00cc }
        r13.log(r14);	 Catch:{ all -> 0x00cc }
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r13 = 0;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x00e0:
        if (r13 == 0) goto L_0x006b;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x00e2:
        goto L_0x0097;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x00e3:
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        throw r4;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x00e7:
        if (r12 != r4) goto L_0x011b;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x00e9:
        r12 = android.os.Parcel.obtain();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r14 = r13.length;	 Catch:{ zza -> 0x0103 }
        r12.unmarshall(r13, r5, r14);	 Catch:{ zza -> 0x0103 }
        r12.setDataPosition(r5);	 Catch:{ zza -> 0x0103 }
        r13 = com.google.android.gms.internal.zzatg.CREATOR;	 Catch:{ zza -> 0x0103 }
        r13 = r13.createFromParcel(r12);	 Catch:{ zza -> 0x0103 }
        r13 = (com.google.android.gms.internal.zzatg) r13;	 Catch:{ zza -> 0x0103 }
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        goto L_0x0114;
    L_0x0100:
        r0 = move-exception;
        r4 = r0;
        goto L_0x0117;
    L_0x0103:
        r13 = r21.zzKl();	 Catch:{ all -> 0x0100 }
        r13 = r13.zzLZ();	 Catch:{ all -> 0x0100 }
        r14 = "Failed to load user property from local database";	 Catch:{ all -> 0x0100 }
        r13.log(r14);	 Catch:{ all -> 0x0100 }
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r13 = 0;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x0114:
        if (r13 == 0) goto L_0x006b;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x0116:
        goto L_0x0097;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x0117:
        r12.recycle();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        throw r4;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x011b:
        r12 = r21.zzKl();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r12 = r12.zzLZ();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r13 = "Unknown record type in local database";	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r12.log(r13);	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        goto L_0x006b;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x012a:
        r9.close();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r4 = "messages";	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r9 = "rowid <= ?";	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r12 = new java.lang.String[r8];	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r10 = java.lang.Long.toString(r10);	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r12[r5] = r10;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r4 = r3.delete(r4, r9, r12);	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r9 = r2.size();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        if (r4 >= r9) goto L_0x0150;	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x0143:
        r4 = r21.zzKl();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r4 = r4.zzLZ();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r9 = "Fewer entries removed from local database than expected";	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r4.log(r9);	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
    L_0x0150:
        r3.setTransactionSuccessful();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        r3.endTransaction();	 Catch:{ SQLiteFullException -> 0x0162, SQLiteException -> 0x015e, all -> 0x015c }
        if (r3 == 0) goto L_0x015b;
    L_0x0158:
        r3.close();
    L_0x015b:
        return r2;
    L_0x015c:
        r0 = move-exception;
        goto L_0x0168;
    L_0x015e:
        r0 = move-exception;
        r15 = r3;
        goto L_0x0032;
    L_0x0162:
        r0 = move-exception;
        r15 = r3;
        goto L_0x0036;
    L_0x0166:
        r0 = move-exception;
        r3 = r15;
    L_0x0168:
        r2 = r0;
        goto L_0x01c9;
    L_0x016b:
        r0 = move-exception;
        r3 = r15;
        goto L_0x0032;
    L_0x016f:
        r0 = move-exception;
        r3 = r15;
        goto L_0x0036;
    L_0x0173:
        r0 = move-exception;
        r2 = r0;
        r3 = 0;
        goto L_0x01c9;
    L_0x0177:
        r0 = move-exception;
        r3 = r0;
        r15 = 0;
    L_0x017a:
        r4 = android.os.Build.VERSION.SDK_INT;	 Catch:{ all -> 0x01c6 }
        r9 = 11;	 Catch:{ all -> 0x01c6 }
        if (r4 < r9) goto L_0x018b;	 Catch:{ all -> 0x01c6 }
    L_0x0180:
        r4 = r3 instanceof android.database.sqlite.SQLiteDatabaseLockedException;	 Catch:{ all -> 0x01c6 }
        if (r4 == 0) goto L_0x018b;	 Catch:{ all -> 0x01c6 }
    L_0x0184:
        r3 = (long) r7;	 Catch:{ all -> 0x01c6 }
        android.os.SystemClock.sleep(r3);	 Catch:{ all -> 0x01c6 }
        r7 = r7 + 20;	 Catch:{ all -> 0x01c6 }
        goto L_0x01a5;	 Catch:{ all -> 0x01c6 }
    L_0x018b:
        if (r15 == 0) goto L_0x0196;	 Catch:{ all -> 0x01c6 }
    L_0x018d:
        r4 = r15.inTransaction();	 Catch:{ all -> 0x01c6 }
        if (r4 == 0) goto L_0x0196;	 Catch:{ all -> 0x01c6 }
    L_0x0193:
        r15.endTransaction();	 Catch:{ all -> 0x01c6 }
    L_0x0196:
        r4 = r21.zzKl();	 Catch:{ all -> 0x01c6 }
        r4 = r4.zzLZ();	 Catch:{ all -> 0x01c6 }
        r9 = "Error reading entries from local database";	 Catch:{ all -> 0x01c6 }
        r4.zzj(r9, r3);	 Catch:{ all -> 0x01c6 }
        r1.zzbsA = r8;	 Catch:{ all -> 0x01c6 }
    L_0x01a5:
        if (r15 == 0) goto L_0x01c0;
    L_0x01a7:
        r15.close();
        goto L_0x01c0;
    L_0x01ab:
        r0 = move-exception;
        r3 = r0;
        r15 = 0;
    L_0x01ae:
        r4 = r21.zzKl();	 Catch:{ all -> 0x01c6 }
        r4 = r4.zzLZ();	 Catch:{ all -> 0x01c6 }
        r9 = "Error reading entries from local database";	 Catch:{ all -> 0x01c6 }
        r4.zzj(r9, r3);	 Catch:{ all -> 0x01c6 }
        r1.zzbsA = r8;	 Catch:{ all -> 0x01c6 }
        if (r15 == 0) goto L_0x01c0;
    L_0x01bf:
        goto L_0x01a7;
    L_0x01c0:
        r6 = r6 + 1;
        r3 = 0;
        r4 = 5;
        goto L_0x0020;
    L_0x01c6:
        r0 = move-exception;
        r2 = r0;
        r3 = r15;
    L_0x01c9:
        if (r3 == 0) goto L_0x01ce;
    L_0x01cb:
        r3.close();
    L_0x01ce:
        throw r2;
    L_0x01cf:
        r2 = r21.zzKl();
        r2 = r2.zzMb();
        r3 = "Failed to read events from database in reasonable time";
        r2.log(r3);
        r2 = 0;
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzatv.zzlD(int):java.util.List<com.google.android.gms.common.internal.safeparcel.zza>");
    }

    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    protected void zzmS() {
    }

    public /* bridge */ /* synthetic */ zze zznR() {
        return super.zznR();
    }

    String zzow() {
        return zzKn().zzLg();
    }
}
