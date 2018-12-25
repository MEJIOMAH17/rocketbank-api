.class final Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$2;
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
        "Ljava/lang/Throwable;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$2;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$2;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$2;->INSTANCE:Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/lead/EnterPhoneActivity$requestSMS$2;->call(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method
