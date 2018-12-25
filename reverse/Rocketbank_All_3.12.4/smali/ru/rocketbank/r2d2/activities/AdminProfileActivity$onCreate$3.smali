.class public final Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$3;
.super Ljava/lang/Object;
.source "AdminProfileActivity.kt"

# interfaces
.implements Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/AdminProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $avatarImageView:Landroid/widget/ImageView;

.field final synthetic $toolbar:Landroid/support/v7/widget/Toolbar;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/AdminProfileActivity;Landroid/widget/ImageView;Landroid/support/v7/widget/Toolbar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Landroid/support/v7/widget/Toolbar;",
            ")V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$3;->$avatarImageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$3;->$toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownMotionEvent()V
    .locals 0

    return-void
.end method

.method public final onScrollChanged(IZZ)V
    .locals 1

    .line 100
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;

    invoke-static {p2}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->access$getHeight$p(Lru/rocketbank/r2d2/activities/AdminProfileActivity;)F

    move-result p2

    int-to-float p1, p1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;

    invoke-static {p2}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->access$getHeight$p(Lru/rocketbank/r2d2/activities/AdminProfileActivity;)F

    move-result p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    .line 101
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$3;->$avatarImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object p3, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$3;->$avatarImageView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    float-to-int p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 102
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;

    iget-object p3, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$3;->$toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {p1, p3, p2}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->access$setToolbar(Lru/rocketbank/r2d2/activities/AdminProfileActivity;Landroid/support/v7/widget/Toolbar;F)V

    return-void
.end method

.method public final onUpOrCancelMotionEvent(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V
    .locals 0

    return-void
.end method
