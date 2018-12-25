.class public final Lcom/flurry/sdk/jk;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/jk$a;
    }
.end annotation


# static fields
.field private static c:Lcom/flurry/sdk/jk;


# instance fields
.field a:Z

.field public b:Z

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/flurry/sdk/jk;->d:Z

    .line 68
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 1097
    iget-object v1, v1, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 69
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/flurry/sdk/jk;->d:Z

    .line 71
    invoke-direct {p0, v1}, Lcom/flurry/sdk/jk;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/jk;->b:Z

    .line 73
    iget-boolean v0, p0, Lcom/flurry/sdk/jk;->d:Z

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/flurry/sdk/jk;->d()V

    :cond_1
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jk;
    .locals 2

    const-class v0, Lcom/flurry/sdk/jk;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jk;->c:Lcom/flurry/sdk/jk;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/flurry/sdk/jk;

    invoke-direct {v1}, Lcom/flurry/sdk/jk;-><init>()V

    sput-object v1, Lcom/flurry/sdk/jk;->c:Lcom/flurry/sdk/jk;

    .line 25
    :cond_0
    sget-object v1, Lcom/flurry/sdk/jk;->c:Lcom/flurry/sdk/jk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    throw v1
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/flurry/sdk/jk;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jk;->f()Landroid/net/ConnectivityManager;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lcom/flurry/sdk/jk;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jk;->c:Lcom/flurry/sdk/jk;

    if-eqz v1, :cond_0

    .line 30
    sget-object v1, Lcom/flurry/sdk/jk;->c:Lcom/flurry/sdk/jk;

    invoke-direct {v1}, Lcom/flurry/sdk/jk;->e()V

    :cond_0
    const/4 v1, 0x0

    .line 33
    sput-object v1, Lcom/flurry/sdk/jk;->c:Lcom/flurry/sdk/jk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 28
    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized d()V
    .locals 3

    monitor-enter p0

    .line 83
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/jk;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 84
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 2097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 88
    invoke-direct {p0, v0}, Lcom/flurry/sdk/jk;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/jk;->b:Z

    .line 89
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/flurry/sdk/jk;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 82
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/jk;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 96
    monitor-exit p0

    return-void

    .line 99
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 3097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 100
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/flurry/sdk/jk;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 94
    monitor-exit p0

    throw v0
.end method

.method private static f()Landroid/net/ConnectivityManager;
    .locals 2

    .line 171
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 4097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method


# virtual methods
.method public final c()Lcom/flurry/sdk/jk$a;
    .locals 3

    .line 134
    iget-boolean v0, p0, Lcom/flurry/sdk/jk;->d:Z

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/flurry/sdk/jk$a;->a:Lcom/flurry/sdk/jk$a;

    return-object v0

    .line 141
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jk;->f()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 144
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    packed-switch v1, :pswitch_data_0

    .line 163
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    sget-object v0, Lcom/flurry/sdk/jk$a;->b:Lcom/flurry/sdk/jk$a;

    return-object v0

    .line 166
    :cond_2
    sget-object v0, Lcom/flurry/sdk/jk$a;->a:Lcom/flurry/sdk/jk$a;

    return-object v0

    .line 150
    :pswitch_0
    sget-object v0, Lcom/flurry/sdk/jk$a;->c:Lcom/flurry/sdk/jk$a;

    return-object v0

    .line 157
    :pswitch_1
    sget-object v0, Lcom/flurry/sdk/jk$a;->d:Lcom/flurry/sdk/jk$a;

    return-object v0

    .line 160
    :cond_3
    sget-object v0, Lcom/flurry/sdk/jk$a;->a:Lcom/flurry/sdk/jk$a;

    return-object v0

    .line 145
    :cond_4
    :goto_0
    sget-object v0, Lcom/flurry/sdk/jk$a;->a:Lcom/flurry/sdk/jk$a;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/flurry/sdk/jk;->a(Landroid/content/Context;)Z

    move-result p1

    .line 109
    iget-boolean p2, p0, Lcom/flurry/sdk/jk;->b:Z

    if-eq p2, p1, :cond_0

    .line 110
    iput-boolean p1, p0, Lcom/flurry/sdk/jk;->b:Z

    .line 112
    new-instance p2, Lcom/flurry/sdk/jj;

    invoke-direct {p2}, Lcom/flurry/sdk/jj;-><init>()V

    .line 113
    iput-boolean p1, p2, Lcom/flurry/sdk/jj;->a:Z

    .line 114
    invoke-virtual {p0}, Lcom/flurry/sdk/jk;->c()Lcom/flurry/sdk/jk$a;

    move-result-object p1

    iput-object p1, p2, Lcom/flurry/sdk/jj;->b:Lcom/flurry/sdk/jk$a;

    .line 4025
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/flurry/sdk/kb;->a(Lcom/flurry/sdk/jz;)V

    :cond_0
    return-void
.end method
