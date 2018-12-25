.class Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$2;
.super Ljava/lang/Object;
.source "SafeAccountFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 190
    check-cast p1, Lru/rocketbank/core/model/UserModel;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$2;->call(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method

.method public call(Lru/rocketbank/core/model/UserModel;)V
    .locals 5

    .line 193
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$200(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lru/rocketbank/core/model/UserModel;->getSafeAccount(Ljava/lang/String;)Lru/rocketbank/core/model/SafeAccount;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$102(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;Lru/rocketbank/core/model/SafeAccount;)Lru/rocketbank/core/model/SafeAccount;

    .line 195
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$100(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Lru/rocketbank/core/model/SafeAccount;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$300(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V

    .line 197
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$100(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Lru/rocketbank/core/model/SafeAccount;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/SafeAccount;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$000(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->clearTop()V

    .line 201
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$400(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)[Lru/rocketbank/core/network/model/FeedItem;

    move-result-object p1

    const/4 v0, 0x0

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 202
    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {v4}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$000(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$SafeAdapter;->addTopItem(Lru/rocketbank/core/network/model/FeedItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$500(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 206
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->access$600(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;I)Z

    :cond_2
    return-void
.end method
