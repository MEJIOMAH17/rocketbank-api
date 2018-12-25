.class Lru/rocketbank/r2d2/friends/InviteFriendsFragment$2;
.super Ljava/lang/Object;
.source "InviteFriendsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$2;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 145
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsFragment$2;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/friends/InviteFriendsFragment;->access$200(Lru/rocketbank/r2d2/friends/InviteFriendsFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
