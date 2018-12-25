.class Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$1;
.super Ljava/lang/Object;
.source "InviteFriendsAdapter.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$1;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$1;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->isFirstInSection(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 107
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$1;->call(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
