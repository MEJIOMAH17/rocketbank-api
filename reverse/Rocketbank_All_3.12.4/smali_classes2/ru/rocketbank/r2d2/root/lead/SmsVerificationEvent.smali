.class public final Lru/rocketbank/r2d2/root/lead/SmsVerificationEvent;
.super Ljava/lang/Object;
.source "SmsVerificationEvent.kt"


# instance fields
.field private final code:Ljava/lang/String;

.field private final verificationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/lead/SmsVerificationEvent;->code:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/lead/SmsVerificationEvent;->verificationId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsVerificationEvent;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerificationId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/root/lead/SmsVerificationEvent;->verificationId:Ljava/lang/String;

    return-object v0
.end method
