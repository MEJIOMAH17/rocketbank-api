.class public final Lru/rocketbank/core/model/AccountDetailsModel;
.super Ljava/lang/Object;
.source "AccountDetailsModel.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/AccountDetailsModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountDetailsModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountDetailsModel.kt\nru/rocketbank/core/model/AccountDetailsModel\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,93:1\n7#2,4:94\n*E\n*S KotlinDebug\n*F\n+ 1 AccountDetailsModel.kt\nru/rocketbank/core/model/AccountDetailsModel\n*L\n91#1,4:94\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/AccountDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/AccountDetailsModel$Companion;


# instance fields
.field private account:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account"
    .end annotation
.end field

.field private bankName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank_name"
    .end annotation
.end field

.field private benefBank:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "benef_bank"
    .end annotation
.end field

.field private benefBankAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "benef_bank_address"
    .end annotation
.end field

.field private benefSwift:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "benef_swift"
    .end annotation
.end field

.field private bic:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bic"
    .end annotation
.end field

.field private corr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "corr"
    .end annotation
.end field

.field private corrSwift:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "corr_swift"
    .end annotation
.end field

.field private goal:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "goal"
    .end annotation
.end field

.field private inn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inn"
    .end annotation
.end field

.field private kpp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kpp"
    .end annotation
.end field

.field private ks:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ks"
    .end annotation
.end field

.field private owner:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "owner"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/AccountDetailsModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/AccountDetailsModel$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/AccountDetailsModel;->Companion:Lru/rocketbank/core/model/AccountDetailsModel$Companion;

    .line 94
    new-instance v0, Lru/rocketbank/core/model/AccountDetailsModel$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/AccountDetailsModel$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 97
    sput-object v0, Lru/rocketbank/core/model/AccountDetailsModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->bankName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->account:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->benefBank:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->benefBankAddress:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->benefSwift:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->bic:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->corr:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->corrSwift:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->goal:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->inn:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->kpp:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->ks:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/AccountDetailsModel;->owner:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAccount()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->account:Ljava/lang/String;

    return-object v0
.end method

.method public final getBankName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBenefBank()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->benefBank:Ljava/lang/String;

    return-object v0
.end method

.method public final getBenefBankAddress()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->benefBankAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getBenefSwift()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->benefSwift:Ljava/lang/String;

    return-object v0
.end method

.method public final getBic()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->bic:Ljava/lang/String;

    return-object v0
.end method

.method public final getCorr()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->corr:Ljava/lang/String;

    return-object v0
.end method

.method public final getCorrSwift()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->corrSwift:Ljava/lang/String;

    return-object v0
.end method

.method public final getGoal()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->goal:Ljava/lang/String;

    return-object v0
.end method

.method public final getInn()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->inn:Ljava/lang/String;

    return-object v0
.end method

.method public final getKpp()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->kpp:Ljava/lang/String;

    return-object v0
.end method

.method public final getKs()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->ks:Ljava/lang/String;

    return-object v0
.end method

.method public final getOwner()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lru/rocketbank/core/model/AccountDetailsModel;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccount(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/model/AccountDetailsModel;->account:Ljava/lang/String;

    return-void
.end method

.method public final setBankName(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lru/rocketbank/core/model/AccountDetailsModel;->bankName:Ljava/lang/String;

    return-void
.end method

.method public final setBenefBank(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/core/model/AccountDetailsModel;->benefBank:Ljava/lang/String;

    return-void
.end method

.method public final setBenefBankAddress(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lru/rocketbank/core/model/AccountDetailsModel;->benefBankAddress:Ljava/lang/String;

    return-void
.end method

.method public final setBenefSwift(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lru/rocketbank/core/model/AccountDetailsModel;->benefSwift:Ljava/lang/String;

    return-void
.end method

.method public final setBic(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lru/rocketbank/core/model/AccountDetailsModel;->bic:Ljava/lang/String;

    return-void
.end method

.method public final setCorr(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/core/model/AccountDetailsModel;->corr:Ljava/lang/String;

    return-void
.end method

.method public final setCorrSwift(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lru/rocketbank/core/model/AccountDetailsModel;->corrSwift:Ljava/lang/String;

    return-void
.end method

.method public final setGoal(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lru/rocketbank/core/model/AccountDetailsModel;->goal:Ljava/lang/String;

    return-void
.end method

.method public final setInn(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/core/model/AccountDetailsModel;->inn:Ljava/lang/String;

    return-void
.end method

.method public final setKpp(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/core/model/AccountDetailsModel;->kpp:Ljava/lang/String;

    return-void
.end method

.method public final setKs(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lru/rocketbank/core/model/AccountDetailsModel;->ks:Ljava/lang/String;

    return-void
.end method

.method public final setOwner(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lru/rocketbank/core/model/AccountDetailsModel;->owner:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lru/rocketbank/core/model/AccountDetailsModel;->bankName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lru/rocketbank/core/model/AccountDetailsModel;->account:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lru/rocketbank/core/model/AccountDetailsModel;->benefBank:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lru/rocketbank/core/model/AccountDetailsModel;->benefBankAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lru/rocketbank/core/model/AccountDetailsModel;->benefSwift:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Lru/rocketbank/core/model/AccountDetailsModel;->bic:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lru/rocketbank/core/model/AccountDetailsModel;->corr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lru/rocketbank/core/model/AccountDetailsModel;->corrSwift:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object p2, p0, Lru/rocketbank/core/model/AccountDetailsModel;->goal:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lru/rocketbank/core/model/AccountDetailsModel;->inn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lru/rocketbank/core/model/AccountDetailsModel;->kpp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, Lru/rocketbank/core/model/AccountDetailsModel;->ks:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lru/rocketbank/core/model/AccountDetailsModel;->owner:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
