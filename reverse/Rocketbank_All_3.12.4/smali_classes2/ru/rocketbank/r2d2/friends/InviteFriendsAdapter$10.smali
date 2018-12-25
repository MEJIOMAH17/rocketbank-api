.class Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$10;
.super Ljava/lang/Object;
.source "InviteFriendsAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->onSendEmailClick(Landroid/view/View;Lru/rocketbank/core/model/contact/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

.field final synthetic val$emails:Ljava/util/List;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Landroid/view/View;Ljava/util/List;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$10;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$10;->val$view:Landroid/view/View;

    iput-object p3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$10;->val$emails:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 282
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$10;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$10;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$10;->val$emails:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$400(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
