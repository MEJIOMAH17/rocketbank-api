.class Lru/rocketbank/r2d2/friends/FriendsAdapter$3;
.super Ljava/lang/Object;
.source "FriendsAdapter.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/FriendsAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
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
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/FriendsAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/FriendsAdapter;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    .line 129
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->isLastInSection(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 126
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsAdapter$3;->call(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
