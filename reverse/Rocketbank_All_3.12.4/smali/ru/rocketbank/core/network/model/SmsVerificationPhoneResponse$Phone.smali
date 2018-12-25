.class public Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse$Phone;
.super Ljava/lang/Object;
.source "SmsVerificationPhoneResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Phone"
.end annotation


# instance fields
.field private formatted:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private operator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormatted()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse$Phone;->formatted:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse$Phone;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse$Phone;->operator:Ljava/lang/String;

    return-object v0
.end method
