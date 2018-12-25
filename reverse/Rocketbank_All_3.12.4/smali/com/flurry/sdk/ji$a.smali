.class final Lcom/flurry/sdk/ji$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ji;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ji;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/flurry/sdk/ji$a;->a:Lcom/flurry/sdk/ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/flurry/sdk/ji$a;->a:Lcom/flurry/sdk/ji;

    invoke-static {v0, p1}, Lcom/flurry/sdk/ji;->a(Lcom/flurry/sdk/ji;Landroid/location/Location;)Landroid/location/Location;

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/flurry/sdk/ji$a;->a:Lcom/flurry/sdk/ji;

    invoke-static {p1}, Lcom/flurry/sdk/ji;->c(Lcom/flurry/sdk/ji;)I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    const/4 p1, 0x4

    .line 275
    invoke-static {}, Lcom/flurry/sdk/ji;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Max location reports reached, stopping"

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/flurry/sdk/ji$a;->a:Lcom/flurry/sdk/ji;

    invoke-static {p1}, Lcom/flurry/sdk/ji;->b(Lcom/flurry/sdk/ji;)V

    :cond_1
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
