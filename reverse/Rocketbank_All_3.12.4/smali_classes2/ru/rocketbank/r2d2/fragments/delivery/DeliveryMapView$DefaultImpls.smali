.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView$DefaultImpls;
.super Ljava/lang/Object;
.source "DeliveryMapView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static bridge synthetic updateAddress$default(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    if-eqz p4, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateAddress"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 12
    :cond_1
    invoke-interface {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;->updateAddress(Ljava/lang/String;Z)V

    return-void
.end method
