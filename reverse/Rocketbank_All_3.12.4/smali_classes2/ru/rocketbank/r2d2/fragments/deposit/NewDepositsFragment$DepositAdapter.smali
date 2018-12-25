.class Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "NewDepositsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DepositAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;

.field private final titles:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .line 258
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;->this$0:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;

    .line 259
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 256
    new-instance p1, Landroid/support/v4/util/ArrayMap;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;->titles:Landroid/support/v4/util/ArrayMap;

    .line 260
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;->titles:Landroid/support/v4/util/ArrayMap;

    const-string p2, "rub"

    const v0, 0x7f1103ec

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;->titles:Landroid/support/v4/util/ArrayMap;

    const-string p2, "usd"

    const v0, 0x7f1103ee

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;->titles:Landroid/support/v4/util/ArrayMap;

    const-string p2, "eur"

    const v0, 0x7f1103ea

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 279
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;->this$0:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->access$200(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;->this$0:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->access$200(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 272
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;->this$0:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->access$200(Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;

    .line 273
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;->titles:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$Deposits;->getCurrency()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 274
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment$DepositAdapter;->this$0:Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/deposit/NewDepositsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
