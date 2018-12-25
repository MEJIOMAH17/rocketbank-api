.class Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$5;
.super Ljava/lang/Object;
.source "DepositFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->updateFabVisibility()V
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

    .line 258
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$5;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 261
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$5;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$500(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Lru/rocketbank/core/model/DepositModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/DepositModel;->getBalanceWithoutPercents()F

    move-result p1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$5;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$500(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Lru/rocketbank/core/model/DepositModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getMaxAmount()F

    move-result v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    .line 262
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$5;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$5;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    const v1, 0x7f11014e

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 265
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$5;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$500(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Lru/rocketbank/core/model/DepositModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/DepositModel;->getCanRefillByDate()Z

    move-result p1

    if-nez p1, :cond_2

    .line 266
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$5;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    const v0, 0x7f11013c

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$5;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {v2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$500(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Lru/rocketbank/core/model/DepositModel;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/model/DepositModel;->getPeriod()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/16 v2, 0x1e

    goto :goto_0

    :cond_1
    const/16 v2, 0x5a

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 267
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$5;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 270
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$5;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$5;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$500(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Lru/rocketbank/core/model/DepositModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
