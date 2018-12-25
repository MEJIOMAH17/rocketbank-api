.class final Lru/rocketbank/r2d2/activities/PresenterAbstractActivity$presenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PresenterAbstractActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/PresenterAbstractActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TPR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/PresenterAbstractActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/PresenterAbstractActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/PresenterAbstractActivity$presenter$2;->this$0:Lru/rocketbank/r2d2/activities/PresenterAbstractActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/PresenterAbstractActivity$presenter$2;->invoke()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPR;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/PresenterAbstractActivity$presenter$2;->this$0:Lru/rocketbank/r2d2/activities/PresenterAbstractActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/PresenterAbstractActivity;->createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    return-object v0
.end method
