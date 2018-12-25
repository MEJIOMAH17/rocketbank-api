.class public final Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;
.super Lru/rocketbank/r2d2/utils/ViewModelObservable;
.source "PenaltyChargePaymentDetailsFragment.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$Companion;


# instance fields
.field private final ctc:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

.field private final driver_licence:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

.field private iKnowNum:Ljava/lang/Boolean;

.field private final regexp:Ljava/util/regex/Pattern;

.field private final uin:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->Companion:Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$Companion;

    .line 143
    new-instance v0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$Companion$CREATOR$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 91
    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/ViewModelObservable;-><init>()V

    const-string v0, "^([0-9A-Za-z\u0410-\u042f\u0430-\u044f](?:.{19}|.{24}))$"

    .line 92
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "Pattern.compile(\"^([0-9A\u2026-\u042f\u0430-\u044f](?:.{19}|.{24}))$\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->regexp:Ljava/util/regex/Pattern;

    const-string v1, "ctc"

    .line 95
    new-instance v0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$1;-><init>(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "driver_licence"

    .line 96
    new-instance v0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$2;-><init>(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x1d

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v1, "uin"

    .line 97
    new-instance v0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$3;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel$3;-><init>(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x57

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/utils/ViewModelObservable;->putField$default(Lru/rocketbank/r2d2/utils/ViewModelObservable;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    .line 100
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->iKnowNum:Ljava/lang/Boolean;

    const-string v0, "ctc"

    .line 110
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->ctc:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v0, "driver_licence"

    .line 111
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->driver_licence:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    const-string v0, "uin"

    .line 112
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getField(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->uin:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;-><init>()V

    .line 125
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->ctc:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->driver_licence:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 127
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->uin:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    .line 128
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->setIKnowNum(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic access$getRegexp$p(Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;)Ljava/util/regex/Pattern;
    .locals 0

    .line 91
    iget-object p0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->regexp:Ljava/util/regex/Pattern;

    return-object p0
.end method


# virtual methods
.method public final check()V
    .locals 3

    .line 115
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getFields()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 116
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->iKnowNum:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 117
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->ctc:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_5

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->driver_licence:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_3
    if-ne v0, v1, :cond_6

    .line 118
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->uin:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 116
    :cond_5
    :goto_2
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->setValid(Z)V

    .line 120
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->getValidSubject()Lrx/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->isValid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_3

    .line 118
    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_7
    :goto_3
    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCtc()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 1
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->ctc:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getDriver_licence()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 1
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->driver_licence:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final getIKnowNum()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->iKnowNum:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getUin()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;
    .locals 1
    .annotation runtime Landroid/databinding/Bindable;
    .end annotation

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->uin:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    return-object v0
.end method

.method public final setIKnowNum(Ljava/lang/Boolean;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->iKnowNum:Ljava/lang/Boolean;

    const/16 p1, 0x2a

    .line 104
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->notifyPropertyChanged(I)V

    const/16 p1, 0x17

    .line 105
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->notifyPropertyChanged(I)V

    const/16 p1, 0x1d

    .line 106
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->notifyPropertyChanged(I)V

    const/16 p1, 0x57

    .line 107
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->notifyPropertyChanged(I)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 134
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->ctc:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

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

    .line 135
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->driver_licence:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

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

    .line 136
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->uin:Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object p2

    :cond_4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 137
    iget-object p2, p0, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeViewModel;->iKnowNum:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_6
    return-void
.end method
