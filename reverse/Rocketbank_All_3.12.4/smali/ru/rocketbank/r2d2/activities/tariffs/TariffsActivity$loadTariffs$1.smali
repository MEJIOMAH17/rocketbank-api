.class final Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$1;
.super Ljava/lang/Object;
.source "TariffsActivity.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->loadTariffs(Lru/rocketbank/core/model/UserModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$1;->this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$1;->this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->hideProgressDialog()V

    :cond_0
    return-object p1
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$1;->call(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
