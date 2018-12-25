.class public final Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;
.super Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;
.source "BudgetData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/transfers/bank/BudgetRemittance$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBudgetData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BudgetData.kt\nru/rocketbank/core/model/transfers/bank/BudgetRemittance\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,71:1\n7#2,4:72\n*E\n*S KotlinDebug\n*F\n+ 1 BudgetData.kt\nru/rocketbank/core/model/transfers/bank/BudgetRemittance\n*L\n68#1,4:72\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/transfers/bank/BudgetRemittance$Companion;


# instance fields
.field private drawer_status:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private inn_from:Ljava/lang/String;

.field private kbk:Ljava/lang/String;

.field private oktmo:Ljava/lang/String;

.field private tax_basis:Ljava/lang/String;

.field private tax_inn:Ljava/lang/String;

.field private tax_period:Ljava/lang/String;

.field private tax_period_kind:Ljava/lang/String;

.field private uin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->Companion:Lru/rocketbank/core/model/transfers/bank/BudgetRemittance$Companion;

    .line 72
    new-instance v0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 75
    sput-object v0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;-><init>(Landroid/os/Parcel;)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->inn_from:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->kbk:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->uin:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->oktmo:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->drawer_status:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_inn:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_basis:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_period:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_period_kind:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->from:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDrawer_status()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->drawer_status:Ljava/lang/String;

    return-object v0
.end method

.method public final getFrom()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->from:Ljava/lang/String;

    return-object v0
.end method

.method public final getInn_from()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->inn_from:Ljava/lang/String;

    return-object v0
.end method

.method public final getKbk()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->kbk:Ljava/lang/String;

    return-object v0
.end method

.method public final getOktmo()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->oktmo:Ljava/lang/String;

    return-object v0
.end method

.method public final getTax_basis()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_basis:Ljava/lang/String;

    return-object v0
.end method

.method public final getTax_inn()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_inn:Ljava/lang/String;

    return-object v0
.end method

.method public final getTax_period()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_period:Ljava/lang/String;

    return-object v0
.end method

.method public final getTax_period_kind()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_period_kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getUin()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->uin:Ljava/lang/String;

    return-object v0
.end method

.method public final setDrawer_status(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->drawer_status:Ljava/lang/String;

    return-void
.end method

.method public final setFrom(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->from:Ljava/lang/String;

    return-void
.end method

.method public final setInn_from(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->inn_from:Ljava/lang/String;

    return-void
.end method

.method public final setKbk(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->kbk:Ljava/lang/String;

    return-void
.end method

.method public final setOktmo(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->oktmo:Ljava/lang/String;

    return-void
.end method

.method public final setTax_basis(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_basis:Ljava/lang/String;

    return-void
.end method

.method public final setTax_inn(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_inn:Ljava/lang/String;

    return-void
.end method

.method public final setTax_period(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_period:Ljava/lang/String;

    return-void
.end method

.method public final setTax_period_kind(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_period_kind:Ljava/lang/String;

    return-void
.end method

.method public final setUin(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->uin:Ljava/lang/String;

    return-void
.end method

.method public final toRemittanceOutgoing(Lru/rocketbank/core/model/transfers/bank/RecipientType;)Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;
    .locals 3

    const-string v0, "recipientType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance p1, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;

    move-object v0, p0

    check-cast v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    invoke-direct {p1, v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;-><init>(Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;)V

    .line 26
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "inn_from"

    iget-object v2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->inn_from:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "kbk"

    iget-object v2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->kbk:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "uin"

    iget-object v2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->uin:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "oktmo"

    iget-object v2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->oktmo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "drawer_status"

    iget-object v2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->drawer_status:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "tax_inn"

    iget-object v2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_inn:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "tax_basis"

    iget-object v2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_basis:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "tax_period"

    iget-object v2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_period:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "tax_period_kind"

    iget-object v2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_period_kind:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->budget:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    invoke-virtual {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->setRemittance_kind(Ljava/lang/String;)V

    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->inn_from:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->kbk:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->uin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->oktmo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->drawer_status:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_inn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_basis:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_period:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->tax_period_kind:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;->from:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
