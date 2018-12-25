.class Lru/rocketbank/r2d2/friends/FriendsAdapter$1;
.super Ljava/lang/Object;
.source "FriendsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/FriendsAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/FriendsAdapter;

.field final synthetic val$contact:Lru/rocketbank/core/model/contact/Contact;

.field final synthetic val$holder:Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/FriendsAdapter;Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;Lru/rocketbank/core/model/contact/Contact;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter$1;->this$0:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter$1;->val$holder:Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;

    iput-object p3, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter$1;->val$contact:Lru/rocketbank/core/model/contact/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 115
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter$1;->this$0:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-static {p1}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->access$000(Lru/rocketbank/r2d2/friends/FriendsAdapter;)Lrx/functions/Action2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter$1;->this$0:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-static {p1}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->access$000(Lru/rocketbank/r2d2/friends/FriendsAdapter;)Lrx/functions/Action2;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter$1;->val$holder:Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter$1;->val$contact:Lru/rocketbank/core/model/contact/Contact;

    invoke-interface {p1, v0, v1}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
