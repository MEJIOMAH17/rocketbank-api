.class Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$1;
.super Ljava/lang/Object;
.source "FriendUrlsBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$1;->this$0:Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 47
    :try_start_0
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$1;->this$0:Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "transfer_url"

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$1;->this$0:Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->access$000(Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;)Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/friend/FriendTransfersResponseUrls;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lru/rocketbank/r2d2/Utils;->copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$1;->this$0:Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;

    const-string v0, "\u0421\u0441\u044b\u043b\u043a\u0430 \u0441\u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u043d\u0430 \u0432 \u0431\u0443\u0444\u0435\u0440 \u043e\u0431\u043c\u0435\u043d\u0430."

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->access$100(Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 51
    :catch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$1;->this$0:Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0441\u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0441\u0441\u044b\u043b\u043a\u0443."

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->access$200(Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;Ljava/lang/String;)V

    return-void
.end method
