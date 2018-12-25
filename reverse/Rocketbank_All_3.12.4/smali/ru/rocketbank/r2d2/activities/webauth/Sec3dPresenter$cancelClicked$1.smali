.class final Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$cancelClicked$1;
.super Ljava/lang/Object;
.source "Sec3dPresenter.kt"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->cancelClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$cancelClicked$1;->this$0:Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 1

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$cancelClicked$1;->this$0:Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->access$getView$p(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;)Lru/rocketbank/r2d2/activities/webauth/Sec3dView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dView;->cancel()V

    return-void

    :cond_0
    return-void
.end method
