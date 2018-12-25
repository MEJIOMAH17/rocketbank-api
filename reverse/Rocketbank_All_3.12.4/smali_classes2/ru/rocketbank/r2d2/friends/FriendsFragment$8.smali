.class Lru/rocketbank/r2d2/friends/FriendsFragment$8;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/FriendsFragment;->refreshCursor(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/FriendsFragment;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$8;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/database/Cursor;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$8;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/friends/FriendsFragment;->access$102(Lru/rocketbank/r2d2/friends/FriendsFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 302
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$8;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    iget-object v0, v0, Lru/rocketbank/r2d2/friends/FriendsFragment;->friendsAdapter:Lru/rocketbank/r2d2/friends/FriendsAdapter;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->setCursor(Landroid/database/Cursor;)V

    .line 303
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$8;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/friends/FriendsFragment;->updateSections()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 298
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsFragment$8;->call(Landroid/database/Cursor;)V

    return-void
.end method
