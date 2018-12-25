.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeValid$1;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->subscribeValid()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeValid$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 1

    .line 348
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeValid$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeValid$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeValid$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    check-cast v0, Landroid/support/v4/app/Fragment;

    :cond_0
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->updateNextButton(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$subscribeValid$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
