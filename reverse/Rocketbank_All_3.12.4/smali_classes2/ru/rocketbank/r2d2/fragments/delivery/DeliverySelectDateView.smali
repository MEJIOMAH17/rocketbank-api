.class public interface abstract Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;
.super Ljava/lang/Object;
.source "DeliverySelectDateView.kt"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/delivery/DeliveryView;


# virtual methods
.method public abstract intervalsLoaded(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/delivery/Interval;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract nextStep()V
.end method

.method public abstract setUpCalendar(Ljava/util/Calendar;)V
.end method

.method public abstract showNearestDayAndTime(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/delivery/Interval;",
            ">;)V"
        }
    .end annotation
.end method
