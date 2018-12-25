.class final Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$4;
.super Ljava/lang/Object;
.source "AdminProfileActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/AdminProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $avatarImageView:Landroid/widget/ImageView;

.field final synthetic $toolbar:Landroid/support/v7/widget/Toolbar;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/AdminProfileActivity;Landroid/widget/ImageView;Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$4;->this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$4;->$avatarImageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$4;->$toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 110
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$4;->this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$4;->$avatarImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$4;->$toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->access$setHeight$p(Lru/rocketbank/r2d2/activities/AdminProfileActivity;F)V

    return-void
.end method
