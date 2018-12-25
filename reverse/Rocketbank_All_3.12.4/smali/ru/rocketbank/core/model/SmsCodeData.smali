.class public Lru/rocketbank/core/model/SmsCodeData;
.super Ljava/lang/Object;
.source "SmsCodeData.java"


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lru/rocketbank/core/model/SmsCodeData;->code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/model/SmsCodeData;->code:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/model/SmsCodeData;->code:Ljava/lang/String;

    return-void
.end method
