.class Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$2;
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

.field final synthetic val$amount:D

.field final synthetic val$phone:Ljava/lang/String;

.field final synthetic val$phones:Ljava/util/Map;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;DLjava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$2;->this$0:Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;

    iput-wide p2, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$2;->val$amount:D

    iput-object p4, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$2;->val$phones:Ljava/util/Map;

    iput-object p5, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$2;->val$phone:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0903c4

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "sms_body"

    .line 83
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$2;->this$0:Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;

    iget-wide v2, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$2;->val$amount:D

    double-to-long v2, v2

    iget-object v4, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$2;->val$phones:Ljava/util/Map;

    iget-object v5, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$2;->val$phone:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->createMessageBody(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    :try_start_0
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$2;->this$0:Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 88
    :catch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment$2;->this$0:Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;

    const-string v0, "\u041f\u043e\u0436\u0430\u043b\u0443\u0439\u0441\u0442\u0430, \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u0435 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u043c\u0443 \u0434\u043b\u044f \u043e\u0442\u043f\u0440\u0430\u0432\u043a\u0438 SMS."

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;->access$300(Lru/rocketbank/r2d2/friends/FriendUrlsBaseFragment;Ljava/lang/String;)V

    return-void
.end method
