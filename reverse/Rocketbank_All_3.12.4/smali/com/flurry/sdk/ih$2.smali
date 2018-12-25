.class final Lcom/flurry/sdk/ih$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ih;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kl$a<",
        "[B",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ii;

.field final synthetic b:Lcom/flurry/sdk/ij;

.field final synthetic c:Lcom/flurry/sdk/ih;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ii;Lcom/flurry/sdk/ij;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/flurry/sdk/ih$2;->c:Lcom/flurry/sdk/ih;

    iput-object p2, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    iput-object p3, p0, Lcom/flurry/sdk/ih$2;->b:Lcom/flurry/sdk/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kl;Ljava/lang/Object;)V
    .locals 10

    .line 118
    check-cast p2, Ljava/lang/String;

    .line 1121
    invoke-static {}, Lcom/flurry/sdk/ih;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pulse report to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    .line 2116
    iget-object v2, v2, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 1121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    .line 2124
    iget-object v2, v2, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 3084
    iget-object v2, v2, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 1122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", HTTP status code is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3218
    iget v2, p1, Lcom/flurry/sdk/kn;->p:I

    .line 1123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 1121
    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4218
    iget v0, p1, Lcom/flurry/sdk/kn;->p:I

    .line 1127
    iget-object v1, p0, Lcom/flurry/sdk/ih$2;->b:Lcom/flurry/sdk/ij;

    .line 5149
    iget-wide v3, p1, Lcom/flurry/sdk/kn;->n:J

    long-to-int v3, v3

    if-gez v3, :cond_0

    .line 6062
    iget-wide v3, v1, Lcom/flurry/sdk/ij;->k:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    .line 6063
    iput-wide v5, v1, Lcom/flurry/sdk/ij;->k:J

    goto :goto_0

    .line 6067
    :cond_0
    iget-wide v4, v1, Lcom/flurry/sdk/ij;->k:J

    int-to-long v6, v3

    add-long v8, v4, v6

    iput-wide v8, v1, Lcom/flurry/sdk/ij;->k:J

    .line 1128
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/flurry/sdk/ih$2;->b:Lcom/flurry/sdk/ij;

    iput v0, v1, Lcom/flurry/sdk/ij;->e:I

    .line 1131
    invoke-virtual {p1}, Lcom/flurry/sdk/kl;->c()Z

    move-result v1

    if-nez v1, :cond_7

    .line 6226
    iget-object v0, p1, Lcom/flurry/sdk/kn;->o:Ljava/lang/Exception;

    .line 7180
    iget-object v1, p1, Lcom/flurry/sdk/kn;->o:Ljava/lang/Exception;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 7181
    iget-object v1, p1, Lcom/flurry/sdk/kn;->o:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v4

    .line 7186
    :goto_1
    iget-boolean v5, p1, Lcom/flurry/sdk/kn;->t:Z

    if-nez v5, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :cond_4
    :goto_2
    if-eqz v3, :cond_6

    .line 1136
    invoke-virtual {p1}, Lcom/flurry/sdk/kl;->e()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1137
    invoke-static {}, Lcom/flurry/sdk/ih;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timeout occured when trying to connect to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    .line 8116
    iget-object v1, v1, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 1137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8226
    iget-object p1, p1, Lcom/flurry/sdk/kn;->o:Ljava/lang/Exception;

    .line 1138
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1137
    invoke-static {v2, p2, p1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1142
    :cond_5
    invoke-static {}, Lcom/flurry/sdk/ih;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Manually managed http request timeout occured for: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    .line 9116
    iget-object v0, v0, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 1143
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1142
    invoke-static {v2, p1, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1146
    :goto_3
    iget-object p1, p0, Lcom/flurry/sdk/ih$2;->c:Lcom/flurry/sdk/ih;

    iget-object p2, p0, Lcom/flurry/sdk/ih$2;->b:Lcom/flurry/sdk/ij;

    iget-object v0, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/ih;->a(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;)V

    return-void

    .line 1149
    :cond_6
    invoke-static {}, Lcom/flurry/sdk/ih;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error occured when trying to connect to: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    .line 10116
    iget-object v3, v3, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 1149
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    invoke-static {v2, p1, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-object p1, p0, Lcom/flurry/sdk/ih$2;->c:Lcom/flurry/sdk/ih;

    iget-object v0, p0, Lcom/flurry/sdk/ih$2;->b:Lcom/flurry/sdk/ij;

    iget-object v1, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    invoke-static {p1, v0, v1, p2}, Lcom/flurry/sdk/ih;->a(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;Ljava/lang/String;)V

    return-void

    :cond_7
    const/16 v1, 0xc8

    const/16 v3, 0x12c

    if-lt v0, v1, :cond_8

    if-ge v0, v3, :cond_8

    .line 1160
    iget-object p1, p0, Lcom/flurry/sdk/ih$2;->c:Lcom/flurry/sdk/ih;

    iget-object p2, p0, Lcom/flurry/sdk/ih$2;->b:Lcom/flurry/sdk/ij;

    iget-object v0, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/ih;->b(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;)V

    return-void

    :cond_8
    if-lt v0, v3, :cond_9

    const/16 v1, 0x190

    if-ge v0, v1, :cond_9

    .line 1165
    iget-object p2, p0, Lcom/flurry/sdk/ih$2;->c:Lcom/flurry/sdk/ih;

    iget-object v0, p0, Lcom/flurry/sdk/ih$2;->b:Lcom/flurry/sdk/ij;

    iget-object v1, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    invoke-static {p2, v0, v1, p1}, Lcom/flurry/sdk/ih;->a(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;Lcom/flurry/sdk/kl;)V

    return-void

    .line 1170
    :cond_9
    invoke-static {}, Lcom/flurry/sdk/ih;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    .line 10124
    iget-object v1, v1, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 11084
    iget-object v1, v1, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 1170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " report failed sending to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    .line 11116
    iget-object v1, v1, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 1171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-static {v2, p1, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object p1, p0, Lcom/flurry/sdk/ih$2;->c:Lcom/flurry/sdk/ih;

    iget-object v0, p0, Lcom/flurry/sdk/ih$2;->b:Lcom/flurry/sdk/ij;

    iget-object v1, p0, Lcom/flurry/sdk/ih$2;->a:Lcom/flurry/sdk/ii;

    invoke-static {p1, v0, v1, p2}, Lcom/flurry/sdk/ih;->a(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;Ljava/lang/String;)V

    return-void
.end method
