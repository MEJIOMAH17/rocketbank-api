.class final Lru/rocketbank/r2d2/activities/StatusActivity$execute$3;
.super Ljava/lang/Object;
.source "StatusActivity.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/StatusActivity;->execute()V
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


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/StatusActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/StatusActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/StatusActivity$execute$3;->this$0:Lru/rocketbank/r2d2/activities/StatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity$execute$3;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/StatusActivity$execute$3;->this$0:Lru/rocketbank/r2d2/activities/StatusActivity;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
