.class Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1$1;
.super Ljava/lang/Object;
.source "NewDepositsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1;->onNext(Lru/rocketbank/core/network/model/DepositsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1$1;->this$1:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getWeight(Ljava/lang/String;)I
    .locals 2

    const-string v0, "rub"

    .line 201
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    :goto_0
    const-string v1, "usd"

    .line 205
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_1
    const-string v1, "eur"

    .line 209
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    :cond_2
    return v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 189
    check-cast p1, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    check-cast p2, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1$1;->compare(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;)I

    move-result p1

    return p1
.end method

.method public compare(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;)I
    .locals 0

    .line 192
    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->getCurrency()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1$1;->getWeight(Ljava/lang/String;)I

    move-result p1

    .line 193
    invoke-virtual {p2}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->getCurrency()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$1$1;->getWeight(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
