.class final Lru/rocketbank/r2d2/activities/FirstRefillActivity$onResume$1;
.super Ljava/lang/Object;
.source "FirstRefillActivity.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/FirstRefillActivity;->onResume()V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/FirstRefillActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/FirstRefillActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity$onResume$1;->this$0:Lru/rocketbank/r2d2/activities/FirstRefillActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Long;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity$onResume$1;->this$0:Lru/rocketbank/r2d2/activities/FirstRefillActivity;

    iget-object p1, p1, Lru/rocketbank/r2d2/activities/FirstRefillActivity;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->refreshBackgroundProfile()V

    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/FirstRefillActivity$onResume$1;->call(Ljava/lang/Long;)V

    return-void
.end method
