.class public Lru/rocketbank/core/network/model/TransfersModelUrFiz;
.super Ljava/lang/Object;
.source "TransfersModelUrFiz.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;,
        Lru/rocketbank/core/network/model/TransfersModelUrFiz$LinkedAccount;,
        Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/network/model/TransfersModelUrFiz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public budgetRemittance:Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "budget_remittance"
    .end annotation
.end field

.field public card2card:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card2card"
    .end annotation
.end field

.field public corporateRemittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "corporate_remittance"
    .end annotation
.end field

.field public happened_at:I

.field public individualRemittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "individual_remittance"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 469
    new-instance v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$1;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->happened_at:I

    .line 463
    const-class v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->corporateRemittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    .line 464
    const-class v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->individualRemittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    .line 465
    const-class v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->card2card:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    .line 466
    const-class v0, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;

    iput-object p1, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->budgetRemittance:Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/model/CardModel;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    invoke-direct {v0, p1}, Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;-><init>(Lru/rocketbank/core/model/CardModel;)V

    iput-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->card2card:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCard2card()Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->card2card:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    return-object v0
.end method

.method public getHappened_at()I
    .locals 1

    .line 19
    iget v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->happened_at:I

    return v0
.end method

.method public getRecipientType()Lru/rocketbank/core/model/transfers/bank/RecipientType;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->isIndividual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;->PERSON:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->isCorporate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;->BUSINESS:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    return-object v0

    .line 82
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->isCard2Card()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    sget-object v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;->CARD2CARD:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    return-object v0

    .line 86
    :cond_2
    sget-object v0, Lru/rocketbank/core/model/transfers/bank/RecipientType;->BUDGET:Lru/rocketbank/core/model/transfers/bank/RecipientType;

    return-object v0
.end method

.method public getRemittance()Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;
    .locals 1

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->corporateRemittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->corporateRemittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->individualRemittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->individualRemittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    return-object v0

    .line 46
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->budgetRemittance:Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->budgetRemittance:Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBudget()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->budgetRemittance:Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCard2Card()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->card2card:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCorporate()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->corporateRemittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isIndividual()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->individualRemittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 454
    iget v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->happened_at:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->corporateRemittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 456
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->individualRemittance:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Remittance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 457
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->card2card:Lru/rocketbank/core/network/model/TransfersModelUrFiz$Card2Card;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 458
    iget-object v0, p0, Lru/rocketbank/core/network/model/TransfersModelUrFiz;->budgetRemittance:Lru/rocketbank/core/model/transfers/bank/BudgetRemittance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
