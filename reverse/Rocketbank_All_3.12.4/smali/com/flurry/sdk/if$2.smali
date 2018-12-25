.class final Lcom/flurry/sdk/if$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/if;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kl$a<",
        "[B[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/flurry/sdk/if;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/if;JZ)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    iput-wide p2, p0, Lcom/flurry/sdk/if$2;->a:J

    iput-boolean p4, p0, Lcom/flurry/sdk/if$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kl;Ljava/lang/Object;)V
    .locals 8

    .line 459
    check-cast p2, [B

    .line 2218
    iget v0, p1, Lcom/flurry/sdk/kn;->p:I

    .line 1464
    invoke-static {}, Lcom/flurry/sdk/if;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Proton config request: HTTP status code is:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x2710

    const/16 v4, 0x190

    if-eq v0, v4, :cond_6

    const/16 v4, 0x196

    if-eq v0, v4, :cond_6

    const/16 v4, 0x19c

    if-eq v0, v4, :cond_6

    const/16 v4, 0x19f

    if-ne v0, v4, :cond_0

    goto/16 :goto_3

    .line 1474
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/kl;->c()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    .line 1478
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v4

    new-instance v6, Lcom/flurry/sdk/if$2$1;

    invoke-direct {v6, p0, p2}, Lcom/flurry/sdk/if$2$1;-><init>(Lcom/flurry/sdk/if$2;[B)V

    invoke-virtual {v4, v6}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 1486
    :try_start_0
    iget-object v4, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {v4}, Lcom/flurry/sdk/if;->e(Lcom/flurry/sdk/if;)Lcom/flurry/sdk/kj;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/flurry/sdk/kj;->b([B)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/flurry/sdk/hs;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 v4, 0x5

    .line 1488
    invoke-static {}, Lcom/flurry/sdk/if;->d()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Failed to decode proton config response: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, v6, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object p2, v5

    .line 1491
    :goto_0
    invoke-static {p2}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/hs;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, p2

    :goto_1
    if-eqz v5, :cond_3

    .line 1496
    iget-object p2, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {p2, v1, v2}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/if;J)J

    .line 1498
    iget-object p2, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    iget-wide v1, p0, Lcom/flurry/sdk/if$2;->a:J

    invoke-static {p2, v1, v2}, Lcom/flurry/sdk/if;->b(Lcom/flurry/sdk/if;J)J

    .line 1499
    iget-object p2, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    iget-boolean v1, p0, Lcom/flurry/sdk/if$2;->b:Z

    invoke-static {p2, v1}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/if;Z)Z

    .line 1500
    iget-object p2, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {p2, v5}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/if;Lcom/flurry/sdk/hs;)Lcom/flurry/sdk/hs;

    .line 1503
    iget-object p2, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {p2}, Lcom/flurry/sdk/if;->f(Lcom/flurry/sdk/if;)V

    .line 1506
    iget-object p2, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {p2}, Lcom/flurry/sdk/if;->g(Lcom/flurry/sdk/if;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1507
    iget-object p2, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {p2}, Lcom/flurry/sdk/if;->h(Lcom/flurry/sdk/if;)Z

    .line 1508
    iget-object p2, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    const-string v1, "flurry.session_start"

    invoke-static {p2, v1}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/if;Ljava/lang/String;)V

    .line 1512
    :cond_2
    iget-object p2, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {p2}, Lcom/flurry/sdk/if;->i(Lcom/flurry/sdk/if;)V

    :cond_3
    if-nez v5, :cond_5

    .line 1518
    iget-object p2, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {p2}, Lcom/flurry/sdk/if;->j(Lcom/flurry/sdk/if;)J

    move-result-wide v1

    const/4 p2, 0x1

    shl-long/2addr v1, p2

    const/16 p2, 0x1ad

    if-ne v0, p2, :cond_4

    const-string p2, "Retry-After"

    .line 1521
    invoke-virtual {p1, p2}, Lcom/flurry/sdk/kl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1522
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x0

    .line 1523
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1525
    invoke-static {}, Lcom/flurry/sdk/if;->d()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Server returned retry time: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p2, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1527
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v0, 0x3e8

    mul-long v1, p1, v0

    goto :goto_2

    .line 1529
    :catch_1
    invoke-static {}, Lcom/flurry/sdk/if;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Server returned nonsensical retry time"

    invoke-static {v3, p1, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1533
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/if;J)J

    .line 1535
    invoke-static {}, Lcom/flurry/sdk/if;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Proton config request failed, backing off: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {v0}, Lcom/flurry/sdk/if;->j(Lcom/flurry/sdk/if;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p1, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1536
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object p1

    iget-object p2, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {p2}, Lcom/flurry/sdk/if;->k(Lcom/flurry/sdk/if;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {v0}, Lcom/flurry/sdk/if;->j(Lcom/flurry/sdk/if;)J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/flurry/sdk/jr;->a(Ljava/lang/Runnable;J)V

    :cond_5
    return-void

    .line 1469
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/if;J)J

    return-void
.end method
