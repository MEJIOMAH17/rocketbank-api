.class Lru/rocketbank/r2d2/friends/FriendsFragment$4;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/FriendsFragment;->subscribeSearchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/FriendsFragment;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$4;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 269
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsFragment$4;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$4;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/friends/FriendsFragment;->filter(Ljava/lang/String;)V

    return-void
.end method
