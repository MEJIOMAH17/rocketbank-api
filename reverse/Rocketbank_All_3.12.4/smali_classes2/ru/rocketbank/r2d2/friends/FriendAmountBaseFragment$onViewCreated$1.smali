.class public final Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onViewCreated$1;
.super Lru/rocketbank/r2d2/utils/TextWatcherAbstract;
.source "FriendAmountBaseFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/TextWatcherAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->onTextChanged()V

    return-void
.end method
