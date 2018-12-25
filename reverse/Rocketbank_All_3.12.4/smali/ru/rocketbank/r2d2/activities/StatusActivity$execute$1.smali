.class final Lru/rocketbank/r2d2/activities/StatusActivity$execute$1;
.super Ljava/lang/Object;
.source "StatusActivity.kt"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/StatusActivity;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/StatusActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/StatusActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/StatusActivity$execute$1;->this$0:Lru/rocketbank/r2d2/activities/StatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 1

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity$execute$1;->this$0:Lru/rocketbank/r2d2/activities/StatusActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/StatusActivity;->access$onSubscribe(Lru/rocketbank/r2d2/activities/StatusActivity;)V

    return-void
.end method
