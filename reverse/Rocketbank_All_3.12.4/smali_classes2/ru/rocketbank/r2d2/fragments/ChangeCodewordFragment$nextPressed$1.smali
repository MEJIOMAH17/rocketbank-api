.class final Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$1;
.super Ljava/lang/Object;
.source "ChangeCodewordFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->nextPressed(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/model/dto/ActivationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lru/rocketbank/core/model/dto/ActivationResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$1;->call(Lru/rocketbank/core/model/dto/ActivationResponse;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/model/dto/ActivationResponse;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->hideSpinner()V

    .line 121
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ActivationResponse;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 124
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 126
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    return-void

    .line 130
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$1;->$view:Landroid/view/View;

    const v0, 0x7f11012b

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;I)V

    :cond_2
    return-void
.end method
