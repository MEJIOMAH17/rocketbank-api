.class Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2$1;
.super Ljava/lang/Object;
.source "CardblockFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;->call(Lru/rocketbank/core/model/UserModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2$1;->this$1:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 162
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2$1;->this$1:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->access$100(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2$1;->this$1:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;

    iget-object v1, v1, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :cond_0
    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2$1;->this$1:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->access$200(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V

    :cond_1
    return-void
.end method
