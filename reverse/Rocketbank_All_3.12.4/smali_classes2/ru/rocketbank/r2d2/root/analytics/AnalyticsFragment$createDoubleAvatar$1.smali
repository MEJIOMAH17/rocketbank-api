.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;
.super Ljava/lang/Object;
.source "AnalyticsFragment.kt"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->createDoubleAvatar(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $jointUserAvatar:Ljava/lang/String;

.field final synthetic $userAvatar:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;->$userAvatar:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;->$jointUserAvatar:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-[",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 109
    :try_start_0
    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1$createAvatar$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1$createAvatar$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 110
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;->$userAvatar:Ljava/lang/String;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 111
    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$createDoubleAvatar$1;->$jointUserAvatar:Ljava/lang/String;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    .line 112
    new-array v2, v2, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-virtual {p1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 115
    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
