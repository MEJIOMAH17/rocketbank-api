.class public final Lcom/flurry/sdk/li;
.super Lcom/flurry/sdk/lj;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/lang/Integer;

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/Boolean;

.field public static final g:Ljava/lang/Boolean;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/Boolean;

.field public static final j:Landroid/location/Criteria;

.field public static final k:Landroid/location/Location;

.field public static final l:Ljava/lang/Long;

.field public static final m:Ljava/lang/Boolean;

.field public static final n:Ljava/lang/Long;

.field public static final o:Ljava/lang/Byte;

.field public static final p:Ljava/lang/Boolean;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/Boolean;

.field private static s:Lcom/flurry/sdk/li;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xe2

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->a:Ljava/lang/Integer;

    const/4 v0, 0x6

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->b:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->c:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->d:Ljava/lang/Integer;

    .line 70
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/flurry/sdk/li;->f:Ljava/lang/Boolean;

    .line 71
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/flurry/sdk/li;->g:Ljava/lang/Boolean;

    .line 73
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/flurry/sdk/li;->i:Ljava/lang/Boolean;

    const-wide/16 v0, 0x2710

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->l:Ljava/lang/Long;

    .line 77
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/flurry/sdk/li;->m:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 79
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->o:Ljava/lang/Byte;

    .line 82
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/flurry/sdk/li;->p:Ljava/lang/Boolean;

    .line 84
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/flurry/sdk/li;->r:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Lcom/flurry/sdk/lj;-><init>()V

    const-string v0, "AgentVersion"

    .line 1091
    sget-object v1, Lcom/flurry/sdk/li;->a:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ReleaseMajorVersion"

    .line 1092
    sget-object v1, Lcom/flurry/sdk/li;->b:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ReleaseMinorVersion"

    .line 1093
    sget-object v1, Lcom/flurry/sdk/li;->c:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ReleasePatchVersion"

    .line 1094
    sget-object v1, Lcom/flurry/sdk/li;->d:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ReleaseBetaVersion"

    const-string v1, ""

    .line 1095
    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "VersionName"

    .line 1097
    sget-object v1, Lcom/flurry/sdk/li;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "CaptureUncaughtExceptions"

    .line 1099
    sget-object v1, Lcom/flurry/sdk/li;->f:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "UseHttps"

    .line 1101
    sget-object v1, Lcom/flurry/sdk/li;->g:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ReportUrl"

    .line 1102
    sget-object v1, Lcom/flurry/sdk/li;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ReportLocation"

    .line 1104
    sget-object v1, Lcom/flurry/sdk/li;->i:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ExplicitLocation"

    .line 1105
    sget-object v1, Lcom/flurry/sdk/li;->k:Landroid/location/Location;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ContinueSessionMillis"

    .line 1107
    sget-object v1, Lcom/flurry/sdk/li;->l:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "LogEvents"

    .line 1108
    sget-object v1, Lcom/flurry/sdk/li;->m:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Age"

    .line 1109
    sget-object v1, Lcom/flurry/sdk/li;->n:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Gender"

    .line 1110
    sget-object v1, Lcom/flurry/sdk/li;->o:Ljava/lang/Byte;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "UserId"

    const-string v1, ""

    .line 1111
    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ProtonEnabled"

    .line 1113
    sget-object v1, Lcom/flurry/sdk/li;->p:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ProtonConfigUrl"

    .line 1114
    sget-object v1, Lcom/flurry/sdk/li;->q:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "analyticsEnabled"

    .line 1115
    sget-object v1, Lcom/flurry/sdk/li;->r:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/li;
    .locals 2

    const-class v0, Lcom/flurry/sdk/li;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/li;->s:Lcom/flurry/sdk/li;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/flurry/sdk/li;

    invoke-direct {v1}, Lcom/flurry/sdk/li;-><init>()V

    sput-object v1, Lcom/flurry/sdk/li;->s:Lcom/flurry/sdk/li;

    .line 28
    :cond_0
    sget-object v1, Lcom/flurry/sdk/li;->s:Lcom/flurry/sdk/li;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lcom/flurry/sdk/li;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/li;->s:Lcom/flurry/sdk/li;

    if-eqz v1, :cond_0

    .line 33
    sget-object v1, Lcom/flurry/sdk/li;->s:Lcom/flurry/sdk/li;

    invoke-virtual {v1}, Lcom/flurry/sdk/li;->c()V

    :cond_0
    const/4 v1, 0x0

    .line 36
    sput-object v1, Lcom/flurry/sdk/li;->s:Lcom/flurry/sdk/li;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0

    throw v1
.end method
