.class public Lru/rocketbank/core/realm/RealmOperation;
.super Lio/realm/RealmObject;
.source "RealmOperation.kt"

# interfaces
.implements Lio/realm/RealmOperationRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/realm/RealmOperation$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/realm/RealmOperation$Companion;


# instance fields
.field private category:Lru/rocketbank/core/realm/RealmOperationCategory;

.field private comment:Ljava/lang/String;

.field private contextType:Ljava/lang/String;

.field private cover:Lru/rocketbank/core/realm/RealmImage;

.field private declineReason:Ljava/lang/String;

.field private details:Ljava/lang/String;

.field private displayMoney:Lru/rocketbank/core/realm/RealmMoneyData;

.field private friend:Lru/rocketbank/core/realm/RealmFriend;

.field private friendTransferType:Ljava/lang/String;

.field private isHasReceipt:Z

.field private linkedCard:Lru/rocketbank/core/realm/RealmLinkedCard;

.field private merchant:Lru/rocketbank/core/realm/RealmMerchant;

.field private miles:Lru/rocketbank/core/realm/RealmMiles;

.field private mimimiles:D

.field private money:Lru/rocketbank/core/realm/RealmMoneyData;

.field private receiptUrl:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/realm/RealmOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/realm/RealmOperation$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/realm/RealmOperation;->Companion:Lru/rocketbank/core/realm/RealmOperation$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method


# virtual methods
.method public realmGet$category()Lru/rocketbank/core/realm/RealmOperationCategory;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperation;->category:Lru/rocketbank/core/realm/RealmOperationCategory;

    return-object v0
.end method

.method public realmGet$comment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperation;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$contextType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperation;->contextType:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$cover()Lru/rocketbank/core/realm/RealmImage;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperation;->cover:Lru/rocketbank/core/realm/RealmImage;

    return-object v0
.end method

.method public realmGet$declineReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperation;->declineReason:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$details()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperation;->details:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$displayMoney()Lru/rocketbank/core/realm/RealmMoneyData;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperation;->displayMoney:Lru/rocketbank/core/realm/RealmMoneyData;

    return-object v0
.end method

.method public realmGet$friend()Lru/rocketbank/core/realm/RealmFriend;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperation;->friend:Lru/rocketbank/core/realm/RealmFriend;

    return-object v0
.end method

.method public realmGet$friendTransferType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperation;->friendTransferType:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$isHasReceipt()Z
    .locals 1

    iget-boolean v0, p0, Lru/rocketbank/core/realm/RealmOperation;->isHasReceipt:Z

    return v0
.end method

.method public realmGet$linkedCard()Lru/rocketbank/core/realm/RealmLinkedCard;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperation;->linkedCard:Lru/rocketbank/core/realm/RealmLinkedCard;

    return-object v0
.end method

.method public realmGet$merchant()Lru/rocketbank/core/realm/RealmMerchant;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperation;->merchant:Lru/rocketbank/core/realm/RealmMerchant;

    return-object v0
.end method

.method public realmGet$miles()Lru/rocketbank/core/realm/RealmMiles;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperation;->miles:Lru/rocketbank/core/realm/RealmMiles;

    return-object v0
.end method

.method public realmGet$mimimiles()D
    .locals 2

    iget-wide v0, p0, Lru/rocketbank/core/realm/RealmOperation;->mimimiles:D

    return-wide v0
.end method

.method public realmGet$money()Lru/rocketbank/core/realm/RealmMoneyData;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperation;->money:Lru/rocketbank/core/realm/RealmMoneyData;

    return-object v0
.end method

.method public realmGet$receiptUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperation;->receiptUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$status()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/realm/RealmOperation;->status:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$category(Lru/rocketbank/core/realm/RealmOperationCategory;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperation;->category:Lru/rocketbank/core/realm/RealmOperationCategory;

    return-void
.end method

.method public realmSet$comment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperation;->comment:Ljava/lang/String;

    return-void
.end method

.method public realmSet$contextType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperation;->contextType:Ljava/lang/String;

    return-void
.end method

.method public realmSet$cover(Lru/rocketbank/core/realm/RealmImage;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperation;->cover:Lru/rocketbank/core/realm/RealmImage;

    return-void
.end method

.method public realmSet$declineReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperation;->declineReason:Ljava/lang/String;

    return-void
.end method

.method public realmSet$details(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperation;->details:Ljava/lang/String;

    return-void
.end method

.method public realmSet$displayMoney(Lru/rocketbank/core/realm/RealmMoneyData;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperation;->displayMoney:Lru/rocketbank/core/realm/RealmMoneyData;

    return-void
.end method

.method public realmSet$friend(Lru/rocketbank/core/realm/RealmFriend;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperation;->friend:Lru/rocketbank/core/realm/RealmFriend;

    return-void
.end method

.method public realmSet$friendTransferType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperation;->friendTransferType:Ljava/lang/String;

    return-void
.end method

.method public realmSet$isHasReceipt(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/rocketbank/core/realm/RealmOperation;->isHasReceipt:Z

    return-void
.end method

.method public realmSet$linkedCard(Lru/rocketbank/core/realm/RealmLinkedCard;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperation;->linkedCard:Lru/rocketbank/core/realm/RealmLinkedCard;

    return-void
.end method

.method public realmSet$merchant(Lru/rocketbank/core/realm/RealmMerchant;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperation;->merchant:Lru/rocketbank/core/realm/RealmMerchant;

    return-void
.end method

.method public realmSet$miles(Lru/rocketbank/core/realm/RealmMiles;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperation;->miles:Lru/rocketbank/core/realm/RealmMiles;

    return-void
.end method

.method public realmSet$mimimiles(D)V
    .locals 0

    iput-wide p1, p0, Lru/rocketbank/core/realm/RealmOperation;->mimimiles:D

    return-void
.end method

.method public realmSet$money(Lru/rocketbank/core/realm/RealmMoneyData;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperation;->money:Lru/rocketbank/core/realm/RealmMoneyData;

    return-void
.end method

.method public realmSet$receiptUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperation;->receiptUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$status(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/realm/RealmOperation;->status:Ljava/lang/String;

    return-void
.end method
