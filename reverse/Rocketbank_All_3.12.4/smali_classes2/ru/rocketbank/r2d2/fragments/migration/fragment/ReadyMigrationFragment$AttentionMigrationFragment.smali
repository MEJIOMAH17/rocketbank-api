.class public Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;
.super Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;
.source "ReadyMigrationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttentionMigrationFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMigrationContent()Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;
    .locals 2

    .line 195
    new-instance v0, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;-><init>()V

    const v1, 0x7f1102e0

    .line 196
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setTopHintTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f080060

    .line 197
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setImageRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f1102df

    .line 198
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setBottomHintTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f1102dd

    .line 199
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setButtonTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const/4 v1, 0x1

    .line 200
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setBottomButtonVisible(Z)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    const v1, 0x7f1102dc

    .line 201
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;->setButtonBottomTextRes(I)Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment$MigrationContent;

    move-result-object v0

    return-object v0
.end method

.method public onBottomButtonClick()V
    .locals 2

    .line 265
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;->getMigrationURLs()Lru/rocketbank/core/model/migration/MigrationURLs;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/migration/MigrationURLs;->getOldCardFateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/Utils;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onStartButtonClick()V
    .locals 3

    .line 205
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/activities/AbstractActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->showProgressDialog()V

    .line 206
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;->getMigrationApi()Lru/rocketbank/core/network/api/MigrationApi;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/network/api/MigrationApi;->openPrivacy()Lrx/Observable;

    move-result-object v0

    .line 207
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 208
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment$1;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;)V

    new-instance v2, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment$2;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment$2;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;)V

    .line 209
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 243
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/migration/fragment/GenericMigrationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 244
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;->getMigrationURLs()Lru/rocketbank/core/model/migration/MigrationURLs;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;->getMigrationURLs()Lru/rocketbank/core/model/migration/MigrationURLs;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/migration/MigrationURLs;->getOldCardFateUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 245
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;->buttonBottom:Landroid/widget/Button;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;->buttonBottom:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 249
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;->button:Landroid/widget/Button;

    new-instance p2, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment$3;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment$3;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;->buttonBottom:Landroid/widget/Button;

    new-instance p2, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment$4;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment$4;-><init>(Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
