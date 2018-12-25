.class public Lcom/flurry/sdk/ji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lj$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ji$a;
    }
.end annotation


# static fields
.field private static a:Lcom/flurry/sdk/ji; = null

.field private static final b:Ljava/lang/String; = "ji"


# instance fields
.field private final c:I

.field private final d:J

.field private final e:J

.field private final f:J

.field private g:Z

.field private h:Landroid/location/Location;

.field private i:J

.field private j:Landroid/location/LocationManager;

.field private k:Lcom/flurry/sdk/ji$a;

.field private l:Landroid/location/Location;

.field private m:Z

.field private n:I

.field private o:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka<",
            "Lcom/flurry/sdk/ll;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 46
    iput v0, p0, Lcom/flurry/sdk/ji;->c:I

    const-wide/16 v0, 0x2710

    .line 47
    iput-wide v0, p0, Lcom/flurry/sdk/ji;->d:J

    const-wide/32 v0, 0x15f90

    .line 48
    iput-wide v0, p0, Lcom/flurry/sdk/ji;->e:J

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/flurry/sdk/ji;->f:J

    .line 54
    iput-wide v0, p0, Lcom/flurry/sdk/ji;->i:J

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/flurry/sdk/ji;->m:Z

    .line 61
    iput v0, p0, Lcom/flurry/sdk/ji;->n:I

    .line 63
    new-instance v0, Lcom/flurry/sdk/ji$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ji$1;-><init>(Lcom/flurry/sdk/ji;)V

    iput-object v0, p0, Lcom/flurry/sdk/ji;->o:Lcom/flurry/sdk/ka;

    .line 74
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 1097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    const-string v1, "location"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/flurry/sdk/ji;->j:Landroid/location/LocationManager;

    .line 75
    new-instance v0, Lcom/flurry/sdk/ji$a;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ji$a;-><init>(Lcom/flurry/sdk/ji;)V

    iput-object v0, p0, Lcom/flurry/sdk/ji;->k:Lcom/flurry/sdk/ji$a;

    .line 77
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "ReportLocation"

    .line 79
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/ji;->g:Z

    const-string v1, "ReportLocation"

    .line 80
    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 81
    sget-object v1, Lcom/flurry/sdk/ji;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, ReportLocation = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/ji;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "ExplicitLocation"

    .line 83
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    iput-object v1, p0, Lcom/flurry/sdk/ji;->h:Landroid/location/Location;

    const-string v1, "ExplicitLocation"

    .line 84
    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 85
    sget-object v0, Lcom/flurry/sdk/ji;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSettings, ExplicitLocation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/ji;->h:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ji;)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/flurry/sdk/ji;->i:J

    return-wide v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ji;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/flurry/sdk/ji;->l:Landroid/location/Location;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/flurry/sdk/ji;->j:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/ji;
    .locals 2

    const-class v0, Lcom/flurry/sdk/ji;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ji;->a:Lcom/flurry/sdk/ji;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/flurry/sdk/ji;

    invoke-direct {v1}, Lcom/flurry/sdk/ji;-><init>()V

    sput-object v1, Lcom/flurry/sdk/ji;->a:Lcom/flurry/sdk/ji;

    .line 29
    :cond_0
    sget-object v1, Lcom/flurry/sdk/ji;->a:Lcom/flurry/sdk/ji;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 216
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b()V
    .locals 3

    .line 33
    sget-object v0, Lcom/flurry/sdk/ji;->a:Lcom/flurry/sdk/ji;

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "ReportLocation"

    sget-object v2, Lcom/flurry/sdk/ji;->a:Lcom/flurry/sdk/ji;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->b(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)Z

    .line 35
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "ExplicitLocation"

    sget-object v2, Lcom/flurry/sdk/ji;->a:Lcom/flurry/sdk/ji;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->b(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)Z

    :cond_0
    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/flurry/sdk/ji;->a:Lcom/flurry/sdk/ji;

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/ji;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/flurry/sdk/ji;->g()V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 220
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/flurry/sdk/ji;)I
    .locals 1

    .line 22
    iget v0, p0, Lcom/flurry/sdk/ji;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/ji;->n:I

    return v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/flurry/sdk/ji;->b:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 4

    .line 192
    iget-boolean v0, p0, Lcom/flurry/sdk/ji;->m:Z

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ji;->j:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/flurry/sdk/ji;->k:Lcom/flurry/sdk/ji$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Lcom/flurry/sdk/ji;->n:I

    const-wide/16 v1, 0x0

    .line 200
    iput-wide v1, p0, Lcom/flurry/sdk/ji;->i:J

    .line 3244
    sget-object v1, Lcom/flurry/sdk/ji;->b:Ljava/lang/String;

    const-string v2, "Unregister location timer"

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 3245
    invoke-static {}, Lcom/flurry/sdk/lm;->a()Lcom/flurry/sdk/lm;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ji;->o:Lcom/flurry/sdk/ka;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/lm;->b(Lcom/flurry/sdk/ka;)V

    .line 203
    iput-boolean v0, p0, Lcom/flurry/sdk/ji;->m:Z

    .line 204
    sget-object v0, Lcom/flurry/sdk/ji;->b:Ljava/lang/String;

    const-string v1, "LocationProvider stopped"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 283
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x33814ed7    # -6.6765988E7f

    if-eq v0, v1, :cond_1

    const v1, -0x11ecc5d7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ExplicitLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "ReportLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x6

    .line 293
    sget-object p2, Lcom/flurry/sdk/ji;->b:Ljava/lang/String;

    const-string v0, "LocationProvider internal error! Had to be LocationCriteria, ReportLocation or ExplicitLocation key."

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 289
    :pswitch_0
    check-cast p2, Landroid/location/Location;

    iput-object p2, p0, Lcom/flurry/sdk/ji;->h:Landroid/location/Location;

    .line 290
    sget-object p1, Lcom/flurry/sdk/ji;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, ExplicitLocation = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/ji;->h:Landroid/location/Location;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 285
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/ji;->g:Z

    .line 286
    sget-object p1, Lcom/flurry/sdk/ji;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, ReportLocation = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/ji;->g:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized c()V
    .locals 10

    monitor-enter p0

    .line 89
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ji;->b:Ljava/lang/String;

    const-string v1, "Location update requested"

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/flurry/sdk/ji;->n:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    .line 1150
    iget-boolean v0, p0, Lcom/flurry/sdk/ji;->m:Z

    if-nez v0, :cond_4

    .line 1154
    iget-boolean v0, p0, Lcom/flurry/sdk/ji;->g:Z

    if-eqz v0, :cond_4

    .line 1158
    iget-object v0, p0, Lcom/flurry/sdk/ji;->h:Landroid/location/Location;

    if-nez v0, :cond_4

    .line 1162
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 2097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 1163
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1164
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    const/4 v1, 0x0

    .line 1168
    iput v1, p0, Lcom/flurry/sdk/ji;->n:I

    const/4 v1, 0x0

    .line 1173
    invoke-static {v0}, Lcom/flurry/sdk/ji;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "passive"

    goto :goto_0

    .line 1176
    :cond_1
    invoke-static {v0}, Lcom/flurry/sdk/ji;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "network"

    .line 2224
    :cond_2
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2225
    iget-object v3, p0, Lcom/flurry/sdk/ji;->j:Landroid/location/LocationManager;

    const-wide/16 v5, 0x2710

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/flurry/sdk/ji;->k:Lcom/flurry/sdk/ji$a;

    .line 2226
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v4, v1

    .line 2225
    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1181
    :cond_3
    invoke-direct {p0, v1}, Lcom/flurry/sdk/ji;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ji;->l:Landroid/location/Location;

    .line 1184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v3, 0x15f90

    add-long v5, v0, v3

    iput-wide v5, p0, Lcom/flurry/sdk/ji;->i:J

    .line 2239
    sget-object v0, Lcom/flurry/sdk/ji;->b:Ljava/lang/String;

    const-string v1, "Register location timer"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2240
    invoke-static {}, Lcom/flurry/sdk/lm;->a()Lcom/flurry/sdk/lm;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ji;->o:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lm;->a(Lcom/flurry/sdk/ka;)V

    const/4 v0, 0x1

    .line 1187
    iput-boolean v0, p0, Lcom/flurry/sdk/ji;->m:Z

    .line 1188
    sget-object v0, Lcom/flurry/sdk/ji;->b:Ljava/lang/String;

    const-string v1, "LocationProvider started"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 88
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    .line 96
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ji;->b:Ljava/lang/String;

    const-string v2, "Stop update location requested"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/flurry/sdk/ji;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 95
    monitor-exit p0

    throw v0
.end method

.method public final e()Landroid/location/Location;
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/flurry/sdk/ji;->h:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/flurry/sdk/ji;->h:Landroid/location/Location;

    return-object v0

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ji;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 112
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 3097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 113
    invoke-static {v0}, Lcom/flurry/sdk/ji;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    invoke-static {v0}, Lcom/flurry/sdk/ji;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 119
    :cond_1
    invoke-static {v0}, Lcom/flurry/sdk/ji;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "passive"

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {v0}, Lcom/flurry/sdk/ji;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "network"

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    .line 127
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ji;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 130
    iput-object v0, p0, Lcom/flurry/sdk/ji;->l:Landroid/location/Location;

    .line 133
    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/ji;->l:Landroid/location/Location;

    :cond_5
    const/4 v0, 0x4

    .line 137
    sget-object v2, Lcom/flurry/sdk/ji;->b:Ljava/lang/String;

    const-string v3, "getLocation() = "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
