.class final Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$1;
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
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$1;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$1;->call(Lkotlin/Unit;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lkotlin/Unit;)Ljava/lang/String;
    .locals 1

    .line 112
    iget-object p1, p0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$1;->this$0:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    const-string v0, "AdvertisingIdClient.getA\u2026(this.applicationContext)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
