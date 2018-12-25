.class public interface abstract Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;
.super Ljava/lang/Object;
.source "OperationContract.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/operation/OperationActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/operation/OperationContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract buildMonth(Ljava/util/Calendar;Ljava/util/Calendar;F)Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticItem;
.end method

.method public abstract cancelOutOperation()V
.end method

.method public abstract compensate()V
.end method

.method public abstract confirm()V
.end method

.method public abstract decline()V
.end method

.method public abstract hideKeyboard()V
.end method

.method public abstract onStart(Lru/rocketbank/r2d2/root/operation/OperationDataUpdateListener;)V
.end method

.method public abstract onStop()V
.end method

.method public abstract refresh()V
.end method

.method public abstract requestOperationDetail()V
.end method

.method public abstract saveOperationComment(Ljava/lang/String;)V
.end method

.method public abstract scrollToPosition(I)V
.end method

.method public abstract updateMoney()V
.end method

.method public abstract updateMoneyState(Z)V
.end method

.method public abstract updateRocketMoneyState(Z)V
.end method
