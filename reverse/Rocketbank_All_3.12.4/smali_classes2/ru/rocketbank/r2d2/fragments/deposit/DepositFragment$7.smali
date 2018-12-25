.class Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$7;
.super Ljava/lang/Object;
.source "DepositFragment.java"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->setupToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$7;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0900df

    if-eq p1, v0, :cond_1

    const v0, 0x7f090367

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$7;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/activities/MainActivity;

    .line 342
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/MainActivity;->showSupport()V

    goto :goto_0

    .line 337
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$7;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$1000(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
