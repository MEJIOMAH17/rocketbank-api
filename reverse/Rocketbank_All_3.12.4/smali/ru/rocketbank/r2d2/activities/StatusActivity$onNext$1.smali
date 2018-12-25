.class public final Lru/rocketbank/r2d2/activities/StatusActivity$onNext$1;
.super Ljava/lang/Object;
.source "StatusActivity.kt"

# interfaces
.implements Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/StatusActivity;->onNext(Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $genericRequestResponseData:Lru/rocketbank/core/model/dto/GenericRequestResponseData;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/StatusActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/StatusActivity;Lru/rocketbank/core/model/dto/GenericRequestResponseData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/dto/GenericRequestResponseData;",
            ")V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/StatusActivity$onNext$1;->this$0:Lru/rocketbank/r2d2/activities/StatusActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/StatusActivity$onNext$1;->$genericRequestResponseData:Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final animationEnd(Z)V
    .locals 2

    .line 76
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity$onNext$1;->this$0:Lru/rocketbank/r2d2/activities/StatusActivity;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/StatusActivity$onNext$1;->$genericRequestResponseData:Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    invoke-static {v0, p1, v1}, Lru/rocketbank/r2d2/activities/StatusActivity;->access$onEndAnimation(Lru/rocketbank/r2d2/activities/StatusActivity;ZLru/rocketbank/core/model/dto/GenericRequestResponseData;)V

    return-void
.end method
