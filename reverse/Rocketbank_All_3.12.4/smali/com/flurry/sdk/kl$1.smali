.class final Lcom/flurry/sdk/kl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kn$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kl;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kl;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/flurry/sdk/kl$1;->a:Lcom/flurry/sdk/kl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/kn;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/flurry/sdk/kl$1;->a:Lcom/flurry/sdk/kl;

    invoke-static {p1}, Lcom/flurry/sdk/kl;->d(Lcom/flurry/sdk/kl;)V

    return-void
.end method

.method public final a(Lcom/flurry/sdk/kn;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Lcom/flurry/sdk/kn;->d()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/flurry/sdk/kl$1;->a:Lcom/flurry/sdk/kl;

    invoke-static {p1}, Lcom/flurry/sdk/kl;->c(Lcom/flurry/sdk/kl;)Lcom/flurry/sdk/kz;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/flurry/sdk/kl$1;->a:Lcom/flurry/sdk/kl;

    iget-object v0, p0, Lcom/flurry/sdk/kl$1;->a:Lcom/flurry/sdk/kl;

    invoke-static {v0}, Lcom/flurry/sdk/kl;->c(Lcom/flurry/sdk/kl;)Lcom/flurry/sdk/kz;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/flurry/sdk/kz;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flurry/sdk/kl;->a(Lcom/flurry/sdk/kl;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/flurry/sdk/kl$1;->a:Lcom/flurry/sdk/kl;

    invoke-static {v0}, Lcom/flurry/sdk/kl;->a(Lcom/flurry/sdk/kl;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/kl$1;->a:Lcom/flurry/sdk/kl;

    invoke-static {v0}, Lcom/flurry/sdk/kl;->b(Lcom/flurry/sdk/kl;)Lcom/flurry/sdk/kz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/flurry/sdk/kl$1;->a:Lcom/flurry/sdk/kl;

    invoke-static {v0}, Lcom/flurry/sdk/kl;->b(Lcom/flurry/sdk/kl;)Lcom/flurry/sdk/kz;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/kl$1;->a:Lcom/flurry/sdk/kl;

    invoke-static {v1}, Lcom/flurry/sdk/kl;->a(Lcom/flurry/sdk/kl;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/flurry/sdk/kz;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
