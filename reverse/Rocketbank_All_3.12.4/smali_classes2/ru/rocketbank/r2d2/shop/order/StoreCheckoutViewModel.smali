.class public final Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;
.super Lru/rocketbank/r2d2/utils/ViewModelObservable;
.source "ShopOrderActivity.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$AddressAdapter;,
        Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$Companion;


# instance fields
.field private final address:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

.field private addressIsValid:Z

.field private final comment:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

.field private final price:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->Companion:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$Companion;

    .line 201
    new-instance v0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .line 168
    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/ViewModelObservable;-><init>()V

    const-string v1, "address"

    .line 176
    new-instance v0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$1;-><init>(Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v8, "comment"

    .line 177
    sget-object v0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$2;->INSTANCE:Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel$2;

    move-object v11, v0

    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/16 v9, 0x12

    const/4 v10, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v13}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "price"

    const/16 v2, 0x40

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, p0

    .line 178
    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v0, "address"

    .line 181
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->address:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v0, "comment"

    .line 182
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->comment:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v0, "price"

    .line 183
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->price:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;-><init>()V

    .line 186
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->address:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->comment:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 188
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->price:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAddress()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 1
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .line 181
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->address:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getAddressIsValid()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->addressIsValid:Z

    return v0
.end method

.method public final getComment()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 1
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .line 182
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->comment:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getPrice()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 1
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .line 183
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->price:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final setAddressIsValid(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->addressIsValid:Z

    const/4 p1, 0x3

    .line 172
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->notifyPropertyChanged(I)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 194
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->address:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_3

    .line 195
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->comment:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_5

    .line 196
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/order/StoreCheckoutViewModel;->price:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object p2

    :cond_4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_5
    return-void
.end method
