.class public final Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;
.super Lru/rocketbank/r2d2/utils/ViewModelObservable;
.source "TaxChargePaymentDetailsFragment.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel$Companion;
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

.field public static final Companion:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel$Companion;


# instance fields
.field private final inn:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->Companion:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel$Companion;

    .line 108
    new-instance v0, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 90
    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/ViewModelObservable;-><init>()V

    const-string v1, "inn"

    .line 92
    sget-object v0, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel$1;->INSTANCE:Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v0, "inn"

    .line 95
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->inn:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;-><init>()V

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->inn:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 1
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->inn:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_1

    .line 104
    iget-object p2, p0, Lru/rocketbank/r2d2/charges/tax/TaxChargeViewModel;->inn:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    return-void
.end method
