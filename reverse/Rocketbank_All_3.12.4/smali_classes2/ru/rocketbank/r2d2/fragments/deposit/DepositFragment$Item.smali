.class Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;
.super Ljava/lang/Object;
.source "DepositFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Item"
.end annotation


# instance fields
.field private id:I

.field private statementModel:Lru/rocketbank/core/model/StatementModel;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

.field private title:Ljava/lang/String;

.field private type:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;II)V
    .locals 0

    .line 585
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->type:I

    .line 587
    iput p3, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->id:I

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->type:I

    .line 592
    iput p3, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->id:I

    .line 593
    iput-object p4, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->value:Ljava/lang/String;

    .line 594
    iput-object p5, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;IILru/rocketbank/core/model/StatementModel;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput p2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->type:I

    .line 599
    iput p3, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->id:I

    .line 600
    iput-object p4, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->statementModel:Lru/rocketbank/core/model/StatementModel;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 610
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 612
    :cond_1
    check-cast p1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    .line 614
    iget v2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->type:I

    iget v3, p1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->type:I

    if-eq v2, v3, :cond_2

    return v1

    .line 615
    :cond_2
    iget v2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->id:I

    iget p1, p1, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->id:I

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getHappenedAt()Ljava/util/Date;
    .locals 1

    .line 604
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->statementModel:Lru/rocketbank/core/model/StatementModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/StatementModel;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 546
    iget v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->id:I

    return v0
.end method

.method public getStatementModel()Lru/rocketbank/core/model/StatementModel;
    .locals 1

    .line 556
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->statementModel:Lru/rocketbank/core/model/StatementModel;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 566
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 536
    iget v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 576
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 622
    iget v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->type:I

    mul-int/lit8 v0, v0, 0x1f

    .line 623
    iget v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->id:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 550
    iput p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->id:I

    return-void
.end method

.method public setStatementModel(Lru/rocketbank/core/model/StatementModel;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->statementModel:Lru/rocketbank/core/model/StatementModel;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 540
    iput p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->type:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->value:Ljava/lang/String;

    return-void
.end method
