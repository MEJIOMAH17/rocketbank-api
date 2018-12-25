.class public abstract Lcom/flurry/sdk/kr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/kr$a;
    }
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka<",
            "Lcom/flurry/sdk/jj;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/flurry/sdk/kt;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kr;->c:Ljava/util/Set;

    const-string v0, "defaultDataKey_"

    .line 35
    iput-object v0, p0, Lcom/flurry/sdk/kr;->e:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/flurry/sdk/kr$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kr$1;-><init>(Lcom/flurry/sdk/kr;)V

    iput-object v0, p0, Lcom/flurry/sdk/kr;->a:Lcom/flurry/sdk/ka;

    .line 53
    iput-object p2, p0, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object p2

    const-string v0, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v1, p0, Lcom/flurry/sdk/kr;->a:Lcom/flurry/sdk/ka;

    invoke-virtual {p2, v0, v1}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 1064
    new-instance p2, Lcom/flurry/sdk/kr$2;

    invoke-direct {p2, p0, p1}, Lcom/flurry/sdk/kr$2;-><init>(Lcom/flurry/sdk/kr;Ljava/lang/String;)V

    .line 2060
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 297
    new-instance v0, Lcom/flurry/sdk/kr$8;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/kr$8;-><init>(Lcom/flurry/sdk/kr;Ljava/lang/String;)V

    .line 6060
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 275
    new-instance p3, Lcom/flurry/sdk/kr$7;

    invoke-direct {p3, p0, p1, p2}, Lcom/flurry/sdk/kr$7;-><init>(Lcom/flurry/sdk/kr;Ljava/lang/String;Ljava/lang/String;)V

    .line 5060
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract a([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method public final b()V
    .locals 2

    .line 125
    new-instance v0, Lcom/flurry/sdk/kr$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kr$4;-><init>(Lcom/flurry/sdk/kr;)V

    .line 4060
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2093
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2112
    :cond_0
    new-instance v0, Lcom/flurry/sdk/kr$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/flurry/sdk/kr$3;-><init>(Lcom/flurry/sdk/kr;[BLjava/lang/String;Ljava/lang/String;)V

    .line 3060
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 2100
    invoke-virtual {p0}, Lcom/flurry/sdk/kr;->b()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 2095
    iget-object p2, p0, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    const-string p3, "Report that has to be sent is EMPTY or NULL"

    invoke-static {p1, p2, p3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final c()Z
    .locals 2

    .line 4107
    iget-object v0, p0, Lcom/flurry/sdk/kr;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
