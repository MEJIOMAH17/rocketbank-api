.class public final Lru/rocketbank/core/model/dto/operations/Operation;
.super Lru/rocketbank/core/model/AbstractOperation;
.source "Operation.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;,
        Lru/rocketbank/core/model/dto/operations/Operation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nru/rocketbank/core/model/dto/operations/Operation\n+ 2 ParcelableUtils.kt\nru/rocketbank/core/utils/ParcelableUtilsKt\n*L\n1#1,153:1\n7#2,4:154\n*E\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nru/rocketbank/core/model/dto/operations/Operation\n*L\n23#1,4:154\n*E\n"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/operations/Operation;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lru/rocketbank/core/model/dto/operations/Operation$Companion;

.field public static final STATUS_PENDING_VISIBLE:Ljava/lang/String; = "pending_visible"


# instance fields
.field private analytics:Lru/rocketbank/core/model/dto/operations/OperationAnalytics;

.field private category:Lru/rocketbank/core/model/dto/operations/OperationCategory;

.field private comment:Ljava/lang/String;

.field private compensation_status:Ljava/lang/String;

.field private contextType:Lru/rocketbank/core/network/model/operation/OperationContextType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "context_type"
    .end annotation
.end field

.field private cover:Lru/rocketbank/core/model/Image;

.field private declineReason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "decline_reason"
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private details:Ljava/lang/String;

.field private displayMoney:Lru/rocketbank/core/model/MoneyData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_money"
    .end annotation
.end field

.field private exchangeDetails:Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "exchange_details"
    .end annotation
.end field

.field private friend:Lru/rocketbank/core/model/dto/operations/Friend;

.field private friendTransferType:Lru/rocketbank/core/network/model/operation/FriendRequestType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friend_transfer_type"
    .end annotation
.end field

.field private isHasReceipt:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_receipt"
    .end annotation
.end field

.field private linkedCard:Lru/rocketbank/core/model/card/LinkedCard;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linked_card"
    .end annotation
.end field

.field private location:Lru/rocketbank/core/model/dto/operations/Location;

.field private merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

.field private miles:Lru/rocketbank/core/model/dto/operations/Miles;

.field private mimimiles:D

.field private money:Lru/rocketbank/core/model/MoneyData;

.field private parent_operation:Lru/rocketbank/core/model/dto/operations/Operation;

.field private payment:Lru/rocketbank/core/model/payments/Payment;

.field private receiptUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "receipt_url"
    .end annotation
.end field

.field private shopItems:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shop_items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/ContextShopItem;",
            ">;"
        }
    .end annotation
.end field

.field private sputnik:Ljava/lang/Boolean;

.field private status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/dto/operations/Operation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/dto/operations/Operation$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/dto/operations/Operation;->Companion:Lru/rocketbank/core/model/dto/operations/Operation$Companion;

    .line 154
    new-instance v0, Lru/rocketbank/core/model/dto/operations/Operation$$special$$inlined$createParcel$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/operations/Operation$$special$$inlined$createParcel$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 157
    sput-object v0, Lru/rocketbank/core/model/dto/operations/Operation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lru/rocketbank/core/model/AbstractOperation;-><init>()V

    .line 33
    sget-object v0, Lru/rocketbank/core/network/model/operation/FriendRequestType;->None:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->friendTransferType:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    .line 63
    sget-object v0, Lru/rocketbank/core/network/model/operation/OperationContextType;->None:Lru/rocketbank/core/network/model/operation/OperationContextType;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->contextType:Lru/rocketbank/core/network/model/operation/OperationContextType;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1}, Lru/rocketbank/core/model/AbstractOperation;-><init>(Landroid/os/Parcel;)V

    .line 33
    sget-object v0, Lru/rocketbank/core/network/model/operation/FriendRequestType;->None:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->friendTransferType:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    .line 63
    sget-object v0, Lru/rocketbank/core/network/model/operation/OperationContextType;->None:Lru/rocketbank/core/network/model/operation/OperationContextType;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->contextType:Lru/rocketbank/core/network/model/operation/OperationContextType;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->status:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->comment:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->details:Ljava/lang/String;

    .line 83
    const-class v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/OperationAnalytics;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->analytics:Lru/rocketbank/core/model/dto/operations/OperationAnalytics;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->mimimiles:D

    .line 85
    const-class v0, Lru/rocketbank/core/model/MoneyData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/MoneyData;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->displayMoney:Lru/rocketbank/core/model/MoneyData;

    .line 86
    const-class v0, Lru/rocketbank/core/model/MoneyData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/MoneyData;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->money:Lru/rocketbank/core/model/MoneyData;

    .line 87
    const-class v0, Lru/rocketbank/core/model/dto/operations/OperationCategory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/OperationCategory;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->category:Lru/rocketbank/core/model/dto/operations/OperationCategory;

    .line 88
    const-class v0, Lru/rocketbank/core/model/dto/operations/Merchant;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/Merchant;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "`in`.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lru/rocketbank/core/network/model/operation/FriendRequestType;->valueOf(Ljava/lang/String;)Lru/rocketbank/core/network/model/operation/FriendRequestType;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->friendTransferType:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    .line 90
    const-class v0, Lru/rocketbank/core/model/dto/operations/Miles;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/Miles;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->miles:Lru/rocketbank/core/model/dto/operations/Miles;

    .line 91
    const-class v0, Lru/rocketbank/core/model/dto/operations/Friend;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/Friend;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->friend:Lru/rocketbank/core/model/dto/operations/Friend;

    .line 92
    const-class v0, Lru/rocketbank/core/model/dto/operations/Location;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/Location;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->location:Lru/rocketbank/core/model/dto/operations/Location;

    .line 93
    const-class v0, Lru/rocketbank/core/model/payments/Payment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/payments/Payment;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->payment:Lru/rocketbank/core/model/payments/Payment;

    .line 94
    const-class v0, Lru/rocketbank/core/model/Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/Image;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->cover:Lru/rocketbank/core/model/Image;

    .line 95
    const-class v0, Lru/rocketbank/core/model/card/LinkedCard;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/card/LinkedCard;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->linkedCard:Lru/rocketbank/core/model/card/LinkedCard;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "`in`.readString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lru/rocketbank/core/network/model/operation/OperationContextType;->valueOf(Ljava/lang/String;)Lru/rocketbank/core/network/model/operation/OperationContextType;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->contextType:Lru/rocketbank/core/network/model/operation/OperationContextType;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lru/rocketbank/core/model/dto/operations/Operation;->setHasReceipt(Z)V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->receiptUrl:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->declineReason:Ljava/lang/String;

    .line 100
    const-class v0, Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/Operation;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->parent_operation:Lru/rocketbank/core/model/dto/operations/Operation;

    .line 101
    sget-object v0, Lru/rocketbank/core/network/model/ContextShopItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->shopItems:Ljava/util/List;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 105
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 104
    :pswitch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :pswitch_1
    const/4 p1, 0x0

    .line 102
    :goto_1
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->sputnik:Ljava/lang/Boolean;

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getAnalytics()Lru/rocketbank/core/model/dto/operations/OperationAnalytics;
    .locals 1

    .line 29
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->analytics:Lru/rocketbank/core/model/dto/operations/OperationAnalytics;

    return-object v0
.end method

.method public final getCategory()Lru/rocketbank/core/model/dto/operations/OperationCategory;
    .locals 1

    .line 54
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->category:Lru/rocketbank/core/model/dto/operations/OperationCategory;

    return-object v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getCompensation_status()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->compensation_status:Ljava/lang/String;

    return-object v0
.end method

.method public final getContextType()Lru/rocketbank/core/network/model/operation/OperationContextType;
    .locals 1

    .line 63
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->contextType:Lru/rocketbank/core/network/model/operation/OperationContextType;

    return-object v0
.end method

.method public final getCover()Lru/rocketbank/core/model/Image;
    .locals 1

    .line 60
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->cover:Lru/rocketbank/core/model/Image;

    return-object v0
.end method

.method public final getDeclineReason()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->declineReason:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDetails()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->details:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayMoney()Lru/rocketbank/core/model/MoneyData;
    .locals 1

    .line 50
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->displayMoney:Lru/rocketbank/core/model/MoneyData;

    return-object v0
.end method

.method public final getExchangeDetails()Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;
    .locals 1

    .line 75
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->exchangeDetails:Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;

    return-object v0
.end method

.method public final getFriend()Lru/rocketbank/core/model/dto/operations/Friend;
    .locals 1

    .line 35
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->friend:Lru/rocketbank/core/model/dto/operations/Friend;

    return-object v0
.end method

.method public final getFriendTransferType()Lru/rocketbank/core/network/model/operation/FriendRequestType;
    .locals 1

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->friendTransferType:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    return-object v0
.end method

.method public final getLinkedCard()Lru/rocketbank/core/model/card/LinkedCard;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->linkedCard:Lru/rocketbank/core/model/card/LinkedCard;

    return-object v0
.end method

.method public final getLocation()Lru/rocketbank/core/model/dto/operations/Location;
    .locals 1

    .line 58
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->location:Lru/rocketbank/core/model/dto/operations/Location;

    return-object v0
.end method

.method public final getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;
    .locals 1

    .line 56
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

    return-object v0
.end method

.method public final getMiles()Lru/rocketbank/core/model/dto/operations/Miles;
    .locals 1

    .line 34
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->miles:Lru/rocketbank/core/model/dto/operations/Miles;

    return-object v0
.end method

.method public final getMimimiles()D
    .locals 2

    .line 47
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->mimimiles:D

    return-wide v0
.end method

.method public final getMoney()Lru/rocketbank/core/model/MoneyData;
    .locals 1

    .line 52
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->money:Lru/rocketbank/core/model/MoneyData;

    return-object v0
.end method

.method public final getParent_operation()Lru/rocketbank/core/model/dto/operations/Operation;
    .locals 1

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->parent_operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-object v0
.end method

.method public final getPayment()Lru/rocketbank/core/model/payments/Payment;
    .locals 1

    .line 36
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->payment:Lru/rocketbank/core/model/payments/Payment;

    return-object v0
.end method

.method public final getReceiptUrl()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->receiptUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getShopItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/ContextShopItem;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->shopItems:Ljava/util/List;

    return-object v0
.end method

.method public final getSputnik()Ljava/lang/Boolean;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->sputnik:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final isHasReceipt()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->isHasReceipt:Z

    return v0
.end method

.method public final isRocketRubleOperation()Z
    .locals 5

    const/4 v0, 0x3

    .line 142
    new-array v0, v0, [Lru/rocketbank/core/network/model/operation/OperationContextType;

    sget-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->RocketRubleIn:Lru/rocketbank/core/network/model/operation/OperationContextType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->RocketRubleOut:Lru/rocketbank/core/network/model/operation/OperationContextType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lru/rocketbank/core/network/model/operation/OperationContextType;->MilesCashBack:Lru/rocketbank/core/network/model/operation/OperationContextType;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-static {v0}, Lkotlin/collections/AbstractList$Companion;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->contextType:Lru/rocketbank/core/network/model/operation/OperationContextType;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 143
    iget-object v1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->money:Lru/rocketbank/core/model/MoneyData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v4, Lru/rocketbank/core/utils/MoneyFormatter;->Companion:Lru/rocketbank/core/utils/MoneyFormatter$Companion;

    .line 1105
    invoke-static {}, Lru/rocketbank/core/utils/MoneyFormatter;->access$getCURRENCY_ROCKET$cp()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v3
.end method

.method public final setAnalytics(Lru/rocketbank/core/model/dto/operations/OperationAnalytics;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->analytics:Lru/rocketbank/core/model/dto/operations/OperationAnalytics;

    return-void
.end method

.method public final setCategory(Lru/rocketbank/core/model/dto/operations/OperationCategory;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->category:Lru/rocketbank/core/model/dto/operations/OperationCategory;

    return-void
.end method

.method public final setComment(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->comment:Ljava/lang/String;

    return-void
.end method

.method public final setCompensation_status(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->compensation_status:Ljava/lang/String;

    return-void
.end method

.method public final setContextType(Lru/rocketbank/core/network/model/operation/OperationContextType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->contextType:Lru/rocketbank/core/network/model/operation/OperationContextType;

    return-void
.end method

.method public final setCover(Lru/rocketbank/core/model/Image;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->cover:Lru/rocketbank/core/model/Image;

    return-void
.end method

.method public final setDeclineReason(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->declineReason:Ljava/lang/String;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->description:Ljava/lang/String;

    return-void
.end method

.method public final setDetails(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->details:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayMoney(Lru/rocketbank/core/model/MoneyData;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->displayMoney:Lru/rocketbank/core/model/MoneyData;

    return-void
.end method

.method public final setExchangeDetails(Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->exchangeDetails:Lru/rocketbank/core/model/dto/operations/Operation$ExchangeDetails;

    return-void
.end method

.method public final setFriend(Lru/rocketbank/core/model/dto/operations/Friend;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->friend:Lru/rocketbank/core/model/dto/operations/Friend;

    return-void
.end method

.method public final setFriendTransferType(Lru/rocketbank/core/network/model/operation/FriendRequestType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->friendTransferType:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    return-void
.end method

.method public final setHasReceipt(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->isHasReceipt:Z

    return-void
.end method

.method public final setLinkedCard(Lru/rocketbank/core/model/card/LinkedCard;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->linkedCard:Lru/rocketbank/core/model/card/LinkedCard;

    return-void
.end method

.method public final setLocation(Lru/rocketbank/core/model/dto/operations/Location;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->location:Lru/rocketbank/core/model/dto/operations/Location;

    return-void
.end method

.method public final setMerchant(Lru/rocketbank/core/model/dto/operations/Merchant;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

    return-void
.end method

.method public final setMiles(Lru/rocketbank/core/model/dto/operations/Miles;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->miles:Lru/rocketbank/core/model/dto/operations/Miles;

    return-void
.end method

.method public final setMimimiles(D)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->mimimiles:D

    return-void
.end method

.method public final setMoney(Lru/rocketbank/core/model/MoneyData;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->money:Lru/rocketbank/core/model/MoneyData;

    return-void
.end method

.method public final setParent_operation(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->parent_operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-void
.end method

.method public final setPayment(Lru/rocketbank/core/model/payments/Payment;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->payment:Lru/rocketbank/core/model/payments/Payment;

    return-void
.end method

.method public final setReceiptUrl(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->receiptUrl:Ljava/lang/String;

    return-void
.end method

.method public final setShopItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/ContextShopItem;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->shopItems:Ljava/util/List;

    return-void
.end method

.method public final setSputnik(Ljava/lang/Boolean;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->sputnik:Ljava/lang/Boolean;

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lru/rocketbank/core/model/dto/operations/Operation;->status:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 110
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/model/AbstractOperation;->writeToParcel(Landroid/os/Parcel;I)V

    if-eqz p1, :cond_2

    .line 114
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->details:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->analytics:Lru/rocketbank/core/model/dto/operations/OperationAnalytics;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 118
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->mimimiles:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 119
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->displayMoney:Lru/rocketbank/core/model/MoneyData;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->money:Lru/rocketbank/core/model/MoneyData;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 121
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->category:Lru/rocketbank/core/model/dto/operations/OperationCategory;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 122
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->merchant:Lru/rocketbank/core/model/dto/operations/Merchant;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 123
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->friendTransferType:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/operation/FriendRequestType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->miles:Lru/rocketbank/core/model/dto/operations/Miles;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 125
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->friend:Lru/rocketbank/core/model/dto/operations/Friend;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 126
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->location:Lru/rocketbank/core/model/dto/operations/Location;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 127
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->payment:Lru/rocketbank/core/model/payments/Payment;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 128
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->cover:Lru/rocketbank/core/model/Image;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 129
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->linkedCard:Lru/rocketbank/core/model/card/LinkedCard;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 130
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->contextType:Lru/rocketbank/core/network/model/operation/OperationContextType;

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/operation/OperationContextType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lru/rocketbank/core/model/dto/operations/Operation;->isHasReceipt()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 132
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->receiptUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->declineReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lru/rocketbank/core/model/dto/operations/Operation;->parent_operation:Lru/rocketbank/core/model/dto/operations/Operation;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 135
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/Operation;->shopItems:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 136
    iget-object p2, p0, Lru/rocketbank/core/model/dto/operations/Operation;->sputnik:Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    .line 137
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_2
    return-void
.end method
