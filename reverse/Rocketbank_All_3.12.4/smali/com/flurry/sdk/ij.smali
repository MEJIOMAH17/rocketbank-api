.class public Lcom/flurry/sdk/ij;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ij$a;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String; = "com.flurry.sdk.ij"


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:Z

.field public e:I

.field public f:Lcom/flurry/sdk/ik;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:J

.field public j:Z

.field public k:J

.field public l:Lcom/flurry/sdk/ii;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/ii;JJI)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/flurry/sdk/ij;->k:J

    .line 33
    iput-object p1, p0, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 34
    iput-wide p2, p0, Lcom/flurry/sdk/ij;->b:J

    .line 35
    iput-wide p4, p0, Lcom/flurry/sdk/ij;->c:J

    .line 36
    iput p6, p0, Lcom/flurry/sdk/ij;->a:I

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/flurry/sdk/ij;->e:I

    .line 39
    sget-object p1, Lcom/flurry/sdk/ik;->d:Lcom/flurry/sdk/ik;

    iput-object p1, p0, Lcom/flurry/sdk/ij;->f:Lcom/flurry/sdk/ik;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    .line 1147
    iget-object v0, v0, Lcom/flurry/sdk/ii;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-boolean v0, p0, Lcom/flurry/sdk/ij;->d:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/ij;->l:Lcom/flurry/sdk/ii;

    const/4 v1, 0x1

    .line 2131
    iput-boolean v1, v0, Lcom/flurry/sdk/ii;->l:Z

    :cond_0
    return-void
.end method
