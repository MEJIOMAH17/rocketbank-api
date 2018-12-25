.class public Lcom/flurry/sdk/ii;
.super Lcom/flurry/sdk/kp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ii$a;
    }
.end annotation


# static fields
.field private static final t:Ljava/lang/String; = "com.flurry.sdk.ii"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flurry/sdk/ij;",
            ">;"
        }
    .end annotation
.end field

.field final b:J

.field final c:I

.field final d:I

.field final e:Lcom/flurry/sdk/ip;

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:J

.field h:I

.field i:I

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Z

.field public m:Lcom/flurry/sdk/im;

.field private final u:I

.field private final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;JIILcom/flurry/sdk/ip;Ljava/util/Map;IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JII",
            "Lcom/flurry/sdk/ip;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/flurry/sdk/kp;-><init>()V

    const/16 v0, 0x3e8

    .line 24
    iput v0, p0, Lcom/flurry/sdk/ii;->u:I

    const/16 v0, 0x7530

    .line 25
    iput v0, p0, Lcom/flurry/sdk/ii;->v:I

    .line 46
    invoke-virtual {p0, p4}, Lcom/flurry/sdk/ii;->a(Ljava/lang/String;)V

    .line 1042
    iput-wide p5, p0, Lcom/flurry/sdk/kp;->n:J

    .line 49
    invoke-virtual {p0}, Lcom/flurry/sdk/ii;->a_()V

    .line 51
    iput-object p1, p0, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 53
    iput-wide p2, p0, Lcom/flurry/sdk/ii;->b:J

    .line 1071
    iput p7, p0, Lcom/flurry/sdk/kp;->s:I

    .line 56
    iput p7, p0, Lcom/flurry/sdk/ii;->c:I

    .line 57
    iput p8, p0, Lcom/flurry/sdk/ii;->d:I

    .line 58
    iput-object p9, p0, Lcom/flurry/sdk/ii;->e:Lcom/flurry/sdk/ip;

    .line 59
    iput-object p10, p0, Lcom/flurry/sdk/ii;->f:Ljava/util/Map;

    .line 60
    iput p11, p0, Lcom/flurry/sdk/ii;->h:I

    .line 61
    iput p12, p0, Lcom/flurry/sdk/ii;->i:I

    .line 62
    iput-object p13, p0, Lcom/flurry/sdk/ii;->j:Ljava/lang/String;

    const-wide/16 p1, 0x7530

    .line 65
    iput-wide p1, p0, Lcom/flurry/sdk/ii;->g:J

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ii;J)J
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/flurry/sdk/ii;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/ii;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/flurry/sdk/ii;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/flurry/sdk/ii;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/ii;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/flurry/sdk/ii;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/flurry/sdk/ii;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/flurry/sdk/ii;->c:I

    return p0
.end method

.method static synthetic d(Lcom/flurry/sdk/ii;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/flurry/sdk/ii;->d:I

    return p0
.end method

.method static synthetic e(Lcom/flurry/sdk/ii;)Lcom/flurry/sdk/ip;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/flurry/sdk/ii;->e:Lcom/flurry/sdk/ip;

    return-object p0
.end method

.method static synthetic f(Lcom/flurry/sdk/ii;)Ljava/util/Map;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/flurry/sdk/ii;->f:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Lcom/flurry/sdk/ii;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/flurry/sdk/ii;->g:J

    return-wide v0
.end method

.method static synthetic h(Lcom/flurry/sdk/ii;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/flurry/sdk/ii;->h:I

    return p0
.end method

.method static synthetic i(Lcom/flurry/sdk/ii;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/flurry/sdk/ii;->i:I

    return p0
.end method

.method static synthetic j(Lcom/flurry/sdk/ii;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/flurry/sdk/ii;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/flurry/sdk/ii;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/flurry/sdk/ii;->l:Z

    return p0
.end method


# virtual methods
.method public final a_()V
    .locals 4

    .line 75
    invoke-super {p0}, Lcom/flurry/sdk/kp;->a_()V

    .line 2026
    iget v0, p0, Lcom/flurry/sdk/kp;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 78
    iget-wide v0, p0, Lcom/flurry/sdk/ii;->g:J

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/ii;->g:J

    :cond_0
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    invoke-virtual {v0}, Lcom/flurry/sdk/im;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 81
    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ij;

    .line 141
    iput-object p0, v1, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    goto :goto_0

    :cond_0
    return-void
.end method
