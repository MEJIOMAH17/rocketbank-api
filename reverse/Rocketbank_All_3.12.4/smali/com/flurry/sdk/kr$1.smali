.class final Lcom/flurry/sdk/kr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ka<",
        "Lcom/flurry/sdk/jj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kr;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/flurry/sdk/kr$1;->a:Lcom/flurry/sdk/kr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/jz;)V
    .locals 3

    .line 42
    check-cast p1, Lcom/flurry/sdk/jj;

    .line 1045
    iget-object v0, p0, Lcom/flurry/sdk/kr$1;->a:Lcom/flurry/sdk/kr;

    iget-object v0, v0, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNetworkStateChanged : isNetworkEnable = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p1, Lcom/flurry/sdk/jj;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-boolean p1, p1, Lcom/flurry/sdk/jj;->a:Z

    if-eqz p1, :cond_0

    .line 1047
    iget-object p1, p0, Lcom/flurry/sdk/kr$1;->a:Lcom/flurry/sdk/kr;

    .line 1121
    invoke-virtual {p1}, Lcom/flurry/sdk/kr;->b()V

    :cond_0
    return-void
.end method
