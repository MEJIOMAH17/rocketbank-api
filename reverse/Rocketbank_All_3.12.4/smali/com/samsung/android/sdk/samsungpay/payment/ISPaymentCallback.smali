.class public interface abstract Lcom/samsung/android/sdk/samsungpay/payment/ISPaymentCallback;
.super Ljava/lang/Object;
.source "ISPaymentCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsungpay/payment/ISPaymentCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAddressInfoChanged(Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onApproveTransaction(Lcom/samsung/android/sdk/samsungpay/payment/PaymentInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCardInfoChanged(Lcom/samsung/android/sdk/samsungpay/payment/CardInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFailPayment(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onInitiateCompleted(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
