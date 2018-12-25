.class Lru/rocketbank/r2d2/friends/FriendsFragment$9;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/FriendsFragment;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsFragment$9;->this$0:Lru/rocketbank/r2d2/friends/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 306
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/FriendsFragment$9;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "FriendsFragment"

    const-string v1, "Failed to receive cursor"

    .line 309
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
