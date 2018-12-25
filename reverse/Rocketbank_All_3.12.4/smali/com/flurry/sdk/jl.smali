.class public Lcom/flurry/sdk/jl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/jl; = null

.field private static final b:Ljava/lang/String; = "jl"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jl;
    .locals 2

    const-class v0, Lcom/flurry/sdk/jl;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jl;->a:Lcom/flurry/sdk/jl;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/flurry/sdk/jl;

    invoke-direct {v1}, Lcom/flurry/sdk/jl;-><init>()V

    sput-object v1, Lcom/flurry/sdk/jl;->a:Lcom/flurry/sdk/jl;

    .line 21
    :cond_0
    sget-object v1, Lcom/flurry/sdk/jl;->a:Lcom/flurry/sdk/jl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0

    throw v1
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/flurry/sdk/jl;->a:Lcom/flurry/sdk/jl;

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 34
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 1097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    const-string v1, "phone"

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .line 43
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 2097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    const-string v1, "phone"

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
