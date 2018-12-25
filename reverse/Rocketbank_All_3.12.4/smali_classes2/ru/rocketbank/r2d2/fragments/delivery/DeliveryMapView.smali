.class public interface abstract Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView;
.super Ljava/lang/Object;
.source "DeliveryMapView.kt"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;
.implements Lru/rocketbank/r2d2/fragments/delivery/MapViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapView$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract initMap()V
.end method

.method public abstract onLocationChecked()V
.end method

.method public abstract onLocationNotChecked()V
.end method

.method public abstract selectDate()V
.end method

.method public abstract setAddressStatus()V
.end method

.method public abstract setCommentStatus()V
.end method

.method public abstract showAddressError()V
.end method

.method public abstract showSelectedAddress(Ljava/lang/String;)V
.end method

.method public abstract updateAddress(Ljava/lang/String;Z)V
.end method

.method public abstract updateAddressesList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/yandex/maps/GeoObject;",
            ">;)V"
        }
    .end annotation
.end method
