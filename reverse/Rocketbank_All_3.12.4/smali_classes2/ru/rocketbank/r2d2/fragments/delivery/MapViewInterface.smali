.class public interface abstract Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;
.super Ljava/lang/Object;
.source "MapViewInterface.kt"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/delivery/DeliveryView;


# virtual methods
.method public abstract checkPermissions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showToast(I)V
.end method

.method public abstract showToast(Ljava/lang/String;)V
.end method
