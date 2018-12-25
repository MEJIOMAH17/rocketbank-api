.class public final Lcom/google/maps/android/R$layout;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/pay/google/UiTapAndPay;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lru/rocketbank/core/dagger/AndroidModule;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/dagger/AndroidModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/dagger/AndroidModule;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;)V"
        }
    .end annotation

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    iput-object p1, p0, Lcom/google/maps/android/R$layout;->module:Lru/rocketbank/core/dagger/AndroidModule;

    .line 1018
    iput-object p2, p0, Lcom/google/maps/android/R$layout;->clientProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .line 2023
    iget-object v0, p0, Lcom/google/maps/android/R$layout;->module:Lru/rocketbank/core/dagger/AndroidModule;

    iget-object v1, p0, Lcom/google/maps/android/R$layout;->clientProvider:Ljavax/inject/Provider;

    .line 2024
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/dagger/AndroidModule;->provideAndroidTapAndPay(Lcom/google/android/gms/common/api/GoogleApiClient;)Lru/rocketbank/core/pay/google/UiTapAndPay;

    move-result-object v0

    .line 2023
    check-cast v0, Lru/rocketbank/core/pay/google/UiTapAndPay;

    return-object v0
.end method
