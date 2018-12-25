.class final Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$5;
.super Ljava/lang/Object;
.source "FriendAmountBaseFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFriendAmountBaseFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FriendAmountBaseFragment.kt\nru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$5\n*L\n1#1,281:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$5;->this$0:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Character;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$5;->this$0:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getEditTextAmount()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$5;->this$0:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getEditTextAmount()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$5;->this$0:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getEditTextAmount()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, p1}, Lkotlin/text/StringsKt;->replaceRange(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$5;->this$0:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getEditTextAmount()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 113
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$5;->this$0:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getEditTextAmount()Landroid/widget/EditText;

    move-result-object v1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    .line 115
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$5;->this$0:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getEditTextAmount()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-le v0, p1, :cond_1

    .line 116
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$5;->this$0:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getEditTextAmount()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 118
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$5;->this$0:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getEditTextAmount()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$5;->call(Ljava/lang/Character;)V

    return-void
.end method
