.class Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$6;
.super Ljava/lang/Object;
.source "InviteFriendsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

.field final synthetic val$contact:Lru/rocketbank/core/model/contact/Contact;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Lru/rocketbank/core/model/contact/Contact;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$6;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$6;->val$contact:Lru/rocketbank/core/model/contact/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$6;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$6;->val$contact:Lru/rocketbank/core/model/contact/Contact;

    invoke-virtual {v0, p1, v1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->onSendEmailClick(Landroid/view/View;Lru/rocketbank/core/model/contact/Contact;)V

    return-void
.end method
