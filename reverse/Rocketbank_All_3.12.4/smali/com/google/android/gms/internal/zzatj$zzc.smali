.class Lcom/google/android/gms/internal/zzatj$zzc;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzatj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzbrt:Lcom/google/android/gms/internal/zzatj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatj;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatj;)Lcom/google/android/gms/internal/zzauo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzauo;->zzA(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database open failed"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatj;)Lcom/google/android/gms/internal/zzauo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauo;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Opening the database failed, dropping and recreating it"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzow()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to delete corrupted db file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatj;)Lcom/google/android/gms/internal/zzauo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzauo;->clear()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to open freshly created database"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const-string v0, "PRAGMA journal_mode=memory"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    const-string v3, "events"

    const-string v4, "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;"

    const-string v5, "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp"

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    const-string v3, "conditional_properties"

    const-string v4, "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;"

    const-string v5, "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event"

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    const-string v3, "user_attributes"

    const-string v4, "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, triggered_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;"

    const-string v5, "app_id,name,triggered_timestamp,value"

    invoke-static {}, Lcom/google/android/gms/internal/zzatj;->zzLO()Ljava/util/Map;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    const-string v3, "apps"

    const-string v4, "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;"

    const-string v5, "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp"

    invoke-static {}, Lcom/google/android/gms/internal/zzatj;->access$200()Ljava/util/Map;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    const-string v3, "queue"

    const-string v4, "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);"

    const-string v5, "app_id,bundle_end_timestamp,data"

    invoke-static {}, Lcom/google/android/gms/internal/zzatj;->zzLP()Ljava/util/Map;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    const-string v3, "raw_events_metadata"

    const-string v4, "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));"

    const-string v5, "app_id,metadata_fingerprint,metadata"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    const-string v3, "raw_events"

    const-string v4, "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);"

    const-string v5, "app_id,name,timestamp,metadata_fingerprint,data"

    invoke-static {}, Lcom/google/android/gms/internal/zzatj;->zzLQ()Ljava/util/Map;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    const-string v3, "event_filters"

    const-string v4, "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));"

    const-string v5, "app_id,audience_id,filter_id,event_name,data"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    const-string v3, "property_filters"

    const-string v4, "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));"

    const-string v5, "app_id,audience_id,filter_id,property_name,data"

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    const-string v3, "audience_filter_values"

    const-string v4, "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));"

    const-string v5, "app_id,audience_id,current_results"

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj$zzc;->zzbrt:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    const-string v3, "app2"

    const-string v4, "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));"

    const-string v5, "app_id,first_open_count"

    invoke-static {}, Lcom/google/android/gms/internal/zzatj;->zzLR()Ljava/util/Map;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
