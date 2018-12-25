.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$updateAnalytics$1;
.super Lrx/Subscriber;
.source "AnalyticsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->updateAnalytics(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "[",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$updateAnalytics$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$updateAnalytics$1;->onNext([Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onNext([Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "bitmaps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment$Companion;->setAvatars([Landroid/graphics/Bitmap;)V

    .line 140
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$updateAnalytics$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lru/rocketbank/r2d2/R$id;->buttonChangeAnalyticsToolbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/root/analytics/SwitchAvatarButton;->setAvatars(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 141
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$updateAnalytics$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v0, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->invalidate()V

    return-void

    :cond_1
    return-void
.end method
