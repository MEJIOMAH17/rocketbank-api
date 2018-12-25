.class Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;
.super Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;
.source "DepositFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AboutLineViewHolder"
.end annotation


# instance fields
.field arrowRight:Landroid/widget/ImageView;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

.field titleView:Lru/rocketbank/core/widgets/RocketTextView;

.field valueView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Landroid/view/View;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    .line 787
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$FeedViewHolder;-><init>(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;Landroid/view/View;)V

    const p1, 0x7f0903cc

    .line 789
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f090403

    .line 790
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->valueView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f09005c

    .line 791
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->arrowRight:Landroid/widget/ImageView;

    .line 793
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 798
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->getItem()Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->getId()I

    move-result p1

    const/16 v0, 0x28

    if-ne p1, v0, :cond_1

    .line 799
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$500(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Lru/rocketbank/core/model/DepositModel;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/DepositModel;->getRocketDeposit()Lru/rocketbank/core/model/RocketDepositModel;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/RocketDepositModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 800
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 803
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->getItem()Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$Item;->getId()I

    move-result p1

    const/16 v0, 0x32

    if-ne p1, v0, :cond_2

    .line 804
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->access$500(Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;)Lru/rocketbank/core/model/DepositModel;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/DepositModel;->getRequisites()Lru/rocketbank/core/model/RequisitesModel;

    move-result-object p1

    .line 805
    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;->newInstance(Lru/rocketbank/core/model/RequisitesModel;)Lru/rocketbank/r2d2/fragments/deposit/DepositRequisitesFragment;

    move-result-object p1

    .line 807
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/MainActivity;

    .line 808
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/activities/MainActivity;->pushFragment(Landroid/support/v4/app/Fragment;)V

    :cond_2
    return-void
.end method

.method public setArrowRightVisible(Z)V
    .locals 1

    .line 813
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->arrowRight:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 821
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 817
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/deposit/DepositFragment$AboutLineViewHolder;->valueView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
