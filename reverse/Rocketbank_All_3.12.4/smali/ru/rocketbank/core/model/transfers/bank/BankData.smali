.class public final Lru/rocketbank/core/model/transfers/bank/BankData;
.super Ljava/lang/Object;
.source "BankData.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bankName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank_name"
    .end annotation
.end field

.field private final besp:Z

.field private besp_text1:Ljava/lang/String;

.field private besp_text2:Ljava/lang/String;

.field private besp_text3:Ljava/lang/String;

.field private bik:Ljava/lang/String;

.field private corrBank:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "corr_bank"
    .end annotation
.end field

.field private logo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBankName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BankData;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBesp()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lru/rocketbank/core/model/transfers/bank/BankData;->besp:Z

    return v0
.end method

.method public final getBesp_text1()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BankData;->besp_text1:Ljava/lang/String;

    return-object v0
.end method

.method public final getBesp_text2()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BankData;->besp_text2:Ljava/lang/String;

    return-object v0
.end method

.method public final getBesp_text3()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BankData;->besp_text3:Ljava/lang/String;

    return-object v0
.end method

.method public final getBik()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BankData;->bik:Ljava/lang/String;

    return-object v0
.end method

.method public final getCorrBank()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BankData;->corrBank:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogo()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/BankData;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public final setBankName(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BankData;->bankName:Ljava/lang/String;

    return-void
.end method

.method public final setBesp_text1(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BankData;->besp_text1:Ljava/lang/String;

    return-void
.end method

.method public final setBesp_text2(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BankData;->besp_text2:Ljava/lang/String;

    return-void
.end method

.method public final setBesp_text3(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BankData;->besp_text3:Ljava/lang/String;

    return-void
.end method

.method public final setBik(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BankData;->bik:Ljava/lang/String;

    return-void
.end method

.method public final setCorrBank(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BankData;->corrBank:Ljava/lang/String;

    return-void
.end method

.method public final setLogo(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/BankData;->logo:Ljava/lang/String;

    return-void
.end method
