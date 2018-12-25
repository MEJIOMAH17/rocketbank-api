.class final Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$3;
.super Ljava/lang/Object;
.source "EnterPhoneActivity.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->requestSMS()V
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
.field final synthetic $phoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$3;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$3;->$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$3;->call(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/register/DeviceRegisterData;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$3;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->access$getRocketAPI$p(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;)Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$3;->$phoneNumber:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lru/rocketbank/core/network/api/RocketAPI;->register(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
