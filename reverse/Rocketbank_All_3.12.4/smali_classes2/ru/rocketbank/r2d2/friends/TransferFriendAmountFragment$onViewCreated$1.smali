.class final Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "TransferFriendAmountFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lru/rocketbank/core/model/facade/Account;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferFriendAmountFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferFriendAmountFragment.kt\nru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onViewCreated$1\n*L\n1#1,185:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lru/rocketbank/core/model/facade/Account;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onViewCreated$1;->call(Lru/rocketbank/core/model/facade/Account;)V

    return-void
.end method

.method public final call(Lru/rocketbank/core/model/facade/Account;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->access$setToken$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v1

    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/enums/Currency;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lru/rocketbank/core/manager/CurrencyManager;->getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, v0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->currencyCode:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getAmountTextWatcher()Landroid/text/TextWatcher;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->getEditTextAmount()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    return-void

    :cond_1
    return-void
.end method
