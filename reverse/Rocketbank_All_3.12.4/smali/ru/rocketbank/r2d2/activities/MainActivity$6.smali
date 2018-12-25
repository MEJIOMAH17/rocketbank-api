.class Lru/rocketbank/r2d2/activities/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/MainActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/MainActivity;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$6;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 276
    sget-object v0, Lru/rocketbank/r2d2/utils/GaToken;->INSTANCE:Lru/rocketbank/r2d2/utils/GaToken;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/MainActivity$6;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/MainActivity$6;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    iget-object v2, v2, Lru/rocketbank/r2d2/activities/MainActivity;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/utils/GaToken;->sendGaToken(Landroid/content/Context;Lru/rocketbank/core/network/api/RocketAPI;)V

    return-void
.end method
