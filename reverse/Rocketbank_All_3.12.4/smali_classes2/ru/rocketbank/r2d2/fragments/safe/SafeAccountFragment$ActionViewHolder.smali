.class Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "SafeAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionViewHolder"
.end annotation


# instance fields
.field private subtitleView:Lru/rocketbank/core/widgets/RocketTextView;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

.field private titleView:Lru/rocketbank/core/widgets/RocketTextView;

.field private type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;Landroid/view/View;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    .line 788
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0903cc

    .line 790
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f090365

    .line 791
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->subtitleView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 792
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 806
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 807
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->type:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 830
    :pswitch_0
    sget-object p1, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->Companion:Lru/rocketbank/r2d2/activities/AccountDetailsActivity$Companion;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$200(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/activities/AccountDetailsActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$100(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Lru/rocketbank/core/model/SafeAccount;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 810
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$100(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Lru/rocketbank/core/model/SafeAccount;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/SafeAccount;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 811
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 813
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 814
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 823
    :pswitch_2
    :try_start_0
    sget-object p1, Lru/rocketbank/r2d2/activities/safe/TransferActivity;->Companion:Lru/rocketbank/r2d2/activities/safe/TransferActivity$Companion;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$200(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/activities/safe/TransferActivity$Companion;->startActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 825
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTexts(II)V
    .locals 1

    .line 800
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    .line 801
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->subtitleView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(I)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 796
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionViewHolder;->type:Ljava/lang/Integer;

    return-void
.end method
