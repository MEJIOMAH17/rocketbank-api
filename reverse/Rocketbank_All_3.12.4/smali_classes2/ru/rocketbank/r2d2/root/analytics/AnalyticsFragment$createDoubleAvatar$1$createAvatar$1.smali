.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1$createAvatar$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnalyticsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1$createAvatar$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "avatar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lru/rocketbank/r2d2/Utils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1$createAvatar$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1$createAvatar$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->access$getPlaceholder(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->access$loadBitmap(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1$createAvatar$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->access$loadBitmap(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1$createAvatar$1;->invoke(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
