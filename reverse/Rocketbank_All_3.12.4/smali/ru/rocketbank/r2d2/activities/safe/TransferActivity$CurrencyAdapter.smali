.class public final Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "TransferActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/safe/TransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CurrencyAdapter"
.end annotation


# instance fields
.field private final currencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/activities/safe/TransferActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .line 545
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 546
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;->currencies:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 558
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;->currencies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getCurrencyAtPosition(I)Ljava/lang/String;
    .locals 1

    .line 575
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;->currencies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "currencies[position]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 549
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;->this$0:Lru/rocketbank/r2d2/activities/safe/TransferActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;->currencies:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/manager/CurrencyManager;->getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "?"

    .line 550
    :cond_0
    sget-object v0, Lru/rocketbank/r2d2/root/transfer/CurrencyFragment;->Companion:Lru/rocketbank/r2d2/root/transfer/CurrencyFragment$Companion;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/transfer/CurrencyFragment$Companion;->newInstance(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 554
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;->currencies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final setCurrencies(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "currencies"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;->currencies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 570
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;->currencies:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 572
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$CurrencyAdapter;->notifyDataSetChanged()V

    return-void
.end method
