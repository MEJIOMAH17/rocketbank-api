.class final Lcom/flurry/sdk/in$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/in;->a([B)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/in;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/in;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/flurry/sdk/in$2;->a:Lcom/flurry/sdk/in;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kl;Ljava/lang/Object;)V
    .locals 2

    .line 2218
    iget p1, p1, Lcom/flurry/sdk/kn;->p:I

    if-lez p1, :cond_1

    const/16 p2, 0xc8

    const/4 v0, 0x3

    if-lt p1, p2, :cond_0

    const/16 p2, 0x12c

    if-ge p1, p2, :cond_0

    .line 1257
    invoke-static {}, Lcom/flurry/sdk/in;->c()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Pulse logging report sent successfully HTTP response:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1258
    iget-object p1, p0, Lcom/flurry/sdk/in$2;->a:Lcom/flurry/sdk/in;

    invoke-static {p1}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/in;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1259
    iget-object p1, p0, Lcom/flurry/sdk/in$2;->a:Lcom/flurry/sdk/in;

    invoke-static {p1}, Lcom/flurry/sdk/in;->b(Lcom/flurry/sdk/in;)Lcom/flurry/sdk/jy;

    move-result-object p1

    iget-object p2, p0, Lcom/flurry/sdk/in$2;->a:Lcom/flurry/sdk/in;

    invoke-static {p2}, Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/in;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Object;)V

    return-void

    .line 1261
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/in;->c()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Pulse logging report sent unsuccessfully, HTTP response:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1265
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/in;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Server Error: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
