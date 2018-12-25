.class public final Lru/rocketbank/r2d2/activities/StatusActivity$onError$1;
.super Ljava/lang/Object;
.source "StatusActivity.kt"

# interfaces
.implements Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/StatusActivity;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/StatusActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/StatusActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/StatusActivity$onError$1;->this$0:Lru/rocketbank/r2d2/activities/StatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final animationEnd(Z)V
    .locals 2

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity$onError$1;->this$0:Lru/rocketbank/r2d2/activities/StatusActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/activities/StatusActivity;->access$onEndAnimation(Lru/rocketbank/r2d2/activities/StatusActivity;ZLru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    return-void
.end method
