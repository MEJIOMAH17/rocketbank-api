.class final Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$2;
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
        "TT;",
        "Lrx/Observable<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $currency:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$2;->this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$2;->$currency:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$2;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/network/model/tariffs/TariffsResp;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$2;->this$0:Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity;->getTariffsApi()Lru/rocketbank/core/network/api/TariffsApi;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/tariffs/TariffsActivity$loadTariffs$2;->$currency:Ljava/lang/String;

    invoke-interface {p1, v0}, Lru/rocketbank/core/network/api/TariffsApi;->getTariffsList(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
