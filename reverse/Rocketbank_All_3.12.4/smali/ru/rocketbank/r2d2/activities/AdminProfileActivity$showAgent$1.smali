.class public final Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$1;
.super Ljava/lang/Object;
.source "AdminProfileActivity.kt"

# interfaces
.implements Lru/rocketbank/core/utils/ImageHelper$ImageLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/AdminProfileActivity;->showAgent(Lru/rocketbank/core/network/model/AgentResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $avatarImageView:Landroid/widget/ImageView;

.field final synthetic $imageProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$1;->$avatarImageView:Landroid/widget/ImageView;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$1;->$imageProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$1;->$avatarImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110381

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$1;->$imageProgressBar:Landroid/widget/ProgressBar;

    const-string v1, "imageProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "AdminProfileActivity"

    invoke-static {p1, v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final onLoad(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;)V
    .locals 1

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$showAgent$1;->$imageProgressBar:Landroid/widget/ProgressBar;

    const-string v0, "imageProgressBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
