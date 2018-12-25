.class public interface abstract Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;
.super Ljava/lang/Object;
.source "IPaymentFieldWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;
    }
.end annotation


# virtual methods
.method public abstract clearError()V
.end method

.method public abstract getParameterValue()Ljava/lang/String;
.end method

.method public abstract isValid()Z
.end method

.method public abstract setError(Ljava/lang/String;)V
.end method

.method public abstract setOnPaymentFieldChangedListener(Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;)V
.end method

.method public abstract setValue(Ljava/lang/String;)V
.end method

.method public abstract showKeyboard()V
.end method
