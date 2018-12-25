.class public Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse;
.super Lru/rocketbank/core/model/dto/GenericRequestResponseData;
.source "SmsVerificationPhoneResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse$Phone;
    }
.end annotation


# instance fields
.field private phone:Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse$Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhone()Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse$Phone;
    .locals 1

    .line 27
    iget-object v0, p0, Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse;->phone:Lru/rocketbank/core/network/model/SmsVerificationPhoneResponse$Phone;

    return-object v0
.end method
