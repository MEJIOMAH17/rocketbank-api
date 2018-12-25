.class Lru/rocketbank/r2d2/activities/AbstractActivity$2;
.super Ljava/lang/Object;
.source "AbstractActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/AbstractActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/AbstractActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/AbstractActivity;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/AbstractActivity$2;->this$0:Lru/rocketbank/r2d2/activities/AbstractActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 218
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AbstractActivity$2;->this$0:Lru/rocketbank/r2d2/activities/AbstractActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->registerEventBus()V

    return-void
.end method
