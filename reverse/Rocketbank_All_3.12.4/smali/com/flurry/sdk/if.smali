.class public Lcom/flurry/sdk/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lj$a;


# static fields
.field private static final e:Ljava/lang/String; = "if"

.field private static f:Ljava/lang/String; = "https://proton.flurry.com/sdk/v1/config"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka<",
            "Lcom/flurry/sdk/jf;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka<",
            "Lcom/flurry/sdk/jg;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka<",
            "Lcom/flurry/sdk/jj;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/flurry/sdk/kj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kj<",
            "Lcom/flurry/sdk/hr;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/flurry/sdk/kj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kj<",
            "Lcom/flurry/sdk/hs;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/flurry/sdk/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jy<",
            "Lcom/flurry/sdk/id;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/flurry/sdk/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jy<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/im;",
            ">;>;"
        }
    .end annotation
.end field

.field private final k:Lcom/flurry/sdk/ie;

.field private final l:Lcom/flurry/sdk/jw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jw<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/hv;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/im;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:J

.field private s:J

.field private t:Z

.field private u:Lcom/flurry/sdk/hs;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/flurry/sdk/if$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/if$1;-><init>(Lcom/flurry/sdk/if;)V

    iput-object v0, p0, Lcom/flurry/sdk/if;->a:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/flurry/sdk/if$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/if$4;-><init>(Lcom/flurry/sdk/if;)V

    iput-object v0, p0, Lcom/flurry/sdk/if;->b:Lcom/flurry/sdk/ka;

    .line 139
    new-instance v0, Lcom/flurry/sdk/if$5;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/if$5;-><init>(Lcom/flurry/sdk/if;)V

    iput-object v0, p0, Lcom/flurry/sdk/if;->c:Lcom/flurry/sdk/ka;

    .line 146
    new-instance v0, Lcom/flurry/sdk/if$6;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/if$6;-><init>(Lcom/flurry/sdk/if;)V

    iput-object v0, p0, Lcom/flurry/sdk/if;->d:Lcom/flurry/sdk/ka;

    .line 155
    new-instance v0, Lcom/flurry/sdk/kj;

    const-string v1, "proton config request"

    new-instance v2, Lcom/flurry/sdk/ir;

    invoke-direct {v2}, Lcom/flurry/sdk/ir;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/kj;-><init>(Ljava/lang/String;Lcom/flurry/sdk/kz;)V

    iput-object v0, p0, Lcom/flurry/sdk/if;->g:Lcom/flurry/sdk/kj;

    .line 156
    new-instance v0, Lcom/flurry/sdk/kj;

    const-string v1, "proton config response"

    new-instance v2, Lcom/flurry/sdk/is;

    invoke-direct {v2}, Lcom/flurry/sdk/is;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/kj;-><init>(Ljava/lang/String;Lcom/flurry/sdk/kz;)V

    iput-object v0, p0, Lcom/flurry/sdk/if;->h:Lcom/flurry/sdk/kj;

    .line 161
    new-instance v0, Lcom/flurry/sdk/ie;

    invoke-direct {v0}, Lcom/flurry/sdk/ie;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/if;->k:Lcom/flurry/sdk/ie;

    .line 162
    new-instance v0, Lcom/flurry/sdk/jw;

    invoke-direct {v0}, Lcom/flurry/sdk/jw;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/if;->l:Lcom/flurry/sdk/jw;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/if;->m:Ljava/util/List;

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/flurry/sdk/if;->p:Z

    const-wide/16 v1, 0x2710

    .line 172
    iput-wide v1, p0, Lcom/flurry/sdk/if;->r:J

    .line 181
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v1

    const-string v2, "ProtonEnabled"

    .line 183
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/flurry/sdk/if;->n:Z

    const-string v2, "ProtonEnabled"

    .line 184
    invoke-virtual {v1, v2, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 185
    sget-object v2, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initSettings, protonEnabled = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/flurry/sdk/if;->n:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "ProtonConfigUrl"

    .line 187
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/flurry/sdk/if;->o:Ljava/lang/String;

    const-string v2, "ProtonConfigUrl"

    .line 188
    invoke-virtual {v1, v2, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 189
    sget-object v2, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "initSettings, protonConfigUrl = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/flurry/sdk/if;->o:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "analyticsEnabled"

    .line 191
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/flurry/sdk/if;->p:Z

    const-string v2, "analyticsEnabled"

    .line 192
    invoke-virtual {v1, v2, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 193
    sget-object v1, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, AnalyticsEnabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/if;->p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v1

    const-string v2, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v3, p0, Lcom/flurry/sdk/if;->b:Lcom/flurry/sdk/ka;

    invoke-virtual {v1, v2, v3}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 196
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v1

    const-string v2, "com.flurry.android.sdk.IdProviderUpdatedAdvertisingId"

    iget-object v3, p0, Lcom/flurry/sdk/if;->c:Lcom/flurry/sdk/ka;

    invoke-virtual {v1, v2, v3}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 197
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v1

    const-string v2, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v3, p0, Lcom/flurry/sdk/if;->d:Lcom/flurry/sdk/ka;

    invoke-virtual {v1, v2, v3}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 200
    new-instance v1, Lcom/flurry/sdk/jy;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v2

    .line 1097
    iget-object v2, v2, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 1989
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".yflurryprotonconfig."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v4

    .line 2101
    iget-object v4, v4, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 1989
    invoke-static {v4}, Lcom/flurry/sdk/lr;->i(Ljava/lang/String;)J

    move-result-wide v4

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, ".yflurryprotonconfig."

    new-instance v4, Lcom/flurry/sdk/if$7;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/if$7;-><init>(Lcom/flurry/sdk/if;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    iput-object v1, p0, Lcom/flurry/sdk/if;->i:Lcom/flurry/sdk/jy;

    .line 207
    new-instance v1, Lcom/flurry/sdk/jy;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v2

    .line 3097
    iget-object v2, v2, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 3993
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".yflurryprotonreport."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v4

    .line 4101
    iget-object v4, v4, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 3993
    invoke-static {v4}, Lcom/flurry/sdk/lr;->i(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, ".yflurryprotonreport."

    new-instance v4, Lcom/flurry/sdk/if$8;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/if$8;-><init>(Lcom/flurry/sdk/if;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    iput-object v1, p0, Lcom/flurry/sdk/if;->j:Lcom/flurry/sdk/jy;

    .line 216
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/if$9;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/if$9;-><init>(Lcom/flurry/sdk/if;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 224
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/if$10;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/if$10;-><init>(Lcom/flurry/sdk/if;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/if;J)J
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/flurry/sdk/if;->r:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/if;Lcom/flurry/sdk/hs;)Lcom/flurry/sdk/hs;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    return-object p1
.end method

.method private declared-synchronized a(JZ[B)V
    .locals 3

    monitor-enter p0

    if-nez p4, :cond_0

    .line 938
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 941
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v2, "Saving proton config response"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 943
    new-instance v0, Lcom/flurry/sdk/id;

    invoke-direct {v0}, Lcom/flurry/sdk/id;-><init>()V

    .line 13086
    iput-wide p1, v0, Lcom/flurry/sdk/id;->a:J

    .line 13090
    iput-boolean p3, v0, Lcom/flurry/sdk/id;->b:Z

    .line 13094
    iput-object p4, v0, Lcom/flurry/sdk/id;->c:[B

    .line 948
    iget-object p1, p0, Lcom/flurry/sdk/if;->i:Lcom/flurry/sdk/jy;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 936
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/flurry/sdk/if;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/if;->f()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/if;JZ[B)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/if;->a(JZ[B)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/if;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/if;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/hs;)Z
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/flurry/sdk/if;->b(Lcom/flurry/sdk/hs;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/flurry/sdk/if;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/flurry/sdk/if;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/if;J)J
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/flurry/sdk/if;->s:J

    return-wide p1
.end method

.method private declared-synchronized b(J)V
    .locals 4

    monitor-enter p0

    .line 886
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/if;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 888
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 889
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/im;

    .line 12079
    iget-wide v1, v1, Lcom/flurry/sdk/im;->a:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 891
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 894
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 885
    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/flurry/sdk/if;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/if;->i()V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 733
    :try_start_0
    sget-object v3, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v4, "Event triggered: "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x3

    invoke-static {v12, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-boolean v3, v1, Lcom/flurry/sdk/if;->p:Z

    if-nez v3, :cond_0

    .line 736
    sget-object v2, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v3, "Analytics and pulse have been disabled."

    invoke-static {v2, v3}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    monitor-exit p0

    return-void

    .line 740
    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    if-nez v3, :cond_1

    .line 741
    sget-object v2, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v3, "Config response is empty. No events to fire."

    invoke-static {v12, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 742
    monitor-exit p0

    return-void

    .line 745
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 747
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 748
    monitor-exit p0

    return-void

    .line 752
    :cond_2
    :try_start_3
    iget-object v3, v1, Lcom/flurry/sdk/if;->l:Lcom/flurry/sdk/jw;

    invoke-virtual {v3, v11}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    .line 755
    sget-object v2, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v3, "No events to fire. Returning."

    invoke-static {v12, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 756
    monitor-exit p0

    return-void

    .line 759
    :cond_3
    :try_start_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 760
    sget-object v2, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v3, "No events to fire. Returning."

    invoke-static {v12, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 761
    monitor-exit p0

    return-void

    .line 764
    :cond_4
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v2, :cond_5

    const/4 v8, 0x1

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    :goto_0
    const/4 v9, -0x1

    .line 770
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v13, 0x26750b2e

    if-eq v10, v13, :cond_8

    const v13, 0x51bea0f9

    if-eq v10, v13, :cond_7

    const v13, 0x5e26fdf5

    if-eq v10, v13, :cond_6

    goto :goto_1

    :cond_6
    const-string v10, "flurry.session_start"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v9, 0x0

    goto :goto_1

    :cond_7
    const-string v10, "flurry.app_install"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v9, 0x2

    goto :goto_1

    :cond_8
    const-string v10, "flurry.session_end"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v9, 0x1

    :cond_9
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 781
    sget-object v9, Lcom/flurry/sdk/iq;->d:Lcom/flurry/sdk/iq;

    goto :goto_2

    .line 778
    :pswitch_0
    sget-object v9, Lcom/flurry/sdk/iq;->a:Lcom/flurry/sdk/iq;

    goto :goto_2

    .line 775
    :pswitch_1
    sget-object v9, Lcom/flurry/sdk/iq;->c:Lcom/flurry/sdk/iq;

    goto :goto_2

    .line 772
    :pswitch_2
    sget-object v9, Lcom/flurry/sdk/iq;->b:Lcom/flurry/sdk/iq;

    .line 784
    :goto_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 788
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/flurry/sdk/hv;

    .line 791
    instance-of v14, v13, Lcom/flurry/sdk/hw;

    if-eqz v14, :cond_11

    .line 792
    sget-object v14, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v15, "Event contains triggers."

    const/4 v6, 0x4

    invoke-static {v6, v14, v15}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 793
    move-object v14, v13

    check-cast v14, Lcom/flurry/sdk/hw;

    iget-object v14, v14, Lcom/flurry/sdk/hw;->d:[Ljava/lang/String;

    if-nez v14, :cond_a

    .line 797
    sget-object v15, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v7, "Template does not contain trigger values. Firing."

    invoke-static {v6, v15, v7}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/4 v7, 0x1

    goto :goto_5

    .line 801
    :cond_a
    array-length v7, v14

    if-nez v7, :cond_b

    .line 802
    sget-object v7, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v15, "Template does not contain trigger values. Firing."

    invoke-static {v6, v7, v15}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    if-nez v2, :cond_c

    .line 808
    sget-object v7, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v13, "Publisher has not passed in params list. Not firing."

    invoke-static {v6, v7, v13}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const/4 v7, 0x0

    .line 813
    :goto_5
    move-object v15, v13

    check-cast v15, Lcom/flurry/sdk/hw;

    iget-object v15, v15, Lcom/flurry/sdk/hw;->c:Ljava/lang/String;

    .line 814
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-nez v15, :cond_d

    .line 818
    sget-object v7, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v13, "Publisher params has no value associated with proton key. Not firing."

    invoke-static {v6, v7, v13}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    const/4 v12, 0x0

    .line 823
    :goto_6
    array-length v6, v14

    if-ge v12, v6, :cond_f

    .line 824
    aget-object v6, v14, v12

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v7, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_f
    :goto_7
    if-nez v7, :cond_10

    .line 831
    sget-object v6, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v7, "Publisher params list does not match proton param values. Not firing."

    const/4 v12, 0x4

    invoke-static {v12, v6, v7}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 835
    :cond_10
    sget-object v6, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v7, "Publisher params match proton values. Firing."

    const/4 v12, 0x4

    invoke-static {v12, v6, v7}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_11
    iget-object v6, v13, Lcom/flurry/sdk/hv;->b:Lcom/flurry/sdk/hp;

    if-nez v6, :cond_12

    .line 842
    sget-object v6, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v7, "Template is empty. Not firing current event."

    const/4 v12, 0x3

    invoke-static {v12, v6, v7}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_8
    const/4 v12, 0x3

    goto/16 :goto_3

    .line 846
    :cond_12
    sget-object v7, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Creating callback report for partner: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v6, Lcom/flurry/sdk/hp;->b:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    invoke-static {v13, v7, v12}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 849
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v12, "event_name"

    .line 850
    invoke-interface {v7, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "event_time_millis"

    .line 851
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-object v12, v1, Lcom/flurry/sdk/if;->k:Lcom/flurry/sdk/ie;

    iget-object v13, v6, Lcom/flurry/sdk/hp;->e:Ljava/lang/String;

    invoke-virtual {v12, v13, v7}, Lcom/flurry/sdk/ie;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v20

    const/4 v12, 0x0

    .line 856
    iget-object v13, v6, Lcom/flurry/sdk/hp;->f:Ljava/lang/String;

    if-eqz v13, :cond_13

    .line 857
    iget-object v12, v1, Lcom/flurry/sdk/if;->k:Lcom/flurry/sdk/ie;

    iget-object v13, v6, Lcom/flurry/sdk/hp;->f:Ljava/lang/String;

    invoke-virtual {v12, v13, v7}, Lcom/flurry/sdk/ie;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v29, v7

    goto :goto_9

    :cond_13
    move-object/from16 v29, v12

    .line 860
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/32 v14, 0xf731400

    add-long v21, v12, v14

    .line 863
    new-instance v7, Lcom/flurry/sdk/ii;

    iget-object v12, v6, Lcom/flurry/sdk/hp;->b:Ljava/lang/String;

    iget-wide v13, v6, Lcom/flurry/sdk/hp;->a:J

    iget-object v15, v1, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    iget-object v15, v15, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    iget v15, v15, Lcom/flurry/sdk/hq;->b:I

    iget v2, v6, Lcom/flurry/sdk/hp;->g:I

    move-object/from16 v30, v3

    iget-object v3, v6, Lcom/flurry/sdk/hp;->d:Lcom/flurry/sdk/ip;

    move-wide/from16 v31, v4

    iget-object v4, v6, Lcom/flurry/sdk/hp;->j:Ljava/util/Map;

    iget v5, v6, Lcom/flurry/sdk/hp;->i:I

    move-object/from16 v33, v9

    iget v9, v6, Lcom/flurry/sdk/hp;->h:I

    move-object/from16 v16, v7

    move-object/from16 v17, v12

    move-wide/from16 v18, v13

    move/from16 v23, v15

    move/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move/from16 v27, v5

    move/from16 v28, v9

    invoke-direct/range {v16 .. v29}, Lcom/flurry/sdk/ii;-><init>(Ljava/lang/String;JLjava/lang/String;JIILcom/flurry/sdk/ip;Ljava/util/Map;IILjava/lang/String;)V

    .line 867
    iget-wide v2, v6, Lcom/flurry/sdk/hp;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v10, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v30

    move-wide/from16 v4, v31

    move-object/from16 v9, v33

    move-object/from16 v2, p2

    goto/16 :goto_8

    :cond_14
    move-object/from16 v33, v9

    .line 871
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_16

    .line 872
    new-instance v12, Lcom/flurry/sdk/im;

    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v5

    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->g()J

    move-result-wide v13

    move-object v2, v12

    move-object v3, v11

    move v4, v8

    move-wide v7, v13

    move-object/from16 v9, v33

    invoke-direct/range {v2 .. v10}, Lcom/flurry/sdk/im;-><init>(Ljava/lang/String;ZJJLcom/flurry/sdk/iq;Ljava/util/Map;)V

    const-string v2, "flurry.session_end"

    .line 875
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 876
    sget-object v2, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v3, "Storing Pulse callbacks for event: "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v2, v1, Lcom/flurry/sdk/if;->m:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    .line 879
    :cond_15
    :try_start_6
    sget-object v2, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v3, "Firing Pulse callbacks for event: "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/flurry/sdk/il;->a(Lcom/flurry/sdk/im;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 883
    :cond_16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 732
    monitor-exit p0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lcom/flurry/sdk/hs;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v1, :cond_6

    .line 10627
    iget-object v4, v1, Lcom/flurry/sdk/hq;->a:Ljava/util/List;

    if-eqz v4, :cond_6

    move v4, v0

    .line 10631
    :goto_0
    iget-object v5, v1, Lcom/flurry/sdk/hq;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 10632
    iget-object v5, v1, Lcom/flurry/sdk/hq;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/sdk/hp;

    if-eqz v5, :cond_5

    .line 10634
    iget-object v6, v5, Lcom/flurry/sdk/hp;->b:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-wide v6, v5, Lcom/flurry/sdk/hp;->a:J

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4

    iget-object v6, v5, Lcom/flurry/sdk/hp;->e:Ljava/lang/String;

    const-string v7, ""

    .line 10635
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v5, v5, Lcom/flurry/sdk/hp;->c:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 10652
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/sdk/hv;

    .line 10653
    iget-object v7, v6, Lcom/flurry/sdk/hv;->a:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10654
    sget-object v5, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v6, "An event is missing a name"

    invoke-static {v3, v5, v6}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v5, v0

    goto :goto_2

    .line 10658
    :cond_2
    instance-of v7, v6, Lcom/flurry/sdk/hw;

    if-eqz v7, :cond_1

    .line 10659
    check-cast v6, Lcom/flurry/sdk/hw;

    iget-object v6, v6, Lcom/flurry/sdk/hw;->c:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10660
    sget-object v5, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v6, "An event trigger is missing a param name"

    invoke-static {v3, v5, v6}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_2
    if-nez v5, :cond_5

    .line 10636
    :cond_4
    sget-object v1, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v4, "A callback template is missing required values"

    invoke-static {v3, v1, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    move v1, v2

    :goto_3
    if-eqz v1, :cond_8

    .line 610
    iget-object v1, p0, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    iget-object v1, v1, Lcom/flurry/sdk/hq;->e:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    iget-object p0, p0, Lcom/flurry/sdk/hq;->e:Ljava/lang/String;

    const-string v1, ""

    .line 612
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    return v2

    .line 613
    :cond_8
    :goto_4
    sget-object p0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v1, "Config response is missing required values."

    invoke-static {v3, p0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic c(Lcom/flurry/sdk/if;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/if;->k()V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/if;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/if;->l()V

    return-void
.end method

.method static synthetic e(Lcom/flurry/sdk/if;)Lcom/flurry/sdk/kj;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/flurry/sdk/if;->h:Lcom/flurry/sdk/kj;

    return-object p0
.end method

.method private declared-synchronized e()V
    .locals 4

    monitor-enter p0

    .line 368
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 369
    monitor-exit p0

    return-void

    .line 372
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 374
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 5097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    .line 374
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.flurry.android.flurryAppInstall"

    const/4 v3, 0x1

    .line 375
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "flurry.app_install"

    const/4 v3, 0x0

    .line 377
    invoke-direct {p0, v1, v3}, Lcom/flurry/sdk/if;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 378
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.flurry.android.flurryAppInstall"

    .line 379
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 380
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 367
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 19

    move-object/from16 v1, p0

    monitor-enter p0

    .line 385
    :try_start_0
    iget-boolean v2, v1, Lcom/flurry/sdk/if;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 386
    monitor-exit p0

    return-void

    .line 389
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 392
    iget-boolean v2, v1, Lcom/flurry/sdk/if;->q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 393
    monitor-exit p0

    return-void

    .line 397
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/je;->c()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    .line 398
    monitor-exit p0

    return-void

    .line 402
    :cond_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 403
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/je;->d()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 406
    iget-object v6, v1, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    const/4 v7, 0x3

    if-eqz v6, :cond_6

    .line 408
    iget-boolean v6, v1, Lcom/flurry/sdk/if;->t:Z

    const/4 v8, 0x0

    if-eq v6, v4, :cond_3

    .line 409
    sget-object v5, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v6, "Limit ad tracking value has changed, purging"

    invoke-static {v7, v5, v6}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 410
    iput-object v8, v1, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    goto :goto_0

    .line 415
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/flurry/sdk/if;->s:J

    iget-object v6, v1, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    iget-wide v13, v6, Lcom/flurry/sdk/hs;->b:J

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    add-long v17, v11, v13

    cmp-long v6, v9, v17

    if-gez v6, :cond_5

    .line 416
    sget-object v2, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v3, "Cached Proton config valid, no need to refresh"

    invoke-static {v7, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-boolean v2, v1, Lcom/flurry/sdk/if;->v:Z

    if-nez v2, :cond_4

    .line 418
    iput-boolean v5, v1, Lcom/flurry/sdk/if;->v:Z

    const-string v2, "flurry.session_start"

    .line 419
    invoke-direct {v1, v2, v8}, Lcom/flurry/sdk/if;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 421
    :cond_4
    monitor-exit p0

    return-void

    .line 427
    :cond_5
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v9, v1, Lcom/flurry/sdk/if;->s:J

    iget-object v11, v1, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    iget-wide v11, v11, Lcom/flurry/sdk/hs;->c:J

    mul-long/2addr v11, v15

    add-long v13, v9, v11

    cmp-long v9, v5, v13

    if-ltz v9, :cond_6

    .line 428
    sget-object v5, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v6, "Cached Proton config expired, purging"

    invoke-static {v7, v5, v6}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 429
    iput-object v8, v1, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    .line 430
    iget-object v5, v1, Lcom/flurry/sdk/if;->l:Lcom/flurry/sdk/jw;

    invoke-virtual {v5}, Lcom/flurry/sdk/jw;->a()V

    .line 436
    :cond_6
    :goto_0
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/flurry/sdk/jp;->a(Ljava/lang/Object;)V

    .line 438
    sget-object v5, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v6, "Requesting proton config"

    invoke-static {v7, v5, v6}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-direct/range {p0 .. p0}, Lcom/flurry/sdk/if;->g()[B

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v5, :cond_7

    .line 444
    monitor-exit p0

    return-void

    .line 448
    :cond_7
    :try_start_5
    new-instance v6, Lcom/flurry/sdk/kl;

    invoke-direct {v6}, Lcom/flurry/sdk/kl;-><init>()V

    .line 449
    iget-object v7, v1, Lcom/flurry/sdk/if;->o:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Lcom/flurry/sdk/if;->f:Ljava/lang/String;

    goto :goto_1

    :cond_8
    iget-object v7, v1, Lcom/flurry/sdk/if;->o:Ljava/lang/String;

    .line 5134
    :goto_1
    iput-object v7, v6, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    const/16 v7, 0x1388

    .line 6029
    iput v7, v6, Lcom/flurry/sdk/lx;->w:I

    .line 451
    sget-object v7, Lcom/flurry/sdk/kn$a;->c:Lcom/flurry/sdk/kn$a;

    .line 6142
    iput-object v7, v6, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    const-string v7, "Content-Type"

    const-string v8, "application/x-flurry;version=2"

    .line 452
    invoke-virtual {v6, v7, v8}, Lcom/flurry/sdk/kl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Accept"

    const-string v8, "application/x-flurry;version=2"

    .line 453
    invoke-virtual {v6, v7, v8}, Lcom/flurry/sdk/kl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "FM-Checksum"

    .line 454
    invoke-static {v5}, Lcom/flurry/sdk/kj;->a([B)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/flurry/sdk/kl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    new-instance v7, Lcom/flurry/sdk/kv;

    invoke-direct {v7}, Lcom/flurry/sdk/kv;-><init>()V

    .line 7040
    iput-object v7, v6, Lcom/flurry/sdk/kl;->c:Lcom/flurry/sdk/kz;

    .line 456
    new-instance v7, Lcom/flurry/sdk/kv;

    invoke-direct {v7}, Lcom/flurry/sdk/kv;-><init>()V

    .line 7044
    iput-object v7, v6, Lcom/flurry/sdk/kl;->d:Lcom/flurry/sdk/kz;

    .line 8036
    iput-object v5, v6, Lcom/flurry/sdk/kl;->b:Ljava/lang/Object;

    .line 459
    new-instance v5, Lcom/flurry/sdk/if$2;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/flurry/sdk/if$2;-><init>(Lcom/flurry/sdk/if;JZ)V

    .line 8048
    iput-object v5, v6, Lcom/flurry/sdk/kl;->a:Lcom/flurry/sdk/kl$a;

    .line 540
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lcom/flurry/sdk/jp;->a(Ljava/lang/Object;Lcom/flurry/sdk/lx;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 541
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 384
    monitor-exit p0

    throw v2
.end method

.method static synthetic f(Lcom/flurry/sdk/if;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/if;->h()V

    return-void
.end method

.method static synthetic g(Lcom/flurry/sdk/if;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/flurry/sdk/if;->v:Z

    return p0
.end method

.method private g()[B
    .locals 5

    .line 547
    :try_start_0
    new-instance v0, Lcom/flurry/sdk/hr;

    invoke-direct {v0}, Lcom/flurry/sdk/hr;-><init>()V

    .line 548
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 8101
    iget-object v1, v1, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 548
    iput-object v1, v0, Lcom/flurry/sdk/hr;->a:Ljava/lang/String;

    .line 549
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 9097
    iget-object v1, v1, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 549
    invoke-static {v1}, Lcom/flurry/sdk/lo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/hr;->b:Ljava/lang/String;

    .line 550
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 10097
    iget-object v1, v1, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 550
    invoke-static {v1}, Lcom/flurry/sdk/lo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/hr;->c:Ljava/lang/String;

    .line 551
    invoke-static {}, Lcom/flurry/sdk/js;->a()I

    move-result v1

    iput v1, v0, Lcom/flurry/sdk/hr;->d:I

    const/4 v1, 0x3

    .line 552
    iput v1, v0, Lcom/flurry/sdk/hr;->e:I

    .line 553
    invoke-static {}, Lcom/flurry/sdk/jn;->a()Lcom/flurry/sdk/jn;

    invoke-static {}, Lcom/flurry/sdk/jn;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/hr;->f:Ljava/lang/String;

    .line 554
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/je;->d()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/hr;->g:Z

    .line 556
    new-instance v1, Lcom/flurry/sdk/hu;

    invoke-direct {v1}, Lcom/flurry/sdk/hu;-><init>()V

    iput-object v1, v0, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    .line 557
    iget-object v1, v0, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    new-instance v2, Lcom/flurry/sdk/ho;

    invoke-direct {v2}, Lcom/flurry/sdk/ho;-><init>()V

    iput-object v2, v1, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    .line 558
    iget-object v1, v0, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v1, v1, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/sdk/ho;->a:Ljava/lang/String;

    .line 559
    iget-object v1, v0, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v1, v1, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/sdk/ho;->b:Ljava/lang/String;

    .line 560
    iget-object v1, v0, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v1, v1, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/sdk/ho;->c:Ljava/lang/String;

    .line 561
    iget-object v1, v0, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v1, v1, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/sdk/ho;->d:Ljava/lang/String;

    .line 562
    iget-object v1, v0, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v1, v1, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/sdk/ho;->e:Ljava/lang/String;

    .line 563
    iget-object v1, v0, Lcom/flurry/sdk/hr;->h:Lcom/flurry/sdk/hu;

    iget-object v1, v1, Lcom/flurry/sdk/hu;->a:Lcom/flurry/sdk/ho;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/sdk/ho;->f:Ljava/lang/String;

    .line 565
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/flurry/sdk/hr;->i:Ljava/util/List;

    .line 567
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v1

    .line 10127
    iget-object v1, v1, Lcom/flurry/sdk/je;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 568
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 569
    new-instance v3, Lcom/flurry/sdk/ht;

    invoke-direct {v3}, Lcom/flurry/sdk/ht;-><init>()V

    .line 570
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/jm;

    iget v4, v4, Lcom/flurry/sdk/jm;->c:I

    iput v4, v3, Lcom/flurry/sdk/ht;->a:I

    .line 571
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/jm;

    iget-boolean v4, v4, Lcom/flurry/sdk/jm;->d:Z

    if-eqz v4, :cond_0

    .line 572
    new-instance v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v3, Lcom/flurry/sdk/ht;->b:Ljava/lang/String;

    goto :goto_1

    .line 575
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/flurry/sdk/lr;->b([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/flurry/sdk/ht;->b:Ljava/lang/String;

    .line 577
    :goto_1
    iget-object v2, v0, Lcom/flurry/sdk/hr;->i:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 580
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/ji;->a()Lcom/flurry/sdk/ji;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/ji;->e()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 582
    new-instance v2, Lcom/flurry/sdk/hy;

    invoke-direct {v2}, Lcom/flurry/sdk/hy;-><init>()V

    iput-object v2, v0, Lcom/flurry/sdk/hr;->j:Lcom/flurry/sdk/hy;

    .line 583
    iget-object v2, v0, Lcom/flurry/sdk/hr;->j:Lcom/flurry/sdk/hy;

    new-instance v3, Lcom/flurry/sdk/hx;

    invoke-direct {v3}, Lcom/flurry/sdk/hx;-><init>()V

    iput-object v3, v2, Lcom/flurry/sdk/hy;->a:Lcom/flurry/sdk/hx;

    .line 584
    iget-object v2, v0, Lcom/flurry/sdk/hr;->j:Lcom/flurry/sdk/hy;

    iget-object v2, v2, Lcom/flurry/sdk/hy;->a:Lcom/flurry/sdk/hx;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/flurry/sdk/lr;->a(D)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/flurry/sdk/hx;->a:D

    .line 585
    iget-object v2, v0, Lcom/flurry/sdk/hr;->j:Lcom/flurry/sdk/hy;

    iget-object v2, v2, Lcom/flurry/sdk/hy;->a:Lcom/flurry/sdk/hx;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/flurry/sdk/lr;->a(D)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/flurry/sdk/hx;->b:D

    .line 586
    iget-object v2, v0, Lcom/flurry/sdk/hr;->j:Lcom/flurry/sdk/hy;

    iget-object v2, v2, Lcom/flurry/sdk/hy;->a:Lcom/flurry/sdk/hx;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Lcom/flurry/sdk/lr;->a(D)D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, v2, Lcom/flurry/sdk/hx;->c:F

    .line 589
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v1

    const-string v2, "UserId"

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    .line 590
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 591
    new-instance v2, Lcom/flurry/sdk/ib;

    invoke-direct {v2}, Lcom/flurry/sdk/ib;-><init>()V

    iput-object v2, v0, Lcom/flurry/sdk/hr;->k:Lcom/flurry/sdk/ib;

    .line 592
    iget-object v2, v0, Lcom/flurry/sdk/hr;->k:Lcom/flurry/sdk/ib;

    iput-object v1, v2, Lcom/flurry/sdk/ib;->a:Ljava/lang/String;

    .line 595
    :cond_3
    iget-object v1, p0, Lcom/flurry/sdk/if;->g:Lcom/flurry/sdk/kj;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/kj;->a(Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    .line 598
    sget-object v2, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v3, "Proton config request failed with exception: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private h()V
    .locals 6

    .line 672
    iget-object v0, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    if-nez v0, :cond_0

    return-void

    .line 676
    :cond_0
    sget-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v1, "Processing config response"

    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    iget-object v0, v0, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    iget v0, v0, Lcom/flurry/sdk/hq;->c:I

    invoke-static {v0}, Lcom/flurry/sdk/il;->a(I)V

    .line 680
    iget-object v0, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    iget-object v0, v0, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    iget v0, v0, Lcom/flurry/sdk/hq;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lcom/flurry/sdk/il;->b(I)V

    .line 681
    invoke-static {}, Lcom/flurry/sdk/in;->a()Lcom/flurry/sdk/in;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    iget-object v1, v1, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    iget-object v1, v1, Lcom/flurry/sdk/hq;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v3, ".do"

    .line 11297
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 11298
    sget-object v3, Lcom/flurry/sdk/in;->b:Ljava/lang/String;

    const-string v4, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 11301
    :cond_1
    iput-object v1, v0, Lcom/flurry/sdk/in;->a:Ljava/lang/String;

    .line 684
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->n:Z

    if-eqz v0, :cond_2

    .line 685
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string v1, "analyticsEnabled"

    iget-object v2, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    iget-object v2, v2, Lcom/flurry/sdk/hs;->f:Lcom/flurry/sdk/ic;

    iget-boolean v2, v2, Lcom/flurry/sdk/ic;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/if;->l:Lcom/flurry/sdk/jw;

    invoke-virtual {v0}, Lcom/flurry/sdk/jw;->a()V

    .line 691
    iget-object v0, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    iget-object v0, v0, Lcom/flurry/sdk/hs;->e:Lcom/flurry/sdk/hq;

    if-nez v0, :cond_3

    return-void

    .line 696
    :cond_3
    iget-object v0, v0, Lcom/flurry/sdk/hq;->a:Ljava/util/List;

    if-nez v0, :cond_4

    return-void

    .line 701
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/hp;

    if-eqz v1, :cond_5

    .line 706
    iget-object v2, v1, Lcom/flurry/sdk/hp;->c:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 712
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/sdk/hv;

    if-eqz v3, :cond_6

    .line 718
    iget-object v4, v3, Lcom/flurry/sdk/hv;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 723
    iput-object v1, v3, Lcom/flurry/sdk/hv;->b:Lcom/flurry/sdk/hp;

    .line 726
    iget-object v4, p0, Lcom/flurry/sdk/if;->l:Lcom/flurry/sdk/jw;

    iget-object v5, v3, Lcom/flurry/sdk/hv;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method static synthetic h(Lcom/flurry/sdk/if;)Z
    .locals 1

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/flurry/sdk/if;->v:Z

    return v0
.end method

.method private declared-synchronized i()V
    .locals 6

    monitor-enter p0

    .line 897
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/if;->i:Lcom/flurry/sdk/jy;

    invoke-virtual {v0}, Lcom/flurry/sdk/jy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/id;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 901
    :try_start_1
    iget-object v2, p0, Lcom/flurry/sdk/if;->h:Lcom/flurry/sdk/kj;

    .line 12082
    iget-object v3, v0, Lcom/flurry/sdk/id;->c:[B

    .line 901
    invoke-virtual {v2, v3}, Lcom/flurry/sdk/kj;->b([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/hs;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    .line 903
    :try_start_2
    sget-object v4, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v5, "Failed to decode saved proton config response: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v2, p0, Lcom/flurry/sdk/if;->i:Lcom/flurry/sdk/jy;

    invoke-virtual {v2}, Lcom/flurry/sdk/jy;->b()Z

    move-object v2, v1

    .line 907
    :goto_0
    invoke-static {v2}, Lcom/flurry/sdk/if;->b(Lcom/flurry/sdk/hs;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 912
    sget-object v3, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v4, "Loaded saved proton config response"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x2710

    .line 914
    iput-wide v2, p0, Lcom/flurry/sdk/if;->r:J

    .line 13074
    iget-wide v2, v0, Lcom/flurry/sdk/id;->a:J

    .line 916
    iput-wide v2, p0, Lcom/flurry/sdk/if;->s:J

    .line 13078
    iget-boolean v0, v0, Lcom/flurry/sdk/id;->b:Z

    .line 917
    iput-boolean v0, p0, Lcom/flurry/sdk/if;->t:Z

    .line 918
    iput-object v1, p0, Lcom/flurry/sdk/if;->u:Lcom/flurry/sdk/hs;

    .line 921
    invoke-direct {p0}, Lcom/flurry/sdk/if;->h()V

    :cond_1
    const/4 v0, 0x1

    .line 925
    iput-boolean v0, p0, Lcom/flurry/sdk/if;->q:Z

    .line 928
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/if$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/if$3;-><init>(Lcom/flurry/sdk/if;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 934
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 896
    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/flurry/sdk/if;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/if;->e()V

    return-void
.end method

.method static synthetic j(Lcom/flurry/sdk/if;)J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/flurry/sdk/if;->r:J

    return-wide v0
.end method

.method private declared-synchronized j()V
    .locals 6

    monitor-enter p0

    .line 952
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->p:Z

    if-nez v0, :cond_0

    .line 953
    sget-object v0, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v1, "Analytics disabled, not sending pulse reports."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 957
    :try_start_1
    sget-object v1, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/if;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " queued reports."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/flurry/sdk/if;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/im;

    const/4 v2, 0x3

    .line 960
    sget-object v3, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Firing Pulse callbacks for event: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14084
    iget-object v5, v1, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 960
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/il;->a(Lcom/flurry/sdk/im;)V

    goto :goto_0

    .line 964
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/if;->m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 965
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 951
    monitor-exit p0

    throw v0
.end method

.method static synthetic k(Lcom/flurry/sdk/if;)Ljava/lang/Runnable;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/flurry/sdk/if;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method private declared-synchronized k()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    .line 968
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v2, "Loading queued report data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/flurry/sdk/if;->j:Lcom/flurry/sdk/jy;

    invoke-virtual {v0}, Lcom/flurry/sdk/jy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 973
    iget-object v1, p0, Lcom/flurry/sdk/if;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 967
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    .line 978
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v2, "Saving queued report data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/flurry/sdk/if;->j:Lcom/flurry/sdk/jy;

    iget-object v1, p0, Lcom/flurry/sdk/if;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 977
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()V
    .locals 1

    monitor-enter p0

    .line 984
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/if;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 985
    iget-object v0, p0, Lcom/flurry/sdk/if;->j:Lcom/flurry/sdk/jy;

    invoke-virtual {v0}, Lcom/flurry/sdk/jy;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 983
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 269
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 270
    monitor-exit p0

    return-void

    .line 273
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 276
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v0

    sput-wide v0, Lcom/flurry/sdk/ih;->a:J

    const/4 v0, 0x0

    .line 279
    iput-boolean v0, p0, Lcom/flurry/sdk/if;->v:Z

    .line 281
    invoke-direct {p0}, Lcom/flurry/sdk/if;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 268
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 1

    monitor-enter p0

    .line 299
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 300
    monitor-exit p0

    return-void

    .line 303
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/if;->b(J)V

    const-string p1, "flurry.session_end"

    const/4 p2, 0x0

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/if;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 337
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object p1

    new-instance p2, Lcom/flurry/sdk/if$11;

    invoke-direct {p2, p0}, Lcom/flurry/sdk/if$11;-><init>(Lcom/flurry/sdk/if;)V

    invoke-virtual {p1, p2}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 298
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 248
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x66855b25

    if-eq v0, v1, :cond_2

    const v1, 0x2633fcbb

    if-eq v0, v1, :cond_1

    const v1, 0x5edae5c7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ProtonConfigUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "ProtonEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "analyticsEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x6

    .line 262
    sget-object p2, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    const-string v0, "onSettingUpdate internal error!"

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 258
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/if;->p:Z

    .line 259
    sget-object p1, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, AnalyticsEnabled = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/if;->p:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 254
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/if;->o:Ljava/lang/String;

    .line 255
    sget-object p1, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, protonConfigUrl = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/if;->o:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 250
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/if;->n:Z

    .line 251
    sget-object p1, Lcom/flurry/sdk/if;->e:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, protonEnabled = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/if;->n:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 358
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 359
    monitor-exit p0

    return-void

    .line 362
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 364
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/if;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 357
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 286
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 287
    monitor-exit p0

    return-void

    .line 290
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 293
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/if;->b(J)V

    .line 294
    invoke-direct {p0}, Lcom/flurry/sdk/if;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 285
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 347
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/if;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 348
    monitor-exit p0

    return-void

    .line 351
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 354
    invoke-direct {p0}, Lcom/flurry/sdk/if;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 346
    monitor-exit p0

    throw v0
.end method
