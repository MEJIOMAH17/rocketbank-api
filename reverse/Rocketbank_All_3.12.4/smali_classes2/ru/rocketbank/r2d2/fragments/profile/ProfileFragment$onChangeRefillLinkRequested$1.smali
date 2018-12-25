.class final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;
.super Ljava/lang/Object;
.source "ProfileFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->onChangeRefillLinkRequested()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $username:Landroid/widget/EditText;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;->$username:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1554
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;->$username:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1556
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p2}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$showProgressDialog(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V

    .line 1558
    new-instance p2, Lru/rocketbank/core/network/model/PatchProfileBody;

    invoke-direct {p2}, Lru/rocketbank/core/network/model/PatchProfileBody;-><init>()V

    .line 1559
    new-instance v0, Lru/rocketbank/core/network/model/PatchProfileBody$User;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/PatchProfileBody$User;-><init>()V

    invoke-virtual {p2, v0}, Lru/rocketbank/core/network/model/PatchProfileBody;->setUser(Lru/rocketbank/core/network/model/PatchProfileBody$User;)V

    .line 1560
    invoke-virtual {p2}, Lru/rocketbank/core/network/model/PatchProfileBody;->getUser()Lru/rocketbank/core/network/model/PatchProfileBody$User;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/network/model/PatchProfileBody$UserName;

    invoke-direct {v1}, Lru/rocketbank/core/network/model/PatchProfileBody$UserName;-><init>()V

    invoke-virtual {v0, v1}, Lru/rocketbank/core/network/model/PatchProfileBody$User;->setUsername(Lru/rocketbank/core/network/model/PatchProfileBody$UserName;)V

    .line 1561
    invoke-virtual {p2}, Lru/rocketbank/core/network/model/PatchProfileBody;->getUser()Lru/rocketbank/core/network/model/PatchProfileBody$User;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/PatchProfileBody$User;->getUsername()Lru/rocketbank/core/network/model/PatchProfileBody$UserName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/core/network/model/PatchProfileBody$UserName;->setValue(Ljava/lang/String;)V

    .line 1565
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    .line 1563
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getRocketAPI$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object v1

    invoke-interface {v1, p2}, Lru/rocketbank/core/network/api/RocketAPI;->setUserName(Lru/rocketbank/core/network/model/PatchProfileBody;)Lrx/Observable;

    move-result-object p2

    .line 1564
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {p2, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p2

    .line 1565
    new-instance v1, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$onChangeRefillLinkRequested$1;Ljava/lang/String;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {p2, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$setChangeNameSubscription$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;Lrx/Subscription;)V

    return-void
.end method
