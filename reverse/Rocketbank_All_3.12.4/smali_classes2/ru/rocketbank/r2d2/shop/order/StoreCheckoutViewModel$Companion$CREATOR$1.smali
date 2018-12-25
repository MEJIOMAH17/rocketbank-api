.class public final Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "ShopOrderActivity.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    move-result-object p1

    return-object p1
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$Companion$CREATOR$1;->newArray(I)[Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;
    .locals 0

    .line 203
    new-array p1, p1, [Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;

    return-object p1
.end method
