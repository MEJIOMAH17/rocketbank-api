.class final Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;
.super Landroid/widget/BaseAdapter;
.source "FirstDepositRefillFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccountAdapter"
.end annotation


# instance fields
.field private final accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/facade/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;


# direct methods
.method public constructor <init>(Ljava/util/List;Lru/rocketbank/core/utils/MoneyFormatter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/facade/Account;",
            ">;",
            "Lru/rocketbank/core/utils/MoneyFormatter;",
            ")V"
        }
    .end annotation

    const-string v0, "accounts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moneyFormatter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;->accounts:Ljava/util/List;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 422
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_1

    .line 431
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c008e

    const/4 v1, 0x0

    .line 432
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    .line 433
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    new-instance p3, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountViewHolder;

    invoke-direct {p3, p2}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 436
    :cond_1
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;->getItem(I)Lru/rocketbank/core/model/facade/Account;

    move-result-object p1

    .line 437
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.deposit.FirstDepositRefillFragment.AccountViewHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p3, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountViewHolder;

    .line 438
    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountViewHolder;->setName(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getBalance()D

    move-result-wide v1

    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountViewHolder;->setBalance(Ljava/lang/String;)V

    return-object p2
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;->getItem(I)Lru/rocketbank/core/model/facade/Account;

    move-result-object p1

    return-object p1
.end method

.method public final getItem(I)Lru/rocketbank/core/model/facade/Account;
    .locals 1

    .line 424
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;->accounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/facade/Account;

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 426
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;->accounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/facade/Account;

    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_1

    .line 447
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c008d

    const/4 v1, 0x0

    .line 448
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    .line 449
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    new-instance p3, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountViewHolder;

    invoke-direct {p3, p2}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 452
    :cond_1
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;->getItem(I)Lru/rocketbank/core/model/facade/Account;

    move-result-object p1

    .line 453
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.deposit.FirstDepositRefillFragment.AccountViewHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p3, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountViewHolder;

    .line 454
    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountViewHolder;->setName(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountAdapter;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getBalance()D

    move-result-wide v1

    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$AccountViewHolder;->setBalance(Ljava/lang/String;)V

    return-object p2
.end method
