.class Lru/rocketbank/r2d2/friends/FriendActivity$3;
.super Ljava/lang/Object;
.source "FriendActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/FriendActivity;->scheduleStartPostponedTransition(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

.field final synthetic val$sharedElement:Landroid/view/View;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/FriendActivity;Landroid/view/View;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendActivity$3;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/FriendActivity$3;->val$sharedElement:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity$3;->val$sharedElement:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendActivity$3;->this$0:Lru/rocketbank/r2d2/friends/FriendActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/FriendActivity;->startPostponedEnterTransition()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
