.class public final Lcom/google/firebase/iid/zze;
.super Ljava/lang/Object;


# static fields
.field private static final zztX:Ljava/lang/Object;


# instance fields
.field private final zzclx:Lcom/google/firebase/iid/zzh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/zze;->zztX:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/iid/zzh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zze;->zzclx:Lcom/google/firebase/iid/zzh;

    return-void
.end method


# virtual methods
.method final zzabU()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/google/firebase/iid/zze;->zztX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/iid/zze;->zzclx:Lcom/google/firebase/iid/zzh;

    .line 1000
    iget-object v1, v1, Lcom/google/firebase/iid/zzh;->zzbif:Landroid/content/SharedPreferences;

    const-string v2, "topic_operaion_queue"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    aget-object v2, v1, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v1, v1, v4

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final zzjx(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/google/firebase/iid/zze;->zztX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/iid/zze;->zzclx:Lcom/google/firebase/iid/zzh;

    .line 2000
    iget-object v1, v1, Lcom/google/firebase/iid/zzh;->zzbif:Landroid/content/SharedPreferences;

    const-string v2, "topic_operaion_queue"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ","

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/iid/zze;->zzclx:Lcom/google/firebase/iid/zzh;

    .line 3000
    iget-object v1, v1, Lcom/google/firebase/iid/zzh;->zzbif:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "topic_operaion_queue"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :cond_2
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
