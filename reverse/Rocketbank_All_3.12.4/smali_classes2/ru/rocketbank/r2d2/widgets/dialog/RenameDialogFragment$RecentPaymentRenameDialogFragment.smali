.class public Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;
.super Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;
.source "RenameDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentPaymentRenameDialogFragment"
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "NAME"

.field private static final TEMPLATE:Ljava/lang/String; = "TEMPLATE"


# instance fields
.field private onRename:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Lru/rocketbank/core/model/transfers/Template;",
            ">;"
        }
    .end annotation
.end field

.field private template:Lru/rocketbank/core/model/transfers/Template;

.field templateApi:Lru/rocketbank/core/network/api/TemplateApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;)Lru/rocketbank/core/model/transfers/Template;
    .locals 0

    .line 308
    iget-object p0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    return-object p0
.end method

.method static synthetic access$400(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;)Lrx/functions/Action1;
    .locals 0

    .line 308
    iget-object p0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->onRename:Lrx/functions/Action1;

    return-object p0
.end method

.method public static getInstance(Lru/rocketbank/core/model/transfers/Template;)Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;
    .locals 3

    .line 317
    new-instance v0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;-><init>()V

    .line 318
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TEMPLATE"

    .line 319
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "NAME"

    .line 320
    iget-object p0, p0, Lru/rocketbank/core/model/transfers/Template;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 327
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getTemplateApi()Lru/rocketbank/core/network/api/TemplateApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->templateApi:Lru/rocketbank/core/network/api/TemplateApi;

    .line 330
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 331
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "TEMPLATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/transfers/Template;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    return-void
.end method

.method protected onOkClick(Landroid/view/View;)V
    .locals 5

    .line 352
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->showSpinner()V

    .line 353
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 354
    new-instance v1, Lru/rocketbank/core/network/model/TemplateEditBody;

    invoke-direct {v1}, Lru/rocketbank/core/network/model/TemplateEditBody;-><init>()V

    .line 355
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/TemplateEditBody;->getPaymentTemplate()Lru/rocketbank/core/network/model/TemplateEditBody$Content;

    move-result-object v2

    invoke-virtual {v2, v0}, Lru/rocketbank/core/network/model/TemplateEditBody$Content;->setTitle(Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->templateApi:Lru/rocketbank/core/network/api/TemplateApi;

    iget-object v3, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    iget v3, v3, Lru/rocketbank/core/model/transfers/Template;->id:I

    int-to-long v3, v3

    invoke-interface {v2, v3, v4, v1}, Lru/rocketbank/core/network/api/TemplateApi;->editTemplate(JLru/rocketbank/core/network/model/TemplateEditBody;)Lrx/Observable;

    move-result-object v1

    .line 357
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment$1;

    invoke-direct {v2, p0, p1, v0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment$1;-><init>(Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;Landroid/view/View;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->renameSubscription:Lrx/Subscription;

    return-void
.end method

.method public onRenameTemplate(Lrx/functions/Action1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "Lru/rocketbank/core/model/transfers/Template;",
            ">;)V"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->onRename:Lrx/functions/Action1;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 336
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0901ac

    .line 337
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f1103c8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f0901b9

    .line 338
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f11036a

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected setName()V
    .locals 3

    .line 347
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->nameView:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/RenameDialogFragment$RecentPaymentRenameDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
