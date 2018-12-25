.class final Lru/rocketbank/r2d2/service/SendLocationIntentService$onHandleIntent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SendLocationIntentService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/service/SendLocationIntentService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/location/Location;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $id:J

.field final synthetic this$0:Lru/rocketbank/r2d2/service/SendLocationIntentService;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/service/SendLocationIntentService;J)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/service/SendLocationIntentService$onHandleIntent$1;->this$0:Lru/rocketbank/r2d2/service/SendLocationIntentService;

    iput-wide p2, p0, Lru/rocketbank/r2d2/service/SendLocationIntentService$onHandleIntent$1;->$id:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/service/SendLocationIntentService$onHandleIntent$1;->invoke(Landroid/location/Location;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/location/Location;)V
    .locals 3

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/service/SendLocationIntentService$onHandleIntent$1;->this$0:Lru/rocketbank/r2d2/service/SendLocationIntentService;

    iget-wide v1, p0, Lru/rocketbank/r2d2/service/SendLocationIntentService$onHandleIntent$1;->$id:J

    invoke-static {v0, v1, v2, p1}, Lru/rocketbank/r2d2/service/SendLocationIntentService;->access$onLocation(Lru/rocketbank/r2d2/service/SendLocationIntentService;JLandroid/location/Location;)V

    return-void
.end method
