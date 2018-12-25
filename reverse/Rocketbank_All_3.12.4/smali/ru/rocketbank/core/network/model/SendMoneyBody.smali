.class public final Lru/rocketbank/core/network/model/SendMoneyBody;
.super Ljava/lang/Object;
.source "SendMoneyBody.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/SendMoneyBody$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSendMoneyBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SendMoneyBody.kt\nru/rocketbank/core/network/model/SendMoneyBody\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,56:1\n7#2,4:57\n*E\n*S KotlinDebug\n*F\n+ 1 SendMoneyBody.kt\nru/rocketbank/core/network/model/SendMoneyBody\n*L\n53#1,4:57\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/network/model/SendMoneyBody;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/network/model/SendMoneyBody$Companion;


# instance fields
.field private amount:D

.field private hash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_uniq_timestamp_hash"
    .end annotation
.end field

.field private linkedCardId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linked_card_id"
    .end annotation
.end field

.field private sourceCard:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_card"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/network/model/SendMoneyBody$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/network/model/SendMoneyBody$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/network/model/SendMoneyBody;->Companion:Lru/rocketbank/core/network/model/SendMoneyBody$Companion;

    .line 57
    new-instance v0, Lru/rocketbank/core/network/model/SendMoneyBody$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/SendMoneyBody$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 60
    sput-object v0, Lru/rocketbank/core/network/model/SendMoneyBody;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lru/rocketbank/core/utils/Payments;->INSTANCE:Lru/rocketbank/core/utils/Payments;

    invoke-virtual {v0}, Lru/rocketbank/core/utils/Payments;->newHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/SendMoneyBody;->hash:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lru/rocketbank/core/utils/Payments;->INSTANCE:Lru/rocketbank/core/utils/Payments;

    invoke-virtual {v0}, Lru/rocketbank/core/utils/Payments;->newHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/SendMoneyBody;->hash:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/network/model/SendMoneyBody;->amount:D

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/SendMoneyBody;->sourceCard:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/network/model/SendMoneyBody;->linkedCardId:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/network/model/SendMoneyBody;->hash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAmount()D
    .locals 2

    .line 15
    iget-wide v0, p0, Lru/rocketbank/core/network/model/SendMoneyBody;->amount:D

    return-wide v0
.end method

.method public final getLinkedCardId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/network/model/SendMoneyBody;->linkedCardId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceCard()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/network/model/SendMoneyBody;->sourceCard:Ljava/lang/String;

    return-object v0
.end method

.method public final setAmount(D)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lru/rocketbank/core/network/model/SendMoneyBody;->amount:D

    return-void
.end method

.method public final setLinkedCardId(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lru/rocketbank/core/network/model/SendMoneyBody;->linkedCardId:Ljava/lang/String;

    return-void
.end method

.method public final setSourceCard(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/network/model/SendMoneyBody;->sourceCard:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-wide v0, p0, Lru/rocketbank/core/network/model/SendMoneyBody;->amount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 45
    iget-object p2, p0, Lru/rocketbank/core/network/model/SendMoneyBody;->sourceCard:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lru/rocketbank/core/network/model/SendMoneyBody;->linkedCardId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lru/rocketbank/core/network/model/SendMoneyBody;->hash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
