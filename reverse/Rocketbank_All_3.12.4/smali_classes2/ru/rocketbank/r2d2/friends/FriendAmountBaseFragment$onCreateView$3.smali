.class public final Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$3;
.super Lru/rocketbank/r2d2/utils/TextWatcherAbstract;
.source "FriendAmountBaseFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $rootView:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$3;->this$0:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$3;->$rootView:Landroid/view/View;

    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/TextWatcherAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$3;->this$0:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$3;->$rootView:Landroid/view/View;

    const-string v1, "rootView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Landroid/text/TextWatcher;

    invoke-static {p1, v0, v1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->access$updateText(Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;Landroid/view/View;Landroid/text/TextWatcher;)V

    return-void
.end method
