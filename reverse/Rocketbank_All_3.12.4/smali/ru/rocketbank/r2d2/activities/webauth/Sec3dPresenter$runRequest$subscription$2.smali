.class final Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runRequest$subscription$2;
.super Ljava/lang/Object;
.source "Sec3dPresenter.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->runRequest(Lrx/Observable;)V
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
        "Lrx/functions/Action1<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSec3dPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sec3dPresenter.kt\nru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runRequest$subscription$2\n*L\n1#1,100:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runRequest$subscription$2;->this$0:Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runRequest$subscription$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runRequest$subscription$2;->this$0:Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->access$getView$p(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;)Lru/rocketbank/r2d2/activities/webauth/Sec3dView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    invoke-interface {p1}, Lru/rocketbank/r2d2/activities/webauth/Sec3dView;->hideProgress()V

    .line 65
    invoke-interface {p1}, Lru/rocketbank/r2d2/activities/webauth/Sec3dView;->showError()V

    return-void

    :cond_0
    return-void
.end method
