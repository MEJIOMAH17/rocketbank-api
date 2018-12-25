.class public Lcom/flurry/sdk/jv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/jv; = null

.field private static final b:Ljava/lang/String; = "jv"


# instance fields
.field private c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3052
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 3053
    iget-object v0, p0, Lcom/flurry/sdk/jv;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 3057
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 4097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 3058
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 3062
    new-instance v1, Lcom/flurry/sdk/jv$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jv$1;-><init>(Lcom/flurry/sdk/jv;)V

    iput-object v1, p0, Lcom/flurry/sdk/jv;->c:Ljava/lang/Object;

    .line 3113
    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/flurry/sdk/jv;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jv;
    .locals 2

    const-class v0, Lcom/flurry/sdk/jv;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jv;->a:Lcom/flurry/sdk/jv;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/flurry/sdk/jv;

    invoke-direct {v1}, Lcom/flurry/sdk/jv;-><init>()V

    sput-object v1, Lcom/flurry/sdk/jv;->a:Lcom/flurry/sdk/jv;

    .line 27
    :cond_0
    sget-object v1, Lcom/flurry/sdk/jv;->a:Lcom/flurry/sdk/jv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()V
    .locals 5

    const-class v0, Lcom/flurry/sdk/jv;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jv;->a:Lcom/flurry/sdk/jv;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 32
    sget-object v1, Lcom/flurry/sdk/jv;->a:Lcom/flurry/sdk/jv;

    .line 1119
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 1120
    iget-object v3, v1, Lcom/flurry/sdk/jv;->c:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1124
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v3

    .line 2097
    iget-object v3, v3, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 1125
    instance-of v4, v3, Landroid/app/Application;

    if-eqz v4, :cond_0

    .line 1129
    check-cast v3, Landroid/app/Application;

    iget-object v4, v1, Lcom/flurry/sdk/jv;->c:Ljava/lang/Object;

    check-cast v4, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v3, v4}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1130
    iput-object v2, v1, Lcom/flurry/sdk/jv;->c:Ljava/lang/Object;

    .line 35
    :cond_0
    sput-object v2, Lcom/flurry/sdk/jv;->a:Lcom/flurry/sdk/jv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0

    throw v1
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/flurry/sdk/jv;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/jv;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
