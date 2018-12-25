package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build.VERSION;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzauw.zze;
import com.google.android.gms.internal.zzauw.zzf;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.slf4j.Marker;

class zzatj extends zzauh {
    private static final Map<String, String> zzbrh;
    private static final Map<String, String> zzbri;
    private static final Map<String, String> zzbrj;
    private static final Map<String, String> zzbrk;
    private static final Map<String, String> zzbrl;
    private final zzc zzbrm = new zzc(this, getContext(), zzow());
    private final zzauo zzbrn = new zzauo(zznR());

    public static class zza {
        long zzbro;
        long zzbrp;
        long zzbrq;
        long zzbrr;
        long zzbrs;
    }

    interface zzb {
        boolean zza(long j, com.google.android.gms.internal.zzauw.zzb zzb);

        void zzb(zze zze);
    }

    private class zzc extends SQLiteOpenHelper {
        final /* synthetic */ zzatj zzbrt;

        zzc(zzatj zzatj, Context context, String str) {
            this.zzbrt = zzatj;
            super(context, str, null, 1);
        }

        public android.database.sqlite.SQLiteDatabase getWritableDatabase() {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r3 = this;
            r0 = r3.zzbrt;
            r0 = r0.zzbrn;
            r1 = r3.zzbrt;
            r1 = r1.zzKn();
            r1 = r1.zzLd();
            r0 = r0.zzA(r1);
            if (r0 != 0) goto L_0x001e;
        L_0x0016:
            r0 = new android.database.sqlite.SQLiteException;
            r1 = "Database open failed";
            r0.<init>(r1);
            throw r0;
        L_0x001e:
            r0 = super.getWritableDatabase();	 Catch:{ SQLiteException -> 0x0023 }
            return r0;
        L_0x0023:
            r0 = r3.zzbrt;
            r0 = r0.zzbrn;
            r0.start();
            r0 = r3.zzbrt;
            r0 = r0.zzKl();
            r0 = r0.zzLZ();
            r1 = "Opening the database failed, dropping and recreating it";
            r0.log(r1);
            r0 = r3.zzbrt;
            r0 = r0.zzow();
            r1 = r3.zzbrt;
            r1 = r1.getContext();
            r1 = r1.getDatabasePath(r0);
            r1 = r1.delete();
            if (r1 != 0) goto L_0x0060;
        L_0x0051:
            r1 = r3.zzbrt;
            r1 = r1.zzKl();
            r1 = r1.zzLZ();
            r2 = "Failed to delete corrupted db file";
            r1.zzj(r2, r0);
        L_0x0060:
            r0 = super.getWritableDatabase();	 Catch:{ SQLiteException -> 0x006e }
            r1 = r3.zzbrt;	 Catch:{ SQLiteException -> 0x006e }
            r1 = r1.zzbrn;	 Catch:{ SQLiteException -> 0x006e }
            r1.clear();	 Catch:{ SQLiteException -> 0x006e }
            return r0;
        L_0x006e:
            r0 = move-exception;
            r1 = r3.zzbrt;
            r1 = r1.zzKl();
            r1 = r1.zzLZ();
            r2 = "Failed to open freshly created database";
            r1.zzj(r2, r0);
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzatj.zzc.getWritableDatabase():android.database.sqlite.SQLiteDatabase");
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            zzatj.zza(this.zzbrt.zzKl(), sQLiteDatabase);
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
            SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
            zzatj.zza(this.zzbrt.zzKl(), sQLiteDatabase2, "events", "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp", null);
            zzatj.zza(this.zzbrt.zzKl(), sQLiteDatabase2, "conditional_properties", "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;", "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event", null);
            zzatj.zza(this.zzbrt.zzKl(), sQLiteDatabase2, "user_attributes", "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, triggered_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,triggered_timestamp,value", zzatj.zzbrh);
            zzatj.zza(this.zzbrt.zzKl(), sQLiteDatabase2, "apps", "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;", "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp", zzatj.zzbri);
            zzatj.zza(this.zzbrt.zzKl(), sQLiteDatabase2, "queue", "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,bundle_end_timestamp,data", zzatj.zzbrk);
            zzatj.zza(this.zzbrt.zzKl(), sQLiteDatabase2, "raw_events_metadata", "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));", "app_id,metadata_fingerprint,metadata", null);
            zzatj.zza(this.zzbrt.zzKl(), sQLiteDatabase2, "raw_events", "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,name,timestamp,metadata_fingerprint,data", zzatj.zzbrj);
            zzatj.zza(this.zzbrt.zzKl(), sQLiteDatabase2, "event_filters", "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));", "app_id,audience_id,filter_id,event_name,data", null);
            zzatj.zza(this.zzbrt.zzKl(), sQLiteDatabase2, "property_filters", "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));", "app_id,audience_id,filter_id,property_name,data", null);
            zzatj.zza(this.zzbrt.zzKl(), sQLiteDatabase2, "audience_filter_values", "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));", "app_id,audience_id,current_results", null);
            zzatj.zza(this.zzbrt.zzKl(), sQLiteDatabase2, "app2", "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));", "app_id,first_open_count", zzatj.zzbrl);
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    static {
        Map arrayMap = new ArrayMap(1);
        zzbrh = arrayMap;
        arrayMap.put(Param.ORIGIN, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;");
        arrayMap = new ArrayMap(18);
        zzbri = arrayMap;
        arrayMap.put("app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;");
        zzbri.put("app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;");
        zzbri.put("gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;");
        zzbri.put("dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;");
        zzbri.put("measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;");
        zzbri.put("last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;");
        zzbri.put("day", "ALTER TABLE apps ADD COLUMN day INTEGER;");
        zzbri.put("daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;");
        zzbri.put("daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;");
        zzbri.put("daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;");
        zzbri.put("remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;");
        zzbri.put("config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;");
        zzbri.put("failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;");
        zzbri.put("app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;");
        zzbri.put("firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;");
        zzbri.put("daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;");
        zzbri.put("daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;");
        zzbri.put("health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;");
        zzbri.put("android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;");
        arrayMap = new ArrayMap(1);
        zzbrj = arrayMap;
        arrayMap.put("realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;");
        arrayMap = new ArrayMap(1);
        zzbrk = arrayMap;
        arrayMap.put("has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;");
        arrayMap = new ArrayMap(1);
        zzbrl = arrayMap;
        arrayMap.put("previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;");
    }

    zzatj(zzaue zzaue) {
        super(zzaue);
    }

    private boolean zzLN() {
        return getContext().getDatabasePath(zzow()).exists();
    }

    @TargetApi(11)
    static int zza(Cursor cursor, int i) {
        int i2 = VERSION.SDK_INT;
        return cursor.getType(i);
    }

    private long zza(String str, String[] strArr, long j) {
        Object e;
        Throwable th;
        Cursor cursor = null;
        try {
            Cursor rawQuery = getWritableDatabase().rawQuery(str, strArr);
            try {
                if (rawQuery.moveToFirst()) {
                    j = rawQuery.getLong(0);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return j;
                }
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return j;
            } catch (SQLiteException e2) {
                e = e2;
                cursor = rawQuery;
                try {
                    zzKl().zzLZ().zze("Database error", str, e);
                    throw e;
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                cursor = rawQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            zzKl().zzLZ().zze("Database error", str, e);
            throw e;
        }
    }

    static void zza(zzatx zzatx, SQLiteDatabase sQLiteDatabase) {
        if (zzatx == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        int i = VERSION.SDK_INT;
        File file = new File(sQLiteDatabase.getPath());
        if (!file.setReadable(false, false)) {
            zzatx.zzMb().log("Failed to turn off database read permission");
        }
        if (!file.setWritable(false, false)) {
            zzatx.zzMb().log("Failed to turn off database write permission");
        }
        if (!file.setReadable(true, true)) {
            zzatx.zzMb().log("Failed to turn on database read permission for owner");
        }
        if (!file.setWritable(true, true)) {
            zzatx.zzMb().log("Failed to turn on database write permission for owner");
        }
    }

    static void zza(zzatx zzatx, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, Map<String, String> map) throws SQLiteException {
        if (zzatx == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        if (!zza(zzatx, sQLiteDatabase, str)) {
            sQLiteDatabase.execSQL(str2);
        }
        try {
            zza(zzatx, sQLiteDatabase, str, str3, map);
        } catch (SQLiteException e) {
            zzatx.zzLZ().zzj("Failed to verify columns on table that was just created", str);
            throw e;
        }
    }

    static void zza(zzatx zzatx, SQLiteDatabase sQLiteDatabase, String str, String str2, Map<String, String> map) throws SQLiteException {
        if (zzatx == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        Iterable zzb = zzb(sQLiteDatabase, str);
        String[] split = str2.split(",");
        int length = split.length;
        int i = 0;
        while (i < length) {
            String str3 = split[i];
            if (zzb.remove(str3)) {
                i++;
            } else {
                StringBuilder stringBuilder = new StringBuilder((35 + String.valueOf(str).length()) + String.valueOf(str3).length());
                stringBuilder.append("Table ");
                stringBuilder.append(str);
                stringBuilder.append(" is missing required column: ");
                stringBuilder.append(str3);
                throw new SQLiteException(stringBuilder.toString());
            }
        }
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                if (!zzb.remove(entry.getKey())) {
                    sQLiteDatabase.execSQL((String) entry.getValue());
                }
            }
        }
        if (!zzb.isEmpty()) {
            zzatx.zzMb().zze("Table has extra columns. table, columns", str, TextUtils.join(", ", zzb));
        }
    }

    private void zza(String str, com.google.android.gms.internal.zzauu.zza zza) {
        zzob();
        zzmR();
        zzac.zzdr(str);
        zzac.zzw(zza);
        zzac.zzw(zza.zzbwp);
        zzac.zzw(zza.zzbwo);
        if (zza.zzbwn == null) {
            zzKl().zzMb().zzj("Audience with no ID. appId", zzatx.zzfE(str));
            return;
        }
        Object obj;
        int intValue = zza.zzbwn.intValue();
        for (com.google.android.gms.internal.zzauu.zzb zzb : zza.zzbwp) {
            if (zzb.zzbwr == null) {
                zzKl().zzMb().zze("Event filter with no ID. Audience definition ignored. appId, audienceId", zzatx.zzfE(str), zza.zzbwn);
                return;
            }
        }
        for (zzauu.zze zze : zza.zzbwo) {
            if (zze.zzbwr == null) {
                zzKl().zzMb().zze("Property filter with no ID. Audience definition ignored. appId, audienceId", zzatx.zzfE(str), zza.zzbwn);
                return;
            }
        }
        for (com.google.android.gms.internal.zzauu.zzb zzb2 : zza.zzbwp) {
            if (!zza(str, intValue, zzb2)) {
                obj = null;
                break;
            }
        }
        obj = 1;
        if (obj != null) {
            for (zzauu.zze zze2 : zza.zzbwo) {
                if (!zza(str, intValue, zze2)) {
                    obj = null;
                    break;
                }
            }
        }
        if (obj == null) {
            zzA(str, intValue);
        }
    }

    static boolean zza(zzatx zzatx, SQLiteDatabase sQLiteDatabase, String str) {
        Object obj;
        Throwable th;
        if (zzatx == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        Cursor cursor = null;
        try {
            SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
            Cursor query = sQLiteDatabase2.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
            try {
                boolean moveToFirst = query.moveToFirst();
                if (query != null) {
                    query.close();
                }
                return moveToFirst;
            } catch (SQLiteException e) {
                SQLiteException sQLiteException = e;
                cursor = query;
                obj = sQLiteException;
                try {
                    zzatx.zzMb().zze("Error querying for table", str, obj);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                cursor = query;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            obj = e2;
            zzatx.zzMb().zze("Error querying for table", str, obj);
            if (cursor != null) {
                cursor.close();
            }
            return false;
        }
    }

    private boolean zza(String str, int i, com.google.android.gms.internal.zzauu.zzb zzb) {
        zzob();
        zzmR();
        zzac.zzdr(str);
        zzac.zzw(zzb);
        if (TextUtils.isEmpty(zzb.zzbws)) {
            zzKl().zzMb().zzd("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", zzatx.zzfE(str), Integer.valueOf(i), String.valueOf(zzb.zzbwr));
            return false;
        }
        try {
            byte[] bArr = new byte[zzb.zzafB()];
            zzbyc zzah = zzbyc.zzah(bArr);
            zzb.zza(zzah);
            zzah.zzafo();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", zzb.zzbwr);
            contentValues.put("event_name", zzb.zzbws);
            contentValues.put(ShareConstants.WEB_DIALOG_PARAM_DATA, bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("event_filters", null, contentValues, 5) == -1) {
                    zzKl().zzLZ().zzj("Failed to insert event filter (got -1). appId", zzatx.zzfE(str));
                }
                return true;
            } catch (SQLiteException e) {
                zzKl().zzLZ().zze("Error storing event filter. appId", zzatx.zzfE(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzKl().zzLZ().zze("Configuration loss. Failed to serialize event filter. appId", zzatx.zzfE(str), e2);
            return false;
        }
    }

    private boolean zza(String str, int i, zzauu.zze zze) {
        zzob();
        zzmR();
        zzac.zzdr(str);
        zzac.zzw(zze);
        if (TextUtils.isEmpty(zze.zzbwH)) {
            zzKl().zzMb().zzd("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", zzatx.zzfE(str), Integer.valueOf(i), String.valueOf(zze.zzbwr));
            return false;
        }
        try {
            byte[] bArr = new byte[zze.zzafB()];
            zzbyc zzah = zzbyc.zzah(bArr);
            zze.zza(zzah);
            zzah.zzafo();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", zze.zzbwr);
            contentValues.put("property_name", zze.zzbwH);
            contentValues.put(ShareConstants.WEB_DIALOG_PARAM_DATA, bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                    return true;
                }
                zzKl().zzLZ().zzj("Failed to insert property filter (got -1). appId", zzatx.zzfE(str));
                return false;
            } catch (SQLiteException e) {
                zzKl().zzLZ().zze("Error storing property filter. appId", zzatx.zzfE(str), e);
                return false;
            }
        } catch (IOException e2) {
            zzKl().zzLZ().zze("Configuration loss. Failed to serialize property filter. appId", zzatx.zzfE(str), e2);
            return false;
        }
    }

    private long zzb(String str, String[] strArr) {
        Object e;
        Throwable th;
        Cursor cursor = null;
        try {
            Cursor rawQuery = getWritableDatabase().rawQuery(str, strArr);
            try {
                if (rawQuery.moveToFirst()) {
                    long j = rawQuery.getLong(0);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return j;
                }
                throw new SQLiteException("Database returned empty set");
            } catch (SQLiteException e2) {
                e = e2;
                cursor = rawQuery;
                try {
                    zzKl().zzLZ().zze("Database error", str, e);
                    throw e;
                } catch (Throwable th2) {
                    th = th2;
                    rawQuery = cursor;
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                if (rawQuery != null) {
                    rawQuery.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            zzKl().zzLZ().zze("Database error", str, e);
            throw e;
        }
    }

    static Set<String> zzb(SQLiteDatabase sQLiteDatabase, String str) {
        Object hashSet = new HashSet();
        StringBuilder stringBuilder = new StringBuilder(22 + String.valueOf(str).length());
        stringBuilder.append("SELECT * FROM ");
        stringBuilder.append(str);
        stringBuilder.append(" LIMIT 0");
        Cursor rawQuery = sQLiteDatabase.rawQuery(stringBuilder.toString(), null);
        try {
            Collections.addAll(hashSet, rawQuery.getColumnNames());
            return hashSet;
        } finally {
            rawQuery.close();
        }
    }

    public void beginTransaction() {
        zzob();
        getWritableDatabase().beginTransaction();
    }

    public void endTransaction() {
        zzob();
        getWritableDatabase().endTransaction();
    }

    SQLiteDatabase getWritableDatabase() {
        zzmR();
        try {
            return this.zzbrm.getWritableDatabase();
        } catch (SQLiteException e) {
            zzKl().zzMb().zzj("Error opening database", e);
            throw e;
        }
    }

    public void setTransactionSuccessful() {
        zzob();
        getWritableDatabase().setTransactionSuccessful();
    }

    void zzA(String str, int i) {
        zzob();
        zzmR();
        zzac.zzdr(str);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(i)});
        writableDatabase.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(i)});
    }

    public void zzJ(List<Long> list) {
        zzac.zzw(list);
        zzmR();
        zzob();
        StringBuilder stringBuilder = new StringBuilder("rowid in (");
        for (int i = 0; i < list.size(); i++) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(((Long) list.get(i)).longValue());
        }
        stringBuilder.append(")");
        int delete = getWritableDatabase().delete("raw_events", stringBuilder.toString(), null);
        if (delete != list.size()) {
            zzKl().zzLZ().zze("Deleted fewer rows from raw events table than expected", Integer.valueOf(delete), Integer.valueOf(list.size()));
        }
    }

    public String zzLE() {
        Cursor rawQuery;
        Object e;
        Throwable th;
        try {
            rawQuery = getWritableDatabase().rawQuery("select app_id from queue order by has_realtime desc, rowid asc limit 1;", null);
            try {
                if (rawQuery.moveToFirst()) {
                    String string = rawQuery.getString(0);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return string;
                }
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return null;
            } catch (SQLiteException e2) {
                e = e2;
                try {
                    zzKl().zzLZ().zzj("Database error getting next bundle app id", e);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    throw th;
                }
            }
        } catch (SQLiteException e3) {
            e = e3;
            rawQuery = null;
            zzKl().zzLZ().zzj("Database error getting next bundle app id", e);
            if (rawQuery != null) {
                rawQuery.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            rawQuery = null;
            if (rawQuery != null) {
                rawQuery.close();
            }
            throw th;
        }
    }

    public boolean zzLF() {
        return zzb("select count(1) > 0 from queue where has_realtime = 1", null) != 0;
    }

    void zzLG() {
        zzmR();
        zzob();
        if (zzLN()) {
            long j = zzKm().zzbte.get();
            long elapsedRealtime = zznR().elapsedRealtime();
            if (Math.abs(elapsedRealtime - j) > zzKn().zzLl()) {
                zzKm().zzbte.set(elapsedRealtime);
                zzLH();
            }
        }
    }

    void zzLH() {
        zzmR();
        zzob();
        if (zzLN()) {
            int delete = getWritableDatabase().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(zznR().currentTimeMillis()), String.valueOf(zzKn().zzLk())});
            if (delete > 0) {
                zzKl().zzMf().zzj("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
            }
        }
    }

    public long zzLI() {
        return zza("select max(bundle_end_timestamp) from queue", null, 0);
    }

    public long zzLJ() {
        return zza("select max(timestamp) from raw_events", null, 0);
    }

    public boolean zzLK() {
        return zzb("select count(1) > 0 from raw_events", null) != 0;
    }

    public boolean zzLL() {
        return zzb("select count(1) > 0 from raw_events where realtime = 1", null) != 0;
    }

    public long zzLM() {
        Object obj;
        Throwable th;
        Cursor cursor = null;
        try {
            Cursor rawQuery = getWritableDatabase().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
            try {
                if (rawQuery.moveToFirst()) {
                    long j = rawQuery.getLong(0);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return j;
                }
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return -1;
            } catch (SQLiteException e) {
                Cursor cursor2 = rawQuery;
                obj = e;
                cursor = cursor2;
                try {
                    zzKl().zzLZ().zzj("Error querying raw events", obj);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return -1;
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                cursor = rawQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            obj = e2;
            zzKl().zzLZ().zzj("Error querying raw events", obj);
            if (cursor != null) {
                cursor.close();
            }
            return -1;
        }
    }

    public zzatn zzQ(String str, String str2) {
        Cursor query;
        Object obj;
        Throwable th;
        String str3 = str2;
        zzac.zzdr(str);
        zzac.zzdr(str2);
        zzmR();
        zzob();
        try {
            query = getWritableDatabase().query("events", new String[]{"lifetime_count", "current_bundle_count", "last_fire_timestamp"}, "app_id=? and name=?", new String[]{str, str3}, null, null, null);
            try {
                if (query.moveToFirst()) {
                    zzatn zzatn = new zzatn(str, str3, query.getLong(0), query.getLong(1), query.getLong(2));
                    if (query.moveToNext()) {
                        zzKl().zzLZ().zzj("Got multiple records for event aggregates, expected one. appId", zzatx.zzfE(str));
                    }
                    if (query != null) {
                        query.close();
                    }
                    return zzatn;
                }
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (SQLiteException e) {
                obj = e;
                try {
                    zzKl().zzLZ().zzd("Error querying events. appId", zzatx.zzfE(str), str3, obj);
                    if (query != null) {
                        query.close();
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
        } catch (SQLiteException e2) {
            obj = e2;
            query = null;
            zzKl().zzLZ().zzd("Error querying events. appId", zzatx.zzfE(str), str3, obj);
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th22) {
            th = th22;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    public void zzR(String str, String str2) {
        zzac.zzdr(str);
        zzac.zzdr(str2);
        zzmR();
        zzob();
        try {
            zzKl().zzMf().zzj("Deleted user attribute rows", Integer.valueOf(getWritableDatabase().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2})));
        } catch (SQLiteException e) {
            zzKl().zzLZ().zzd("Error deleting user attribute. appId", zzatx.zzfE(str), str2, e);
        }
    }

    public zzaus zzS(String str, String str2) {
        SQLiteException e;
        Object obj;
        Throwable th;
        Throwable th2;
        zzatj zzatj;
        String str3 = str2;
        zzac.zzdr(str);
        zzac.zzdr(str2);
        zzmR();
        zzob();
        Cursor query;
        try {
            query = getWritableDatabase().query("user_attributes", new String[]{"triggered_timestamp", "value", Param.ORIGIN}, "app_id=? and name=?", new String[]{str, str3}, null, null, null);
            try {
                if (query.moveToFirst()) {
                    long j = query.getLong(0);
                    try {
                        String str4 = str;
                        zzaus zzaus = new zzaus(str4, query.getString(2), str3, j, zzb(query, 1));
                        if (query.moveToNext()) {
                            zzKl().zzLZ().zzj("Got multiple records for user property, expected one. appId", zzatx.zzfE(str));
                        }
                        if (query != null) {
                            query.close();
                        }
                        return zzaus;
                    } catch (SQLiteException e2) {
                        e = e2;
                        obj = e;
                        try {
                            zzKl().zzLZ().zzd("Error querying user property. appId", zzatx.zzfE(str), str3, obj);
                            if (query != null) {
                                query.close();
                            }
                            return null;
                        } catch (Throwable th3) {
                            th = th3;
                            th2 = th;
                            if (query != null) {
                                query.close();
                            }
                            throw th2;
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (SQLiteException e3) {
                e = e3;
                zzatj = this;
                obj = e;
                zzKl().zzLZ().zzd("Error querying user property. appId", zzatx.zzfE(str), str3, obj);
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (Throwable th4) {
                th = th4;
                zzatj = this;
                th2 = th;
                if (query != null) {
                    query.close();
                }
                throw th2;
            }
        } catch (SQLiteException e4) {
            zzatj = this;
            obj = e4;
            query = null;
            zzKl().zzLZ().zzd("Error querying user property. appId", zzatx.zzfE(str), str3, obj);
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th5) {
            zzatj = this;
            th2 = th5;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th2;
        }
    }

    public zzatg zzT(String str, String str2) {
        Cursor query;
        SQLiteException e;
        Object obj;
        Throwable th;
        Throwable th2;
        zzatj zzatj;
        String str3 = str2;
        zzac.zzdr(str);
        zzac.zzdr(str2);
        zzmR();
        zzob();
        try {
            int i = 8;
            i = 6;
            int i2 = 5;
            query = getWritableDatabase().query("conditional_properties", new String[]{Param.ORIGIN, "value", "active", "trigger_event_name", "trigger_timeout", "timed_out_event", "creation_timestamp", "triggered_event", "triggered_timestamp", "time_to_live", "expired_event"}, "app_id=? and name=?", new String[]{str, str3}, null, null, null);
            try {
                if (query.moveToFirst()) {
                    String string = query.getString(0);
                    try {
                        Object zzb = zzb(query, 1);
                        boolean z = query.getInt(2) != 0;
                        String string2 = query.getString(3);
                        long j = query.getLong(4);
                        zzatq zzatq = (zzatq) zzKh().zzb(query.getBlob(i2), zzatq.CREATOR);
                        String str4 = str;
                        zzatg zzatg = new zzatg(str4, string, new zzauq(str3, query.getLong(8), zzb, string), query.getLong(i), z, string2, zzatq, j, (zzatq) zzKh().zzb(query.getBlob(7), zzatq.CREATOR), query.getLong(9), (zzatq) zzKh().zzb(query.getBlob(10), zzatq.CREATOR));
                        if (query.moveToNext()) {
                            zzKl().zzLZ().zze("Got multiple records for conditional property, expected one", zzatx.zzfE(str), str3);
                        }
                        if (query != null) {
                            query.close();
                        }
                        return zzatg;
                    } catch (SQLiteException e2) {
                        e = e2;
                        obj = e;
                        try {
                            zzKl().zzLZ().zzd("Error querying conditional property", zzatx.zzfE(str), str3, obj);
                            if (query != null) {
                                query.close();
                            }
                            return null;
                        } catch (Throwable th3) {
                            th = th3;
                            th2 = th;
                            if (query != null) {
                                query.close();
                            }
                            throw th2;
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (SQLiteException e3) {
                e = e3;
                zzatj = this;
                obj = e;
                zzKl().zzLZ().zzd("Error querying conditional property", zzatx.zzfE(str), str3, obj);
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (Throwable th4) {
                th = th4;
                zzatj = this;
                th2 = th;
                if (query != null) {
                    query.close();
                }
                throw th2;
            }
        } catch (SQLiteException e4) {
            zzatj = this;
            obj = e4;
            query = null;
            zzKl().zzLZ().zzd("Error querying conditional property", zzatx.zzfE(str), str3, obj);
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th5) {
            zzatj = this;
            th2 = th5;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th2;
        }
    }

    public int zzU(String str, String str2) {
        zzac.zzdr(str);
        zzac.zzdr(str2);
        zzmR();
        zzob();
        try {
            return getWritableDatabase().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzKl().zzLZ().zzd("Error deleting conditional property", zzatx.zzfE(str), str2, e);
            return 0;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.zzauu.zzb>> zzV(java.lang.String r13, java.lang.String r14) {
        /*
        r12 = this;
        r12.zzob();
        r12.zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(r13);
        com.google.android.gms.common.internal.zzac.zzdr(r14);
        r0 = new android.support.v4.util.ArrayMap;
        r0.<init>();
        r1 = r12.getWritableDatabase();
        r9 = 0;
        r2 = "event_filters";
        r3 = 2;
        r4 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x009b, all -> 0x0098 }
        r5 = "audience_id";
        r10 = 0;
        r4[r10] = r5;	 Catch:{ SQLiteException -> 0x009b, all -> 0x0098 }
        r5 = "data";
        r11 = 1;
        r4[r11] = r5;	 Catch:{ SQLiteException -> 0x009b, all -> 0x0098 }
        r5 = "app_id=? AND event_name=?";
        r6 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x009b, all -> 0x0098 }
        r6[r10] = r13;	 Catch:{ SQLiteException -> 0x009b, all -> 0x0098 }
        r6[r11] = r14;	 Catch:{ SQLiteException -> 0x009b, all -> 0x0098 }
        r14 = 0;
        r7 = 0;
        r8 = 0;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r6 = r14;
        r14 = r1.query(r2, r3, r4, r5, r6, r7, r8);	 Catch:{ SQLiteException -> 0x009b, all -> 0x0098 }
        r1 = r14.moveToFirst();	 Catch:{ SQLiteException -> 0x0096 }
        if (r1 != 0) goto L_0x0048;
    L_0x003e:
        r0 = java.util.Collections.emptyMap();	 Catch:{ SQLiteException -> 0x0096 }
        if (r14 == 0) goto L_0x0047;
    L_0x0044:
        r14.close();
    L_0x0047:
        return r0;
    L_0x0048:
        r1 = r14.getBlob(r11);	 Catch:{ SQLiteException -> 0x0096 }
        r1 = com.google.android.gms.internal.zzbyb.zzag(r1);	 Catch:{ SQLiteException -> 0x0096 }
        r2 = new com.google.android.gms.internal.zzauu$zzb;	 Catch:{ SQLiteException -> 0x0096 }
        r2.<init>();	 Catch:{ SQLiteException -> 0x0096 }
        r2.zzb(r1);	 Catch:{ IOException -> 0x0078 }
        r1 = r14.getInt(r10);	 Catch:{ SQLiteException -> 0x0096 }
        r3 = java.lang.Integer.valueOf(r1);	 Catch:{ SQLiteException -> 0x0096 }
        r3 = r0.get(r3);	 Catch:{ SQLiteException -> 0x0096 }
        r3 = (java.util.List) r3;	 Catch:{ SQLiteException -> 0x0096 }
        if (r3 != 0) goto L_0x0074;
    L_0x0068:
        r3 = new java.util.ArrayList;	 Catch:{ SQLiteException -> 0x0096 }
        r3.<init>();	 Catch:{ SQLiteException -> 0x0096 }
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ SQLiteException -> 0x0096 }
        r0.put(r1, r3);	 Catch:{ SQLiteException -> 0x0096 }
    L_0x0074:
        r3.add(r2);	 Catch:{ SQLiteException -> 0x0096 }
        goto L_0x008a;
    L_0x0078:
        r1 = move-exception;
        r2 = r12.zzKl();	 Catch:{ SQLiteException -> 0x0096 }
        r2 = r2.zzLZ();	 Catch:{ SQLiteException -> 0x0096 }
        r3 = "Failed to merge filter. appId";
        r4 = com.google.android.gms.internal.zzatx.zzfE(r13);	 Catch:{ SQLiteException -> 0x0096 }
        r2.zze(r3, r4, r1);	 Catch:{ SQLiteException -> 0x0096 }
    L_0x008a:
        r1 = r14.moveToNext();	 Catch:{ SQLiteException -> 0x0096 }
        if (r1 != 0) goto L_0x0048;
    L_0x0090:
        if (r14 == 0) goto L_0x0095;
    L_0x0092:
        r14.close();
    L_0x0095:
        return r0;
    L_0x0096:
        r0 = move-exception;
        goto L_0x009d;
    L_0x0098:
        r13 = move-exception;
        r14 = r9;
        goto L_0x00b5;
    L_0x009b:
        r0 = move-exception;
        r14 = r9;
    L_0x009d:
        r1 = r12.zzKl();	 Catch:{ all -> 0x00b4 }
        r1 = r1.zzLZ();	 Catch:{ all -> 0x00b4 }
        r2 = "Database error querying filters. appId";
        r13 = com.google.android.gms.internal.zzatx.zzfE(r13);	 Catch:{ all -> 0x00b4 }
        r1.zze(r2, r13, r0);	 Catch:{ all -> 0x00b4 }
        if (r14 == 0) goto L_0x00b3;
    L_0x00b0:
        r14.close();
    L_0x00b3:
        return r9;
    L_0x00b4:
        r13 = move-exception;
    L_0x00b5:
        if (r14 == 0) goto L_0x00ba;
    L_0x00b7:
        r14.close();
    L_0x00ba:
        throw r13;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzatj.zzV(java.lang.String, java.lang.String):java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.zzauu$zzb>>");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.zzauu.zze>> zzW(java.lang.String r13, java.lang.String r14) {
        /*
        r12 = this;
        r12.zzob();
        r12.zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(r13);
        com.google.android.gms.common.internal.zzac.zzdr(r14);
        r0 = new android.support.v4.util.ArrayMap;
        r0.<init>();
        r1 = r12.getWritableDatabase();
        r9 = 0;
        r2 = "property_filters";
        r3 = 2;
        r4 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x009b, all -> 0x0098 }
        r5 = "audience_id";
        r10 = 0;
        r4[r10] = r5;	 Catch:{ SQLiteException -> 0x009b, all -> 0x0098 }
        r5 = "data";
        r11 = 1;
        r4[r11] = r5;	 Catch:{ SQLiteException -> 0x009b, all -> 0x0098 }
        r5 = "app_id=? AND property_name=?";
        r6 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x009b, all -> 0x0098 }
        r6[r10] = r13;	 Catch:{ SQLiteException -> 0x009b, all -> 0x0098 }
        r6[r11] = r14;	 Catch:{ SQLiteException -> 0x009b, all -> 0x0098 }
        r14 = 0;
        r7 = 0;
        r8 = 0;
        r3 = r4;
        r4 = r5;
        r5 = r6;
        r6 = r14;
        r14 = r1.query(r2, r3, r4, r5, r6, r7, r8);	 Catch:{ SQLiteException -> 0x009b, all -> 0x0098 }
        r1 = r14.moveToFirst();	 Catch:{ SQLiteException -> 0x0096 }
        if (r1 != 0) goto L_0x0048;
    L_0x003e:
        r0 = java.util.Collections.emptyMap();	 Catch:{ SQLiteException -> 0x0096 }
        if (r14 == 0) goto L_0x0047;
    L_0x0044:
        r14.close();
    L_0x0047:
        return r0;
    L_0x0048:
        r1 = r14.getBlob(r11);	 Catch:{ SQLiteException -> 0x0096 }
        r1 = com.google.android.gms.internal.zzbyb.zzag(r1);	 Catch:{ SQLiteException -> 0x0096 }
        r2 = new com.google.android.gms.internal.zzauu$zze;	 Catch:{ SQLiteException -> 0x0096 }
        r2.<init>();	 Catch:{ SQLiteException -> 0x0096 }
        r2.zzb(r1);	 Catch:{ IOException -> 0x0078 }
        r1 = r14.getInt(r10);	 Catch:{ SQLiteException -> 0x0096 }
        r3 = java.lang.Integer.valueOf(r1);	 Catch:{ SQLiteException -> 0x0096 }
        r3 = r0.get(r3);	 Catch:{ SQLiteException -> 0x0096 }
        r3 = (java.util.List) r3;	 Catch:{ SQLiteException -> 0x0096 }
        if (r3 != 0) goto L_0x0074;
    L_0x0068:
        r3 = new java.util.ArrayList;	 Catch:{ SQLiteException -> 0x0096 }
        r3.<init>();	 Catch:{ SQLiteException -> 0x0096 }
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ SQLiteException -> 0x0096 }
        r0.put(r1, r3);	 Catch:{ SQLiteException -> 0x0096 }
    L_0x0074:
        r3.add(r2);	 Catch:{ SQLiteException -> 0x0096 }
        goto L_0x008a;
    L_0x0078:
        r1 = move-exception;
        r2 = r12.zzKl();	 Catch:{ SQLiteException -> 0x0096 }
        r2 = r2.zzLZ();	 Catch:{ SQLiteException -> 0x0096 }
        r3 = "Failed to merge filter";
        r4 = com.google.android.gms.internal.zzatx.zzfE(r13);	 Catch:{ SQLiteException -> 0x0096 }
        r2.zze(r3, r4, r1);	 Catch:{ SQLiteException -> 0x0096 }
    L_0x008a:
        r1 = r14.moveToNext();	 Catch:{ SQLiteException -> 0x0096 }
        if (r1 != 0) goto L_0x0048;
    L_0x0090:
        if (r14 == 0) goto L_0x0095;
    L_0x0092:
        r14.close();
    L_0x0095:
        return r0;
    L_0x0096:
        r0 = move-exception;
        goto L_0x009d;
    L_0x0098:
        r13 = move-exception;
        r14 = r9;
        goto L_0x00b5;
    L_0x009b:
        r0 = move-exception;
        r14 = r9;
    L_0x009d:
        r1 = r12.zzKl();	 Catch:{ all -> 0x00b4 }
        r1 = r1.zzLZ();	 Catch:{ all -> 0x00b4 }
        r2 = "Database error querying filters. appId";
        r13 = com.google.android.gms.internal.zzatx.zzfE(r13);	 Catch:{ all -> 0x00b4 }
        r1.zze(r2, r13, r0);	 Catch:{ all -> 0x00b4 }
        if (r14 == 0) goto L_0x00b3;
    L_0x00b0:
        r14.close();
    L_0x00b3:
        return r9;
    L_0x00b4:
        r13 = move-exception;
    L_0x00b5:
        if (r14 == 0) goto L_0x00ba;
    L_0x00b7:
        r14.close();
    L_0x00ba:
        throw r13;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzatj.zzW(java.lang.String, java.lang.String):java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.zzauu$zze>>");
    }

    protected long zzX(String str, String str2) {
        long zza;
        SQLiteException e;
        Object obj;
        Throwable th;
        Throwable th2;
        zzatj zzatj;
        String str3 = str;
        String str4 = str2;
        zzac.zzdr(str);
        zzac.zzdr(str2);
        zzmR();
        zzob();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues;
            StringBuilder stringBuilder = new StringBuilder(32 + String.valueOf(str2).length());
            stringBuilder.append("select ");
            stringBuilder.append(str4);
            stringBuilder.append(" from app2 where app_id=?");
            try {
                zza = zza(stringBuilder.toString(), new String[]{str3}, -1);
                if (zza == -1) {
                    contentValues = new ContentValues();
                    contentValues.put("app_id", str3);
                    contentValues.put("first_open_count", Integer.valueOf(0));
                    contentValues.put("previous_install_count", Integer.valueOf(0));
                    if (writableDatabase.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                        zzKl().zzLZ().zze("Failed to insert column (got -1). appId", zzatx.zzfE(str), str4);
                        writableDatabase.endTransaction();
                        return -1;
                    }
                    zza = 0;
                }
            } catch (SQLiteException e2) {
                e = e2;
                obj = e;
                zza = 0;
                try {
                    zzKl().zzLZ().zzd("Error inserting column. appId", zzatx.zzfE(str), str4, obj);
                    writableDatabase.endTransaction();
                    return zza;
                } catch (Throwable th3) {
                    th = th3;
                    th2 = th;
                    writableDatabase.endTransaction();
                    throw th2;
                }
            }
            try {
                contentValues = new ContentValues();
                contentValues.put("app_id", str3);
                contentValues.put(str4, Long.valueOf(zza + 1));
                if (((long) writableDatabase.update("app2", contentValues, "app_id = ?", new String[]{str3})) == 0) {
                    zzKl().zzLZ().zze("Failed to update column (got 0). appId", zzatx.zzfE(str), str4);
                    writableDatabase.endTransaction();
                    return -1;
                }
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                return zza;
            } catch (SQLiteException e3) {
                obj = e3;
                zzKl().zzLZ().zzd("Error inserting column. appId", zzatx.zzfE(str), str4, obj);
                writableDatabase.endTransaction();
                return zza;
            }
        } catch (SQLiteException e4) {
            e3 = e4;
            zzatj = this;
            obj = e3;
            zza = 0;
            zzKl().zzLZ().zzd("Error inserting column. appId", zzatx.zzfE(str), str4, obj);
            writableDatabase.endTransaction();
            return zza;
        } catch (Throwable th4) {
            th = th4;
            zzatj = this;
            th2 = th;
            writableDatabase.endTransaction();
            throw th2;
        }
    }

    public long zza(zze zze) throws IOException {
        zzmR();
        zzob();
        zzac.zzw(zze);
        zzac.zzdr(zze.zzaS);
        try {
            byte[] bArr = new byte[zze.zzafB()];
            zzbyc zzah = zzbyc.zzah(bArr);
            zze.zza(zzah);
            zzah.zzafo();
            long zzz = zzKh().zzz(bArr);
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zze.zzaS);
            contentValues.put("metadata_fingerprint", Long.valueOf(zzz));
            contentValues.put("metadata", bArr);
            try {
                getWritableDatabase().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
                return zzz;
            } catch (SQLiteException e) {
                zzKl().zzLZ().zze("Error storing raw event metadata. appId", zzatx.zzfE(zze.zzaS), e);
                throw e;
            }
        } catch (IOException e2) {
            zzKl().zzLZ().zze("Data loss. Failed to serialize event metadata. appId", zzatx.zzfE(zze.zzaS), e2);
            throw e2;
        }
    }

    public zza zza(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        Cursor query;
        Object obj;
        Cursor cursor;
        Throwable th;
        zzac.zzdr(str);
        zzmR();
        zzob();
        String[] strArr = new String[]{str};
        zza zza = new zza();
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String[] strArr2 = new String[]{str};
            SQLiteDatabase sQLiteDatabase = writableDatabase;
            int i = 5;
            i = 4;
            i = 3;
            i = 2;
            query = sQLiteDatabase.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", strArr2, null, null, null);
            try {
                if (query.moveToFirst()) {
                    if (query.getLong(0) == j) {
                        zza.zzbrp = query.getLong(1);
                        zza.zzbro = query.getLong(i);
                        zza.zzbrq = query.getLong(3);
                        zza.zzbrr = query.getLong(4);
                        zza.zzbrs = query.getLong(5);
                    }
                    if (z) {
                        zza.zzbrp++;
                    }
                    if (z2) {
                        zza.zzbro++;
                    }
                    if (z3) {
                        zza.zzbrq++;
                    }
                    if (z4) {
                        zza.zzbrr++;
                    }
                    if (z5) {
                        zza.zzbrs++;
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("day", Long.valueOf(j));
                    contentValues.put("daily_public_events_count", Long.valueOf(zza.zzbro));
                    contentValues.put("daily_events_count", Long.valueOf(zza.zzbrp));
                    contentValues.put("daily_conversions_count", Long.valueOf(zza.zzbrq));
                    contentValues.put("daily_error_events_count", Long.valueOf(zza.zzbrr));
                    contentValues.put("daily_realtime_events_count", Long.valueOf(zza.zzbrs));
                    writableDatabase.update("apps", contentValues, "app_id=?", strArr);
                    if (query != null) {
                        query.close();
                    }
                    return zza;
                }
                zzKl().zzMb().zzj("Not updating daily counts, app is not known. appId", zzatx.zzfE(str));
                if (query != null) {
                    query.close();
                }
                return zza;
            } catch (SQLiteException e) {
                obj = e;
                cursor = query;
                try {
                    zzKl().zzLZ().zze("Error updating daily counts. appId", zzatx.zzfE(str), obj);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return zza;
                } catch (Throwable th2) {
                    th = th2;
                    query = cursor;
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            } catch (Throwable th22) {
                th = th22;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            obj = e2;
            cursor = null;
            zzKl().zzLZ().zze("Error updating daily counts. appId", zzatx.zzfE(str), obj);
            if (cursor != null) {
                cursor.close();
            }
            return zza;
        } catch (Throwable th222) {
            th = th222;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    void zza(ContentValues contentValues, String str, Object obj) {
        zzac.zzdr(str);
        zzac.zzw(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else if (obj instanceof Double) {
            contentValues.put(str, (Double) obj);
        } else {
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    public void zza(zzatc zzatc) {
        zzac.zzw(zzatc);
        zzmR();
        zzob();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzatc.zzke());
        contentValues.put("app_instance_id", zzatc.getAppInstanceId());
        contentValues.put("gmp_app_id", zzatc.getGmpAppId());
        contentValues.put("resettable_device_id_hash", zzatc.zzKp());
        contentValues.put("last_bundle_index", Long.valueOf(zzatc.zzKy()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzatc.zzKr()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzatc.zzKs()));
        contentValues.put("app_version", zzatc.zzmZ());
        contentValues.put("app_store", zzatc.zzKu());
        contentValues.put("gmp_version", Long.valueOf(zzatc.zzKv()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzatc.zzKw()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzatc.zzKx()));
        contentValues.put("day", Long.valueOf(zzatc.zzKC()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzatc.zzKD()));
        contentValues.put("daily_events_count", Long.valueOf(zzatc.zzKE()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzatc.zzKF()));
        contentValues.put("config_fetched_time", Long.valueOf(zzatc.zzKz()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzatc.zzKA()));
        contentValues.put("app_version_int", Long.valueOf(zzatc.zzKt()));
        contentValues.put("firebase_instance_id", zzatc.zzKq());
        contentValues.put("daily_error_events_count", Long.valueOf(zzatc.zzKH()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzatc.zzKG()));
        contentValues.put("health_monitor_sample", zzatc.zzKI());
        contentValues.put("android_id", Long.valueOf(zzatc.zzuW()));
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (((long) writableDatabase.update("apps", contentValues, "app_id = ?", new String[]{zzatc.zzke()})) == 0 && writableDatabase.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                zzKl().zzLZ().zzj("Failed to insert/update app (got -1). appId", zzatx.zzfE(zzatc.zzke()));
            }
        } catch (SQLiteException e) {
            zzKl().zzLZ().zze("Error storing app. appId", zzatx.zzfE(zzatc.zzke()), e);
        }
    }

    public void zza(zzatn zzatn) {
        zzac.zzw(zzatn);
        zzmR();
        zzob();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzatn.mAppId);
        contentValues.put("name", zzatn.mName);
        contentValues.put("lifetime_count", Long.valueOf(zzatn.zzbrB));
        contentValues.put("current_bundle_count", Long.valueOf(zzatn.zzbrC));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzatn.zzbrD));
        try {
            if (getWritableDatabase().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                zzKl().zzLZ().zzj("Failed to insert/update event aggregates (got -1). appId", zzatx.zzfE(zzatn.mAppId));
            }
        } catch (SQLiteException e) {
            zzKl().zzLZ().zze("Error storing event aggregates. appId", zzatx.zzfE(zzatn.mAppId), e);
        }
    }

    void zza(String str, int i, zzf zzf) {
        Object e;
        com.google.android.gms.internal.zzatx.zza zzLZ;
        String str2;
        zzob();
        zzmR();
        zzac.zzdr(str);
        zzac.zzw(zzf);
        try {
            byte[] bArr = new byte[zzf.zzafB()];
            zzbyc zzah = zzbyc.zzah(bArr);
            zzf.zza(zzah);
            zzah.zzafo();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("current_results", bArr);
            try {
                if (getWritableDatabase().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                    zzKl().zzLZ().zzj("Failed to insert filter results (got -1). appId", zzatx.zzfE(str));
                }
            } catch (SQLiteException e2) {
                e = e2;
                zzLZ = zzKl().zzLZ();
                str2 = "Error storing filter results. appId";
                zzLZ.zze(str2, zzatx.zzfE(str), e);
            }
        } catch (IOException e3) {
            e = e3;
            zzLZ = zzKl().zzLZ();
            str2 = "Configuration loss. Failed to serialize filter results. appId";
            zzLZ.zze(str2, zzatx.zzfE(str), e);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void zza(java.lang.String r25, long r26, long r28, com.google.android.gms.internal.zzatj.zzb r30) {
        /*
        r24 = this;
        r4 = r30;
        com.google.android.gms.common.internal.zzac.zzw(r30);
        r24.zzmR();
        r24.zzob();
        r5 = 0;
        r15 = r24.getWritableDatabase();	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r6 = android.text.TextUtils.isEmpty(r25);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r16 = -1;
        r14 = 2;
        r13 = 1;
        r12 = 0;
        if (r6 == 0) goto L_0x0086;
    L_0x001b:
        r6 = (r28 > r16 ? 1 : (r28 == r16 ? 0 : -1));
        if (r6 == 0) goto L_0x002e;
    L_0x001f:
        r6 = new java.lang.String[r14];	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r7 = java.lang.String.valueOf(r28);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r6[r12] = r7;	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r7 = java.lang.String.valueOf(r26);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r6[r13] = r7;	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        goto L_0x0036;
    L_0x002e:
        r6 = new java.lang.String[r13];	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r7 = java.lang.String.valueOf(r26);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r6[r12] = r7;	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
    L_0x0036:
        r7 = (r28 > r16 ? 1 : (r28 == r16 ? 0 : -1));
        if (r7 == 0) goto L_0x003d;
    L_0x003a:
        r7 = "rowid <= ? and ";
        goto L_0x003f;
    L_0x003d:
        r7 = "";
    L_0x003f:
        r8 = 148; // 0x94 float:2.07E-43 double:7.3E-322;
        r9 = java.lang.String.valueOf(r7);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r9 = r9.length();	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r8 = r8 + r9;
        r9 = new java.lang.StringBuilder;	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r9.<init>(r8);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r8 = "select app_id, metadata_fingerprint from raw_events where ";
        r9.append(r8);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r9.append(r7);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r7 = "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;";
        r9.append(r7);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r7 = r9.toString();	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r6 = r15.rawQuery(r7, r6);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r5 = r6.moveToFirst();	 Catch:{ SQLiteException -> 0x0240 }
        if (r5 != 0) goto L_0x0070;
    L_0x006a:
        if (r6 == 0) goto L_0x006f;
    L_0x006c:
        r6.close();
    L_0x006f:
        return;
    L_0x0070:
        r5 = r6.getString(r12);	 Catch:{ SQLiteException -> 0x0240 }
        r1 = r6.getString(r13);	 Catch:{ SQLiteException -> 0x0083 }
        r6.close();	 Catch:{ SQLiteException -> 0x0083 }
        r18 = r6;
        r23 = r5;
        r5 = r1;
        r1 = r23;
        goto L_0x00de;
    L_0x0083:
        r0 = move-exception;
        goto L_0x0243;
    L_0x0086:
        r6 = (r28 > r16 ? 1 : (r28 == r16 ? 0 : -1));
        if (r6 == 0) goto L_0x0095;
    L_0x008a:
        r6 = new java.lang.String[r14];	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r6[r12] = r25;	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r7 = java.lang.String.valueOf(r28);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r6[r13] = r7;	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        goto L_0x0099;
    L_0x0095:
        r6 = new java.lang.String[r13];	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r6[r12] = r25;	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
    L_0x0099:
        r7 = (r28 > r16 ? 1 : (r28 == r16 ? 0 : -1));
        if (r7 == 0) goto L_0x00a0;
    L_0x009d:
        r7 = " and rowid <= ?";
        goto L_0x00a2;
    L_0x00a0:
        r7 = "";
    L_0x00a2:
        r8 = 84;
        r9 = java.lang.String.valueOf(r7);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r9 = r9.length();	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r8 = r8 + r9;
        r9 = new java.lang.StringBuilder;	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r9.<init>(r8);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r8 = "select metadata_fingerprint from raw_events where app_id = ?";
        r9.append(r8);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r9.append(r7);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r7 = " order by rowid limit 1;";
        r9.append(r7);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r7 = r9.toString();	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r6 = r15.rawQuery(r7, r6);	 Catch:{ SQLiteException -> 0x0248, all -> 0x0245 }
        r5 = r6.moveToFirst();	 Catch:{ SQLiteException -> 0x0240 }
        if (r5 != 0) goto L_0x00d3;
    L_0x00cd:
        if (r6 == 0) goto L_0x00d2;
    L_0x00cf:
        r6.close();
    L_0x00d2:
        return;
    L_0x00d3:
        r5 = r6.getString(r12);	 Catch:{ SQLiteException -> 0x0240 }
        r6.close();	 Catch:{ SQLiteException -> 0x0240 }
        r1 = r25;
        r18 = r6;
    L_0x00de:
        r7 = "raw_events_metadata";
        r8 = new java.lang.String[r13];	 Catch:{ SQLiteException -> 0x023b, all -> 0x0236 }
        r6 = "metadata";
        r8[r12] = r6;	 Catch:{ SQLiteException -> 0x023b, all -> 0x0236 }
        r9 = "app_id = ? and metadata_fingerprint = ?";
        r10 = new java.lang.String[r14];	 Catch:{ SQLiteException -> 0x023b, all -> 0x0236 }
        r10[r12] = r1;	 Catch:{ SQLiteException -> 0x023b, all -> 0x0236 }
        r10[r13] = r5;	 Catch:{ SQLiteException -> 0x023b, all -> 0x0236 }
        r11 = 0;
        r19 = 0;
        r20 = "rowid";
        r21 = "2";
        r6 = r15;
        r12 = r19;
        r13 = r20;
        r22 = r15;
        r15 = r14;
        r14 = r21;
        r14 = r6.query(r7, r8, r9, r10, r11, r12, r13, r14);	 Catch:{ SQLiteException -> 0x023b, all -> 0x0236 }
        r6 = r14.moveToFirst();	 Catch:{ SQLiteException -> 0x0231, all -> 0x022e }
        if (r6 != 0) goto L_0x012a;
    L_0x0109:
        r2 = r24.zzKl();	 Catch:{ SQLiteException -> 0x0125, all -> 0x0120 }
        r2 = r2.zzLZ();	 Catch:{ SQLiteException -> 0x0125, all -> 0x0120 }
        r3 = "Raw event metadata record is missing. appId";
        r4 = com.google.android.gms.internal.zzatx.zzfE(r1);	 Catch:{ SQLiteException -> 0x0125, all -> 0x0120 }
        r2.zzj(r3, r4);	 Catch:{ SQLiteException -> 0x0125, all -> 0x0120 }
        if (r14 == 0) goto L_0x011f;
    L_0x011c:
        r14.close();
    L_0x011f:
        return;
    L_0x0120:
        r0 = move-exception;
        r1 = r0;
        r5 = r14;
        goto L_0x0267;
    L_0x0125:
        r0 = move-exception;
        r5 = r1;
        r6 = r14;
        goto L_0x0243;
    L_0x012a:
        r13 = 0;
        r6 = r14.getBlob(r13);	 Catch:{ SQLiteException -> 0x0231, all -> 0x022e }
        r6 = com.google.android.gms.internal.zzbyb.zzag(r6);	 Catch:{ SQLiteException -> 0x0231, all -> 0x022e }
        r7 = new com.google.android.gms.internal.zzauw$zze;	 Catch:{ SQLiteException -> 0x0231, all -> 0x022e }
        r7.<init>();	 Catch:{ SQLiteException -> 0x0231, all -> 0x022e }
        r7.zzb(r6);	 Catch:{ IOException -> 0x0213 }
        r6 = r14.moveToNext();	 Catch:{ SQLiteException -> 0x0231, all -> 0x022e }
        if (r6 == 0) goto L_0x0152;
    L_0x0141:
        r6 = r24.zzKl();	 Catch:{ SQLiteException -> 0x0125, all -> 0x0120 }
        r6 = r6.zzMb();	 Catch:{ SQLiteException -> 0x0125, all -> 0x0120 }
        r8 = "Get multiple raw event metadata records, expected one. appId";
        r9 = com.google.android.gms.internal.zzatx.zzfE(r1);	 Catch:{ SQLiteException -> 0x0125, all -> 0x0120 }
        r6.zzj(r8, r9);	 Catch:{ SQLiteException -> 0x0125, all -> 0x0120 }
    L_0x0152:
        r14.close();	 Catch:{ SQLiteException -> 0x0231, all -> 0x022e }
        r4.zzb(r7);	 Catch:{ SQLiteException -> 0x0231, all -> 0x022e }
        r6 = (r28 > r16 ? 1 : (r28 == r16 ? 0 : -1));
        r12 = 3;
        if (r6 == 0) goto L_0x016f;
    L_0x015d:
        r6 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
        r7 = new java.lang.String[r12];	 Catch:{ SQLiteException -> 0x0125, all -> 0x0120 }
        r7[r13] = r1;	 Catch:{ SQLiteException -> 0x0125, all -> 0x0120 }
        r11 = 1;
        r7[r11] = r5;	 Catch:{ SQLiteException -> 0x0125, all -> 0x0120 }
        r2 = java.lang.String.valueOf(r28);	 Catch:{ SQLiteException -> 0x0125, all -> 0x0120 }
        r7[r15] = r2;	 Catch:{ SQLiteException -> 0x0125, all -> 0x0120 }
        r9 = r6;
        r10 = r7;
        goto L_0x017a;
    L_0x016f:
        r11 = 1;
        r2 = "app_id = ? and metadata_fingerprint = ?";
        r3 = new java.lang.String[r15];	 Catch:{ SQLiteException -> 0x0231, all -> 0x022e }
        r3[r13] = r1;	 Catch:{ SQLiteException -> 0x0231, all -> 0x022e }
        r3[r11] = r5;	 Catch:{ SQLiteException -> 0x0231, all -> 0x022e }
        r9 = r2;
        r10 = r3;
    L_0x017a:
        r7 = "raw_events";
        r2 = 4;
        r8 = new java.lang.String[r2];	 Catch:{ SQLiteException -> 0x0231, all -> 0x022e }
        r2 = "rowid";
        r8[r13] = r2;	 Catch:{ SQLiteException -> 0x0231, all -> 0x022e }
        r2 = "name";
        r8[r11] = r2;	 Catch:{ SQLiteException -> 0x0231, all -> 0x022e }
        r2 = "timestamp";
        r8[r15] = r2;	 Catch:{ SQLiteException -> 0x0231, all -> 0x022e }
        r2 = "data";
        r8[r12] = r2;	 Catch:{ SQLiteException -> 0x0231, all -> 0x022e }
        r2 = 0;
        r3 = 0;
        r5 = "rowid";
        r16 = 0;
        r6 = r22;
        r15 = r11;
        r11 = r2;
        r2 = r12;
        r12 = r3;
        r3 = r13;
        r13 = r5;
        r5 = r14;
        r14 = r16;
        r6 = r6.query(r7, r8, r9, r10, r11, r12, r13, r14);	 Catch:{ SQLiteException -> 0x022c, all -> 0x0245 }
        r5 = r6.moveToFirst();	 Catch:{ SQLiteException -> 0x0211 }
        if (r5 != 0) goto L_0x01c1;
    L_0x01aa:
        r2 = r24.zzKl();	 Catch:{ SQLiteException -> 0x0211 }
        r2 = r2.zzMb();	 Catch:{ SQLiteException -> 0x0211 }
        r3 = "Raw event data disappeared while in transaction. appId";
        r4 = com.google.android.gms.internal.zzatx.zzfE(r1);	 Catch:{ SQLiteException -> 0x0211 }
        r2.zzj(r3, r4);	 Catch:{ SQLiteException -> 0x0211 }
        if (r6 == 0) goto L_0x01c0;
    L_0x01bd:
        r6.close();
    L_0x01c0:
        return;
    L_0x01c1:
        r7 = r6.getLong(r3);	 Catch:{ SQLiteException -> 0x0211 }
        r5 = r6.getBlob(r2);	 Catch:{ SQLiteException -> 0x0211 }
        r5 = com.google.android.gms.internal.zzbyb.zzag(r5);	 Catch:{ SQLiteException -> 0x0211 }
        r9 = new com.google.android.gms.internal.zzauw$zzb;	 Catch:{ SQLiteException -> 0x0211 }
        r9.<init>();	 Catch:{ SQLiteException -> 0x0211 }
        r9.zzb(r5);	 Catch:{ IOException -> 0x01f2 }
        r5 = r6.getString(r15);	 Catch:{ SQLiteException -> 0x0211 }
        r9.name = r5;	 Catch:{ SQLiteException -> 0x0211 }
        r5 = 2;
        r10 = r6.getLong(r5);	 Catch:{ SQLiteException -> 0x0211 }
        r10 = java.lang.Long.valueOf(r10);	 Catch:{ SQLiteException -> 0x0211 }
        r9.zzbxc = r10;	 Catch:{ SQLiteException -> 0x0211 }
        r7 = r4.zza(r7, r9);	 Catch:{ SQLiteException -> 0x0211 }
        if (r7 != 0) goto L_0x0205;
    L_0x01ec:
        if (r6 == 0) goto L_0x01f1;
    L_0x01ee:
        r6.close();
    L_0x01f1:
        return;
    L_0x01f2:
        r0 = move-exception;
        r5 = 2;
        r7 = r24.zzKl();	 Catch:{ SQLiteException -> 0x0211 }
        r7 = r7.zzLZ();	 Catch:{ SQLiteException -> 0x0211 }
        r8 = "Data loss. Failed to merge raw event. appId";
        r9 = com.google.android.gms.internal.zzatx.zzfE(r1);	 Catch:{ SQLiteException -> 0x0211 }
        r7.zze(r8, r9, r0);	 Catch:{ SQLiteException -> 0x0211 }
    L_0x0205:
        r7 = r6.moveToNext();	 Catch:{ SQLiteException -> 0x0211 }
        if (r7 != 0) goto L_0x01c1;
    L_0x020b:
        if (r6 == 0) goto L_0x0263;
    L_0x020d:
        r6.close();
        return;
    L_0x0211:
        r0 = move-exception;
        goto L_0x0234;
    L_0x0213:
        r0 = move-exception;
        r5 = r14;
        r2 = r24.zzKl();	 Catch:{ SQLiteException -> 0x022c, all -> 0x0245 }
        r2 = r2.zzLZ();	 Catch:{ SQLiteException -> 0x022c, all -> 0x0245 }
        r3 = "Data loss. Failed to merge raw event metadata. appId";
        r4 = com.google.android.gms.internal.zzatx.zzfE(r1);	 Catch:{ SQLiteException -> 0x022c, all -> 0x0245 }
        r2.zze(r3, r4, r0);	 Catch:{ SQLiteException -> 0x022c, all -> 0x0245 }
        if (r5 == 0) goto L_0x022b;
    L_0x0228:
        r5.close();
    L_0x022b:
        return;
    L_0x022c:
        r0 = move-exception;
        goto L_0x0233;
    L_0x022e:
        r0 = move-exception;
        r5 = r14;
        goto L_0x0246;
    L_0x0231:
        r0 = move-exception;
        r5 = r14;
    L_0x0233:
        r6 = r5;
    L_0x0234:
        r5 = r1;
        goto L_0x0243;
    L_0x0236:
        r0 = move-exception;
        r1 = r0;
        r5 = r18;
        goto L_0x0267;
    L_0x023b:
        r0 = move-exception;
        r5 = r1;
        r6 = r18;
        goto L_0x0243;
    L_0x0240:
        r0 = move-exception;
        r5 = r25;
    L_0x0243:
        r1 = r0;
        goto L_0x024d;
    L_0x0245:
        r0 = move-exception;
    L_0x0246:
        r1 = r0;
        goto L_0x0267;
    L_0x0248:
        r0 = move-exception;
        r1 = r0;
        r6 = r5;
        r5 = r25;
    L_0x024d:
        r2 = r24.zzKl();	 Catch:{ all -> 0x0264 }
        r2 = r2.zzLZ();	 Catch:{ all -> 0x0264 }
        r3 = "Data loss. Error selecting raw event. appId";
        r4 = com.google.android.gms.internal.zzatx.zzfE(r5);	 Catch:{ all -> 0x0264 }
        r2.zze(r3, r4, r1);	 Catch:{ all -> 0x0264 }
        if (r6 == 0) goto L_0x0263;
    L_0x0260:
        r6.close();
    L_0x0263:
        return;
    L_0x0264:
        r0 = move-exception;
        r1 = r0;
        r5 = r6;
    L_0x0267:
        if (r5 == 0) goto L_0x026c;
    L_0x0269:
        r5.close();
    L_0x026c:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzatj.zza(java.lang.String, long, long, com.google.android.gms.internal.zzatj$zzb):void");
    }

    public boolean zza(zzatg zzatg) {
        zzac.zzw(zzatg);
        zzmR();
        zzob();
        if (zzS(zzatg.packageName, zzatg.zzbqX.name) == null) {
            long zzb = zzb("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzatg.packageName});
            zzKn().zzLa();
            if (zzb >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzatg.packageName);
        contentValues.put(Param.ORIGIN, zzatg.zzbqW);
        contentValues.put("name", zzatg.zzbqX.name);
        zza(contentValues, "value", zzatg.zzbqX.getValue());
        contentValues.put("active", Boolean.valueOf(zzatg.zzbqZ));
        contentValues.put("trigger_event_name", zzatg.zzbra);
        contentValues.put("trigger_timeout", Long.valueOf(zzatg.zzbrc));
        contentValues.put("timed_out_event", zzKh().zza(zzatg.zzbrb));
        contentValues.put("creation_timestamp", Long.valueOf(zzatg.zzbqY));
        contentValues.put("triggered_event", zzKh().zza(zzatg.zzbrd));
        contentValues.put("triggered_timestamp", Long.valueOf(zzatg.zzbqX.zzbwf));
        contentValues.put("time_to_live", Long.valueOf(zzatg.zzbre));
        contentValues.put("expired_event", zzKh().zza(zzatg.zzbrf));
        try {
            if (getWritableDatabase().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                zzKl().zzLZ().zzj("Failed to insert/update conditional user property (got -1)", zzatx.zzfE(zzatg.packageName));
                return true;
            }
        } catch (SQLiteException e) {
            zzKl().zzLZ().zze("Error storing conditional user property", zzatx.zzfE(zzatg.packageName), e);
        }
        return true;
    }

    public boolean zza(zzatm zzatm, long j, boolean z) {
        Object e;
        com.google.android.gms.internal.zzatx.zza zzLZ;
        String str;
        zzmR();
        zzob();
        zzac.zzw(zzatm);
        zzac.zzdr(zzatm.mAppId);
        com.google.android.gms.internal.zzauw.zzb zzb = new com.google.android.gms.internal.zzauw.zzb();
        zzb.zzbxd = Long.valueOf(zzatm.zzbrz);
        zzb.zzbxb = new com.google.android.gms.internal.zzauw.zzc[zzatm.zzbrA.size()];
        Iterator it = zzatm.zzbrA.iterator();
        int i = 0;
        while (it.hasNext()) {
            String str2 = (String) it.next();
            com.google.android.gms.internal.zzauw.zzc zzc = new com.google.android.gms.internal.zzauw.zzc();
            int i2 = i + 1;
            zzb.zzbxb[i] = zzc;
            zzc.name = str2;
            zzKh().zza(zzc, zzatm.zzbrA.get(str2));
            i = i2;
        }
        try {
            byte[] bArr = new byte[zzb.zzafB()];
            zzbyc zzah = zzbyc.zzah(bArr);
            zzb.zza(zzah);
            zzah.zzafo();
            zzKl().zzMf().zze("Saving event, name, data size", zzatm.mName, Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzatm.mAppId);
            contentValues.put("name", zzatm.mName);
            contentValues.put("timestamp", Long.valueOf(zzatm.zzaxb));
            contentValues.put("metadata_fingerprint", Long.valueOf(j));
            contentValues.put(ShareConstants.WEB_DIALOG_PARAM_DATA, bArr);
            contentValues.put("realtime", Integer.valueOf(z));
            try {
                if (getWritableDatabase().insert("raw_events", null, contentValues) != -1) {
                    return true;
                }
                zzKl().zzLZ().zzj("Failed to insert raw event (got -1). appId", zzatx.zzfE(zzatm.mAppId));
                return false;
            } catch (SQLiteException e2) {
                e = e2;
                zzLZ = zzKl().zzLZ();
                str = "Error storing raw event. appId";
                zzLZ.zze(str, zzatx.zzfE(zzatm.mAppId), e);
                return false;
            }
        } catch (IOException e3) {
            e = e3;
            zzLZ = zzKl().zzLZ();
            str = "Data loss. Failed to serialize event params/data. appId";
            zzLZ.zze(str, zzatx.zzfE(zzatm.mAppId), e);
            return false;
        }
    }

    public boolean zza(zzaus zzaus) {
        zzac.zzw(zzaus);
        zzmR();
        zzob();
        if (zzS(zzaus.mAppId, zzaus.mName) == null) {
            long zzb;
            if (zzaut.zzfT(zzaus.mName)) {
                zzb = zzb("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzaus.mAppId});
                zzKn().zzKX();
                if (zzb >= 25) {
                    return false;
                }
            }
            zzb = zzb("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzaus.mAppId, zzaus.mOrigin});
            zzKn().zzKZ();
            if (zzb >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzaus.mAppId);
        contentValues.put(Param.ORIGIN, zzaus.mOrigin);
        contentValues.put("name", zzaus.mName);
        contentValues.put("triggered_timestamp", Long.valueOf(zzaus.zzbwj));
        zza(contentValues, "value", zzaus.mValue);
        try {
            if (getWritableDatabase().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                zzKl().zzLZ().zzj("Failed to insert/update user property (got -1). appId", zzatx.zzfE(zzaus.mAppId));
                return true;
            }
        } catch (SQLiteException e) {
            zzKl().zzLZ().zze("Error storing user property. appId", zzatx.zzfE(zzaus.mAppId), e);
        }
        return true;
    }

    public boolean zza(zze zze, boolean z) {
        Object e;
        com.google.android.gms.internal.zzatx.zza zzLZ;
        String str;
        zzmR();
        zzob();
        zzac.zzw(zze);
        zzac.zzdr(zze.zzaS);
        zzac.zzw(zze.zzbxn);
        zzLG();
        long currentTimeMillis = zznR().currentTimeMillis();
        if (zze.zzbxn.longValue() < currentTimeMillis - zzKn().zzLk() || zze.zzbxn.longValue() > currentTimeMillis + zzKn().zzLk()) {
            zzKl().zzMb().zzd("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzatx.zzfE(zze.zzaS), Long.valueOf(currentTimeMillis), zze.zzbxn);
        }
        try {
            byte[] bArr = new byte[zze.zzafB()];
            zzbyc zzah = zzbyc.zzah(bArr);
            zze.zza(zzah);
            zzah.zzafo();
            bArr = zzKh().zzk(bArr);
            zzKl().zzMf().zzj("Saving bundle, size", Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zze.zzaS);
            contentValues.put("bundle_end_timestamp", zze.zzbxn);
            contentValues.put(ShareConstants.WEB_DIALOG_PARAM_DATA, bArr);
            contentValues.put("has_realtime", Integer.valueOf(z));
            try {
                if (getWritableDatabase().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                zzKl().zzLZ().zzj("Failed to insert bundle (got -1). appId", zzatx.zzfE(zze.zzaS));
                return false;
            } catch (SQLiteException e2) {
                e = e2;
                zzLZ = zzKl().zzLZ();
                str = "Error storing bundle. appId";
                zzLZ.zze(str, zzatx.zzfE(zze.zzaS), e);
                return false;
            }
        } catch (IOException e3) {
            e = e3;
            zzLZ = zzKl().zzLZ();
            str = "Data loss. Failed to serialize bundle. appId";
            zzLZ.zze(str, zzatx.zzfE(zze.zzaS), e);
            return false;
        }
    }

    public void zzan(long j) {
        zzmR();
        zzob();
        try {
            if (getWritableDatabase().delete("queue", "rowid=?", new String[]{String.valueOf(j)}) != 1) {
                throw new SQLiteException("Deleted fewer rows from queue than expected");
            }
        } catch (SQLiteException e) {
            zzKl().zzLZ().zzj("Failed to delete a bundle in a queue table", e);
            throw e;
        }
    }

    public String zzao(long j) {
        Cursor rawQuery;
        Object e;
        Throwable th;
        zzmR();
        zzob();
        try {
            rawQuery = getWritableDatabase().rawQuery("select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;", new String[]{String.valueOf(j)});
            try {
                if (rawQuery.moveToFirst()) {
                    String string = rawQuery.getString(0);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return string;
                }
                zzKl().zzMf().log("No expired configs for apps with pending events");
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return null;
            } catch (SQLiteException e2) {
                e = e2;
                try {
                    zzKl().zzLZ().zzj("Error selecting expired configs", e);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    throw th;
                }
            }
        } catch (SQLiteException e3) {
            e = e3;
            rawQuery = null;
            zzKl().zzLZ().zzj("Error selecting expired configs", e);
            if (rawQuery != null) {
                rawQuery.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            rawQuery = null;
            if (rawQuery != null) {
                rawQuery.close();
            }
            throw th;
        }
    }

    Object zzb(Cursor cursor, int i) {
        int zza = zza(cursor, i);
        switch (zza) {
            case 0:
                zzKl().zzLZ().log("Loaded invalid null value from database");
                return null;
            case 1:
                return Long.valueOf(cursor.getLong(i));
            case 2:
                return Double.valueOf(cursor.getDouble(i));
            case 3:
                return cursor.getString(i);
            case 4:
                zzKl().zzLZ().log("Loaded invalid blob type value, ignoring it");
                return null;
            default:
                zzKl().zzLZ().zzj("Loaded invalid unknown value type, ignoring it", Integer.valueOf(zza));
                return null;
        }
    }

    void zzb(String str, com.google.android.gms.internal.zzauu.zza[] zzaArr) {
        zzob();
        zzmR();
        zzac.zzdr(str);
        zzac.zzw(zzaArr);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            zzfx(str);
            int i = 0;
            for (com.google.android.gms.internal.zzauu.zza zza : zzaArr) {
                zza(str, zza);
            }
            List arrayList = new ArrayList();
            int length = zzaArr.length;
            while (i < length) {
                arrayList.add(zzaArr[i].zzbwn);
                i++;
            }
            zzd(str, arrayList);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public List<zzatg> zzc(String str, String str2, long j) {
        zzac.zzdr(str);
        zzac.zzdr(str2);
        zzmR();
        zzob();
        if (j < 0) {
            zzKl().zzMb().zzd("Invalid time querying triggered conditional properties", zzatx.zzfE(str), str2, Long.valueOf(j));
            return Collections.emptyList();
        }
        return zzc("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j)});
    }

    public List<zzatg> zzc(String str, String[] strArr) {
        Object obj;
        Cursor cursor;
        Throwable th;
        zzmR();
        zzob();
        List<zzatg> arrayList = new ArrayList();
        Cursor query;
        try {
            r5 = new String[13];
            boolean z = false;
            r5[0] = "app_id";
            r5[1] = Param.ORIGIN;
            r5[2] = "name";
            r5[3] = "value";
            r5[4] = "active";
            r5[5] = "trigger_event_name";
            r5[6] = "trigger_timeout";
            r5[7] = "timed_out_event";
            r5[8] = "creation_timestamp";
            r5[9] = "triggered_event";
            r5[10] = "triggered_timestamp";
            r5[11] = "time_to_live";
            r5[12] = "expired_event";
            zzKn().zzLa();
            int i = 8;
            i = 7;
            i = 6;
            i = 5;
            i = 4;
            query = getWritableDatabase().query("conditional_properties", r5, str, strArr, null, null, "rowid", "1001");
            try {
                if (query.moveToFirst()) {
                    while (arrayList.size() < zzKn().zzLa()) {
                        String string = query.getString(z);
                        String string2 = query.getString(1);
                        String string3 = query.getString(2);
                        Object zzb = zzb(query, 3);
                        boolean z2 = query.getInt(i) != 0 ? true : z;
                        String string4 = query.getString(5);
                        long j = query.getLong(6);
                        zzatq zzatq = (zzatq) zzKh().zzb(query.getBlob(7), zzatq.CREATOR);
                        String str2 = string;
                        String str3 = string2;
                        arrayList.add(new zzatg(str2, str3, new zzauq(string3, query.getLong(10), zzb, string2), query.getLong(8), z2, string4, zzatq, j, (zzatq) zzKh().zzb(query.getBlob(9), zzatq.CREATOR), query.getLong(11), (zzatq) zzKh().zzb(query.getBlob(12), zzatq.CREATOR)));
                        if (!query.moveToNext()) {
                            break;
                        }
                        i = 4;
                        z = false;
                    }
                    zzKl().zzLZ().zzj("Read more than the max allowed conditional properties, ignoring extra", Integer.valueOf(zzKn().zzLa()));
                    if (query != null) {
                        query.close();
                    }
                    return arrayList;
                }
                if (query != null) {
                    query.close();
                }
                return arrayList;
            } catch (SQLiteException e) {
                obj = e;
                cursor = query;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SQLiteException e2) {
            obj = e2;
            cursor = null;
            try {
                zzKl().zzLZ().zzj("Error querying conditional user property value", obj);
                arrayList = Collections.emptyList();
                if (cursor != null) {
                    cursor.close();
                }
                return arrayList;
            } catch (Throwable th22) {
                th = th22;
                query = cursor;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        } catch (Throwable th222) {
            th = th222;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    public void zzd(String str, byte[] bArr) {
        zzac.zzdr(str);
        zzmR();
        zzob();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        try {
            if (((long) getWritableDatabase().update("apps", contentValues, "app_id = ?", new String[]{str})) == 0) {
                zzKl().zzLZ().zzj("Failed to update remote config (got 0). appId", zzatx.zzfE(str));
            }
        } catch (SQLiteException e) {
            zzKl().zzLZ().zze("Error storing remote config. appId", zzatx.zzfE(str), e);
        }
    }

    boolean zzd(String str, List<Integer> list) {
        zzac.zzdr(str);
        zzob();
        zzmR();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            if (zzb("select count(1) from audience_filter_values where app_id=?", new String[]{str}) <= ((long) zzKn().zzfo(str))) {
                return false;
            }
            Iterable arrayList = new ArrayList();
            if (list != null) {
                for (int i = 0; i < list.size(); i++) {
                    Integer num = (Integer) list.get(i);
                    if (num == null || !(num instanceof Integer)) {
                        return false;
                    }
                    arrayList.add(Integer.toString(num.intValue()));
                }
            }
            String valueOf = String.valueOf(TextUtils.join(",", arrayList));
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 2);
            stringBuilder.append("(");
            stringBuilder.append(valueOf);
            stringBuilder.append(")");
            valueOf = stringBuilder.toString();
            StringBuilder stringBuilder2 = new StringBuilder(140 + String.valueOf(valueOf).length());
            stringBuilder2.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
            stringBuilder2.append(valueOf);
            stringBuilder2.append(" order by rowid desc limit -1 offset ?)");
            return writableDatabase.delete("audience_filter_values", stringBuilder2.toString(), new String[]{str, Integer.toString(r2)}) > 0;
        } catch (SQLiteException e) {
            zzKl().zzLZ().zze("Database error querying filters. appId", zzatx.zzfE(str), e);
            return false;
        }
    }

    public long zzfA(String str) {
        zzac.zzdr(str);
        zzmR();
        zzob();
        return zzX(str, "first_open_count");
    }

    public void zzfB(String str) {
        try {
            getWritableDatabase().execSQL("delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)", new String[]{str, str});
        } catch (SQLiteException e) {
            zzKl().zzLZ().zze("Failed to remove unused event metadata. appId", zzatx.zzfE(str), e);
        }
    }

    public long zzfC(String str) {
        zzac.zzdr(str);
        return zza("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0);
    }

    public List<zzaus> zzft(String str) {
        zzatj zzatj;
        Throwable th;
        Throwable th2;
        zzac.zzdr(str);
        zzmR();
        zzob();
        List<zzaus> arrayList = new ArrayList();
        Cursor query;
        SQLiteException e;
        Object obj;
        try {
            query = getWritableDatabase().query("user_attributes", new String[]{"name", Param.ORIGIN, "triggered_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(zzKn().zzKY()));
            try {
                if (query.moveToFirst()) {
                    do {
                        String string = query.getString(0);
                        String string2 = query.getString(1);
                        if (string2 == null) {
                            string2 = "";
                        }
                        String str2 = string2;
                        long j = query.getLong(2);
                        try {
                            Object zzb = zzb(query, 3);
                            if (zzb == null) {
                                zzKl().zzLZ().zzj("Read invalid user property value, ignoring it. appId", zzatx.zzfE(str));
                            } else {
                                arrayList.add(new zzaus(str, str2, string, j, zzb));
                            }
                        } catch (SQLiteException e2) {
                            e = e2;
                        }
                    } while (query.moveToNext());
                    if (query != null) {
                        query.close();
                    }
                    return arrayList;
                }
                if (query != null) {
                    query.close();
                }
                return arrayList;
            } catch (SQLiteException e3) {
                e = e3;
                zzatj = this;
            } catch (Throwable th3) {
                th = th3;
                zzatj = this;
            }
            obj = e;
            try {
                zzKl().zzLZ().zze("Error querying user properties. appId", zzatx.zzfE(str), obj);
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (Throwable th4) {
                th = th4;
                th2 = th;
                if (query != null) {
                    query.close();
                }
                throw th2;
            }
        } catch (SQLiteException e4) {
            zzatj = this;
            obj = e4;
            query = null;
            zzKl().zzLZ().zze("Error querying user properties. appId", zzatx.zzfE(str), obj);
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th5) {
            zzatj = this;
            th2 = th5;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th2;
        }
    }

    public zzatc zzfu(String str) {
        SQLiteException e;
        Cursor cursor;
        Object obj;
        Throwable th;
        Throwable th2;
        zzatj zzatj;
        String str2 = str;
        zzac.zzdr(str);
        zzmR();
        zzob();
        Cursor query;
        try {
            r5 = new String[23];
            boolean z = true;
            r5[1] = "gmp_app_id";
            r5[2] = "resettable_device_id_hash";
            r5[3] = "last_bundle_index";
            r5[4] = "last_bundle_start_timestamp";
            r5[5] = "last_bundle_end_timestamp";
            r5[6] = "app_version";
            r5[7] = "app_store";
            r5[8] = "gmp_version";
            r5[9] = "dev_cert_hash";
            r5[10] = "measurement_enabled";
            r5[11] = "day";
            r5[12] = "daily_public_events_count";
            r5[13] = "daily_events_count";
            r5[14] = "daily_conversions_count";
            r5[15] = "config_fetched_time";
            r5[16] = "failed_config_fetch_time";
            r5[17] = "app_version_int";
            r5[18] = "firebase_instance_id";
            r5[19] = "daily_error_events_count";
            r5[20] = "daily_realtime_events_count";
            r5[21] = "health_monitor_sample";
            r5[22] = "android_id";
            int i = 7;
            i = 6;
            i = 5;
            query = getWritableDatabase().query("apps", r5, "app_id=?", new String[]{str2}, null, null, null);
            try {
                if (query.moveToFirst()) {
                    try {
                        zzatc zzatc = new zzatc(this.zzbqb, str2);
                        zzatc.zzfd(query.getString(0));
                        zzatc.zzfe(query.getString(1));
                        zzatc.zzff(query.getString(2));
                        zzatc.zzad(query.getLong(3));
                        zzatc.zzY(query.getLong(4));
                        zzatc.zzZ(query.getLong(i));
                        zzatc.setAppVersion(query.getString(6));
                        zzatc.zzfh(query.getString(7));
                        zzatc.zzab(query.getLong(8));
                        zzatc.zzac(query.getLong(9));
                        if ((query.isNull(10) ? 1 : query.getInt(10)) == 0) {
                            z = false;
                        }
                        zzatc.setMeasurementEnabled(z);
                        zzatc.zzag(query.getLong(11));
                        zzatc.zzah(query.getLong(12));
                        zzatc.zzai(query.getLong(13));
                        zzatc.zzaj(query.getLong(14));
                        zzatc.zzae(query.getLong(15));
                        zzatc.zzaf(query.getLong(16));
                        zzatc.zzaa(query.isNull(17) ? -2147483648L : (long) query.getInt(17));
                        zzatc.zzfg(query.getString(18));
                        zzatc.zzal(query.getLong(19));
                        zzatc.zzak(query.getLong(20));
                        zzatc.zzfi(query.getString(21));
                        zzatc.zzam(query.isNull(22) ? 0 : query.getLong(22));
                        zzatc.zzKo();
                        if (query.moveToNext()) {
                            zzKl().zzLZ().zzj("Got multiple records for app, expected one. appId", zzatx.zzfE(str));
                        }
                        if (query != null) {
                            query.close();
                        }
                        return zzatc;
                    } catch (SQLiteException e2) {
                        e = e2;
                        cursor = query;
                        obj = e;
                        try {
                            zzKl().zzLZ().zze("Error querying app. appId", zzatx.zzfE(str), obj);
                            if (cursor != null) {
                                cursor.close();
                            }
                            return null;
                        } catch (Throwable th22) {
                            th = th22;
                            query = cursor;
                            if (query != null) {
                                query.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th22 = th3;
                        th = th22;
                        if (query != null) {
                            query.close();
                        }
                        throw th;
                    }
                }
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (SQLiteException e3) {
                e = e3;
                zzatj = this;
                cursor = query;
                obj = e;
                zzKl().zzLZ().zze("Error querying app. appId", zzatx.zzfE(str), obj);
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            } catch (Throwable th4) {
                th22 = th4;
                zzatj = this;
                th = th22;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        } catch (SQLiteException e4) {
            zzatj = this;
            obj = e4;
            cursor = null;
            zzKl().zzLZ().zze("Error querying app. appId", zzatx.zzfE(str), obj);
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Throwable th222) {
            zzatj = this;
            th = th222;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    public long zzfv(String str) {
        zzac.zzdr(str);
        zzmR();
        zzob();
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String valueOf = String.valueOf(zzKn().zzfs(str));
            return (long) writableDatabase.delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, valueOf});
        } catch (SQLiteException e) {
            zzKl().zzLZ().zze("Error deleting over the limit events. appId", zzatx.zzfE(str), e);
            return 0;
        }
    }

    public byte[] zzfw(String str) {
        Cursor query;
        Object e;
        Throwable th;
        zzac.zzdr(str);
        zzmR();
        zzob();
        try {
            query = getWritableDatabase().query("apps", new String[]{"remote_config"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                if (query.moveToFirst()) {
                    byte[] blob = query.getBlob(0);
                    if (query.moveToNext()) {
                        zzKl().zzLZ().zzj("Got multiple records for app config, expected one. appId", zzatx.zzfE(str));
                    }
                    if (query != null) {
                        query.close();
                    }
                    return blob;
                }
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (SQLiteException e2) {
                e = e2;
                try {
                    zzKl().zzLZ().zze("Error querying remote config. appId", zzatx.zzfE(str), e);
                    if (query != null) {
                        query.close();
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
        } catch (SQLiteException e3) {
            e = e3;
            query = null;
            zzKl().zzLZ().zze("Error querying remote config. appId", zzatx.zzfE(str), e);
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    void zzfx(String str) {
        zzob();
        zzmR();
        zzac.zzdr(str);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("property_filters", "app_id=?", new String[]{str});
        writableDatabase.delete("event_filters", "app_id=?", new String[]{str});
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    java.util.Map<java.lang.Integer, com.google.android.gms.internal.zzauw.zzf> zzfy(java.lang.String r12) {
        /*
        r11 = this;
        r11.zzob();
        r11.zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(r12);
        r0 = r11.getWritableDatabase();
        r8 = 0;
        r1 = "audience_filter_values";
        r2 = 2;
        r2 = new java.lang.String[r2];	 Catch:{ SQLiteException -> 0x007e, all -> 0x007b }
        r3 = "audience_id";
        r9 = 0;
        r2[r9] = r3;	 Catch:{ SQLiteException -> 0x007e, all -> 0x007b }
        r3 = "current_results";
        r10 = 1;
        r2[r10] = r3;	 Catch:{ SQLiteException -> 0x007e, all -> 0x007b }
        r3 = "app_id=?";
        r4 = new java.lang.String[r10];	 Catch:{ SQLiteException -> 0x007e, all -> 0x007b }
        r4[r9] = r12;	 Catch:{ SQLiteException -> 0x007e, all -> 0x007b }
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r0 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ SQLiteException -> 0x007e, all -> 0x007b }
        r1 = r0.moveToFirst();	 Catch:{ SQLiteException -> 0x0079 }
        if (r1 != 0) goto L_0x0036;
    L_0x0030:
        if (r0 == 0) goto L_0x0035;
    L_0x0032:
        r0.close();
    L_0x0035:
        return r8;
    L_0x0036:
        r1 = new android.support.v4.util.ArrayMap;	 Catch:{ SQLiteException -> 0x0079 }
        r1.<init>();	 Catch:{ SQLiteException -> 0x0079 }
    L_0x003b:
        r2 = r0.getInt(r9);	 Catch:{ SQLiteException -> 0x0079 }
        r3 = r0.getBlob(r10);	 Catch:{ SQLiteException -> 0x0079 }
        r3 = com.google.android.gms.internal.zzbyb.zzag(r3);	 Catch:{ SQLiteException -> 0x0079 }
        r4 = new com.google.android.gms.internal.zzauw$zzf;	 Catch:{ SQLiteException -> 0x0079 }
        r4.<init>();	 Catch:{ SQLiteException -> 0x0079 }
        r4.zzb(r3);	 Catch:{ IOException -> 0x0057 }
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ SQLiteException -> 0x0079 }
        r1.put(r2, r4);	 Catch:{ SQLiteException -> 0x0079 }
        goto L_0x006d;
    L_0x0057:
        r3 = move-exception;
        r4 = r11.zzKl();	 Catch:{ SQLiteException -> 0x0079 }
        r4 = r4.zzLZ();	 Catch:{ SQLiteException -> 0x0079 }
        r5 = "Failed to merge filter results. appId, audienceId, error";
        r6 = com.google.android.gms.internal.zzatx.zzfE(r12);	 Catch:{ SQLiteException -> 0x0079 }
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ SQLiteException -> 0x0079 }
        r4.zzd(r5, r6, r2, r3);	 Catch:{ SQLiteException -> 0x0079 }
    L_0x006d:
        r2 = r0.moveToNext();	 Catch:{ SQLiteException -> 0x0079 }
        if (r2 != 0) goto L_0x003b;
    L_0x0073:
        if (r0 == 0) goto L_0x0078;
    L_0x0075:
        r0.close();
    L_0x0078:
        return r1;
    L_0x0079:
        r1 = move-exception;
        goto L_0x0080;
    L_0x007b:
        r12 = move-exception;
        r0 = r8;
        goto L_0x0098;
    L_0x007e:
        r1 = move-exception;
        r0 = r8;
    L_0x0080:
        r2 = r11.zzKl();	 Catch:{ all -> 0x0097 }
        r2 = r2.zzLZ();	 Catch:{ all -> 0x0097 }
        r3 = "Database error querying filter results. appId";
        r12 = com.google.android.gms.internal.zzatx.zzfE(r12);	 Catch:{ all -> 0x0097 }
        r2.zze(r3, r12, r1);	 Catch:{ all -> 0x0097 }
        if (r0 == 0) goto L_0x0096;
    L_0x0093:
        r0.close();
    L_0x0096:
        return r8;
    L_0x0097:
        r12 = move-exception;
    L_0x0098:
        if (r0 == 0) goto L_0x009d;
    L_0x009a:
        r0.close();
    L_0x009d:
        throw r12;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzatj.zzfy(java.lang.String):java.util.Map<java.lang.Integer, com.google.android.gms.internal.zzauw$zzf>");
    }

    void zzfz(String str) {
        zzob();
        zzmR();
        zzac.zzdr(str);
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            String[] strArr = new String[]{str};
            int delete = ((((((((0 + writableDatabase.delete("events", "app_id=?", strArr)) + writableDatabase.delete("user_attributes", "app_id=?", strArr)) + writableDatabase.delete("conditional_properties", "app_id=?", strArr)) + writableDatabase.delete("apps", "app_id=?", strArr)) + writableDatabase.delete("raw_events", "app_id=?", strArr)) + writableDatabase.delete("raw_events_metadata", "app_id=?", strArr)) + writableDatabase.delete("event_filters", "app_id=?", strArr)) + writableDatabase.delete("property_filters", "app_id=?", strArr)) + writableDatabase.delete("audience_filter_values", "app_id=?", strArr);
            if (delete > 0) {
                zzKl().zzMf().zze("Deleted application data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            zzKl().zzLZ().zze("Error deleting application data. appId, error", zzatx.zzfE(str), e);
        }
    }

    public List<zzatg> zzh(String str, long j) {
        zzac.zzdr(str);
        zzmR();
        zzob();
        if (j < 0) {
            zzKl().zzMb().zze("Invalid time querying timed out conditional properties", zzatx.zzfE(str), Long.valueOf(j));
            return Collections.emptyList();
        }
        return zzc("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j)});
    }

    public List<zzatg> zzi(String str, long j) {
        zzac.zzdr(str);
        zzmR();
        zzob();
        if (j < 0) {
            zzKl().zzMb().zze("Invalid time querying expired conditional properties", zzatx.zzfE(str), Long.valueOf(j));
            return Collections.emptyList();
        }
        return zzc("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j)});
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<com.google.android.gms.internal.zzaus> zzk(java.lang.String r24, java.lang.String r25, java.lang.String r26) {
        /*
        r23 = this;
        com.google.android.gms.common.internal.zzac.zzdr(r24);
        r23.zzmR();
        r23.zzob();
        r1 = new java.util.ArrayList;
        r1.<init>();
        r2 = 0;
        r3 = new java.util.ArrayList;	 Catch:{ SQLiteException -> 0x0144, all -> 0x013f }
        r4 = 3;
        r3.<init>(r4);	 Catch:{ SQLiteException -> 0x0144, all -> 0x013f }
        r12 = r24;
        r3.add(r12);	 Catch:{ SQLiteException -> 0x013b, all -> 0x013f }
        r5 = new java.lang.StringBuilder;	 Catch:{ SQLiteException -> 0x013b, all -> 0x013f }
        r6 = "app_id=?";
        r5.<init>(r6);	 Catch:{ SQLiteException -> 0x013b, all -> 0x013f }
        r6 = android.text.TextUtils.isEmpty(r25);	 Catch:{ SQLiteException -> 0x013b, all -> 0x013f }
        if (r6 != 0) goto L_0x0037;
    L_0x0027:
        r6 = r25;
        r3.add(r6);	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r7 = " and origin=?";
        r5.append(r7);	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        goto L_0x0039;
    L_0x0032:
        r0 = move-exception;
        r15 = r23;
        goto L_0x014b;
    L_0x0037:
        r6 = r25;
    L_0x0039:
        r7 = android.text.TextUtils.isEmpty(r26);	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        if (r7 != 0) goto L_0x0051;
    L_0x003f:
        r7 = java.lang.String.valueOf(r26);	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r8 = "*";
        r7 = r7.concat(r8);	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r3.add(r7);	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r7 = " and name glob ?";
        r5.append(r7);	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
    L_0x0051:
        r7 = r3.size();	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r7 = new java.lang.String[r7];	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r3 = r3.toArray(r7);	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r17 = r3;
        r17 = (java.lang.String[]) r17;	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r13 = r23.getWritableDatabase();	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r14 = "user_attributes";
        r3 = 4;
        r15 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r3 = "name";
        r11 = 0;
        r15[r11] = r3;	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r3 = "triggered_timestamp";
        r9 = 1;
        r15[r9] = r3;	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r3 = "value";
        r10 = 2;
        r15[r10] = r3;	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r3 = "origin";
        r15[r4] = r3;	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r16 = r5.toString();	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r18 = 0;
        r19 = 0;
        r20 = "rowid";
        r3 = r23.zzKn();	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r3.zzKY();	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r21 = "1001";
        r3 = r13.query(r14, r15, r16, r17, r18, r19, r20, r21);	 Catch:{ SQLiteException -> 0x0032, all -> 0x013f }
        r5 = r3.moveToFirst();	 Catch:{ SQLiteException -> 0x0136, all -> 0x0132 }
        if (r5 != 0) goto L_0x009e;
    L_0x0098:
        if (r3 == 0) goto L_0x009d;
    L_0x009a:
        r3.close();
    L_0x009d:
        return r1;
    L_0x009e:
        r5 = r1.size();	 Catch:{ SQLiteException -> 0x0136, all -> 0x0132 }
        r7 = r23.zzKn();	 Catch:{ SQLiteException -> 0x0136, all -> 0x0132 }
        r7 = r7.zzKY();	 Catch:{ SQLiteException -> 0x0136, all -> 0x0132 }
        if (r5 < r7) goto L_0x00c8;
    L_0x00ac:
        r4 = r23.zzKl();	 Catch:{ SQLiteException -> 0x0136, all -> 0x0132 }
        r4 = r4.zzLZ();	 Catch:{ SQLiteException -> 0x0136, all -> 0x0132 }
        r5 = "Read more than the max allowed user properties, ignoring excess";
        r7 = r23.zzKn();	 Catch:{ SQLiteException -> 0x0136, all -> 0x0132 }
        r7 = r7.zzKY();	 Catch:{ SQLiteException -> 0x0136, all -> 0x0132 }
        r7 = java.lang.Integer.valueOf(r7);	 Catch:{ SQLiteException -> 0x0136, all -> 0x0132 }
        r4.zzj(r5, r7);	 Catch:{ SQLiteException -> 0x0136, all -> 0x0132 }
        r15 = r23;
        goto L_0x0117;
    L_0x00c8:
        r8 = r3.getString(r11);	 Catch:{ SQLiteException -> 0x0136, all -> 0x0132 }
        r13 = r3.getLong(r9);	 Catch:{ SQLiteException -> 0x0136, all -> 0x0132 }
        r15 = r23;
        r16 = r15.zzb(r3, r10);	 Catch:{ SQLiteException -> 0x0130 }
        r7 = r3.getString(r4);	 Catch:{ SQLiteException -> 0x0130 }
        if (r16 != 0) goto L_0x00fc;
    L_0x00dc:
        r5 = r23.zzKl();	 Catch:{ SQLiteException -> 0x00f7 }
        r5 = r5.zzLZ();	 Catch:{ SQLiteException -> 0x00f7 }
        r6 = "(2)Read invalid user property value, ignoring it";
        r8 = com.google.android.gms.internal.zzatx.zzfE(r24);	 Catch:{ SQLiteException -> 0x00f7 }
        r13 = r26;
        r5.zzd(r6, r8, r7, r13);	 Catch:{ SQLiteException -> 0x00f7 }
        r17 = r7;
        r18 = r9;
        r19 = r10;
        r13 = r11;
        goto L_0x0111;
    L_0x00f7:
        r0 = move-exception;
        r1 = r0;
        r6 = r7;
        goto L_0x014d;
    L_0x00fc:
        r6 = new com.google.android.gms.internal.zzaus;	 Catch:{ SQLiteException -> 0x0129 }
        r5 = r6;
        r4 = r6;
        r6 = r12;
        r17 = r7;
        r18 = r9;
        r19 = r10;
        r9 = r13;
        r13 = r11;
        r11 = r16;
        r5.<init>(r6, r7, r8, r9, r11);	 Catch:{ SQLiteException -> 0x0127 }
        r1.add(r4);	 Catch:{ SQLiteException -> 0x0127 }
    L_0x0111:
        r4 = r3.moveToNext();	 Catch:{ SQLiteException -> 0x0127 }
        if (r4 != 0) goto L_0x011d;
    L_0x0117:
        if (r3 == 0) goto L_0x011c;
    L_0x0119:
        r3.close();
    L_0x011c:
        return r1;
    L_0x011d:
        r11 = r13;
        r6 = r17;
        r9 = r18;
        r10 = r19;
        r4 = 3;
        goto L_0x009e;
    L_0x0127:
        r0 = move-exception;
        goto L_0x012c;
    L_0x0129:
        r0 = move-exception;
        r17 = r7;
    L_0x012c:
        r1 = r0;
        r6 = r17;
        goto L_0x014d;
    L_0x0130:
        r0 = move-exception;
        goto L_0x0139;
    L_0x0132:
        r0 = move-exception;
        r15 = r23;
        goto L_0x0165;
    L_0x0136:
        r0 = move-exception;
        r15 = r23;
    L_0x0139:
        r1 = r0;
        goto L_0x014d;
    L_0x013b:
        r0 = move-exception;
        r15 = r23;
        goto L_0x0149;
    L_0x013f:
        r0 = move-exception;
        r15 = r23;
        r1 = r0;
        goto L_0x0167;
    L_0x0144:
        r0 = move-exception;
        r15 = r23;
        r12 = r24;
    L_0x0149:
        r6 = r25;
    L_0x014b:
        r1 = r0;
        r3 = r2;
    L_0x014d:
        r4 = r23.zzKl();	 Catch:{ all -> 0x0164 }
        r4 = r4.zzLZ();	 Catch:{ all -> 0x0164 }
        r5 = "(2)Error querying user properties";
        r7 = com.google.android.gms.internal.zzatx.zzfE(r24);	 Catch:{ all -> 0x0164 }
        r4.zzd(r5, r7, r6, r1);	 Catch:{ all -> 0x0164 }
        if (r3 == 0) goto L_0x0163;
    L_0x0160:
        r3.close();
    L_0x0163:
        return r2;
    L_0x0164:
        r0 = move-exception;
    L_0x0165:
        r1 = r0;
        r2 = r3;
    L_0x0167:
        if (r2 == 0) goto L_0x016c;
    L_0x0169:
        r2.close();
    L_0x016c:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzatj.zzk(java.lang.String, java.lang.String, java.lang.String):java.util.List<com.google.android.gms.internal.zzaus>");
    }

    public List<zzatg> zzl(String str, String str2, String str3) {
        zzac.zzdr(str);
        zzmR();
        zzob();
        List arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder stringBuilder = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            stringBuilder.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat(Marker.ANY_MARKER));
            stringBuilder.append(" and name glob ?");
        }
        return zzc(stringBuilder.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    protected void zzmS() {
    }

    public List<Pair<zze, Long>> zzn(String str, int i, int i2) {
        Cursor query;
        Object e;
        com.google.android.gms.internal.zzatx.zza zzLZ;
        String str2;
        Object zzfE;
        Object e2;
        Throwable th;
        zzmR();
        zzob();
        zzac.zzaw(i > 0);
        zzac.zzaw(i2 > 0);
        zzac.zzdr(str);
        Cursor cursor = null;
        try {
            query = getWritableDatabase().query("queue", new String[]{"rowid", ShareConstants.WEB_DIALOG_PARAM_DATA}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i));
            try {
                if (query.moveToFirst()) {
                    List<Pair<zze, Long>> arrayList = new ArrayList();
                    int i3 = 0;
                    do {
                        long j = query.getLong(0);
                        try {
                            byte[] zzx = zzKh().zzx(query.getBlob(1));
                            if (!arrayList.isEmpty() && zzx.length + i3 > i2) {
                                break;
                            }
                            zzbyb zzag = zzbyb.zzag(zzx);
                            zze zze = new zze();
                            try {
                                zze.zzb(zzag);
                                i3 += zzx.length;
                                arrayList.add(Pair.create(zze, Long.valueOf(j)));
                            } catch (IOException e3) {
                                e = e3;
                                zzLZ = zzKl().zzLZ();
                                str2 = "Failed to merge queued bundle. appId";
                                zzfE = zzatx.zzfE(str);
                                zzLZ.zze(str2, zzfE, e);
                                if (query.moveToNext()) {
                                    break;
                                } else if (i3 > i2) {
                                }
                                if (query != null) {
                                    query.close();
                                }
                                return arrayList;
                            }
                            if (query.moveToNext()) {
                                break;
                            }
                        } catch (IOException e4) {
                            e = e4;
                            zzLZ = zzKl().zzLZ();
                            str2 = "Failed to unzip queued bundle. appId";
                            zzfE = zzatx.zzfE(str);
                            zzLZ.zze(str2, zzfE, e);
                            if (query.moveToNext()) {
                                break;
                            } else if (i3 > i2) {
                            }
                            if (query != null) {
                                query.close();
                            }
                            return arrayList;
                        }
                    } while (i3 > i2);
                    if (query != null) {
                        query.close();
                    }
                    return arrayList;
                }
                List<Pair<zze, Long>> emptyList = Collections.emptyList();
                if (query != null) {
                    query.close();
                }
                return emptyList;
            } catch (SQLiteException e5) {
                e2 = e5;
                cursor = query;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SQLiteException e6) {
            e2 = e6;
            try {
                zzKl().zzLZ().zze("Error querying bundles. appId", zzatx.zzfE(str), e2);
                List<Pair<zze, Long>> emptyList2 = Collections.emptyList();
                if (cursor != null) {
                    cursor.close();
                }
                return emptyList2;
            } catch (Throwable th3) {
                th = th3;
                query = cursor;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }
    }

    String zzow() {
        return zzKn().zzpv();
    }

    public void zzz(String str, int i) {
        zzac.zzdr(str);
        zzmR();
        zzob();
        try {
            getWritableDatabase().execSQL("delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by triggered_timestamp desc limit ?,10);", new String[]{str, str, String.valueOf(i)});
        } catch (SQLiteException e) {
            zzKl().zzLZ().zze("Error pruning currencies. appId", zzatx.zzfE(str), e);
        }
    }
}
