.class final Lcom/flurry/sdk/ji$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ka<",
        "Lcom/flurry/sdk/ll;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ji;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ji;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/flurry/sdk/ji$1;->a:Lcom/flurry/sdk/ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/jz;)V
    .locals 4

    .line 1066
    iget-object p1, p0, Lcom/flurry/sdk/ji$1;->a:Lcom/flurry/sdk/ji;

    invoke-static {p1}, Lcom/flurry/sdk/ji;->a(Lcom/flurry/sdk/ji;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/flurry/sdk/ji$1;->a:Lcom/flurry/sdk/ji;

    invoke-static {p1}, Lcom/flurry/sdk/ji;->a(Lcom/flurry/sdk/ji;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x4

    .line 1067
    invoke-static {}, Lcom/flurry/sdk/ji;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No location received in 90 seconds , stopping LocationManager"

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object p1, p0, Lcom/flurry/sdk/ji$1;->a:Lcom/flurry/sdk/ji;

    invoke-static {p1}, Lcom/flurry/sdk/ji;->b(Lcom/flurry/sdk/ji;)V

    :cond_0
    return-void
.end method
