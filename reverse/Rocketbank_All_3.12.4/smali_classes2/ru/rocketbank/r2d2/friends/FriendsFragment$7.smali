.class Lru/rocketbank/r2d2/friends/FriendsFragment$7;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/FriendsFragment;->subscribeSearchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/FriendsFragment;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$7;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$7;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/FriendsFragment;->refreshCursor()V

    const/4 v0, 0x0

    return v0
.end method
