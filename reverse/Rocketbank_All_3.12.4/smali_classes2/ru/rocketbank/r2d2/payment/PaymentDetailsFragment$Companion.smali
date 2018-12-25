.class public final Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$Companion;
.super Ljava/lang/Object;
.source "PaymentDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 402
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lru/rocketbank/core/model/provider/Provider;Lru/rocketbank/core/model/transfers/Template;Landroid/os/Bundle;)Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;
    .locals 2

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    new-instance v0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;-><init>()V

    .line 409
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 410
    invoke-virtual {v1, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string p3, "payment_provider"

    .line 411
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v1, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p2, :cond_0

    const-string p1, "payment"

    .line 414
    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 417
    :cond_0
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
